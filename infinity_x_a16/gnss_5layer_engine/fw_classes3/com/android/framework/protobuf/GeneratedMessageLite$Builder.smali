.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.super Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected blacklist instance:Lcom/android/framework/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 426
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 428
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p1

    if-nez p1, :cond_12

    .line 433
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 434
    return-void

    .line 429
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 513
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method private blacklist newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final blacklist build()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 494
    return-object v0

    .line 492
    :cond_b
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newUninitializedMessageException(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic blacklist build()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 481
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0

    .line 484
    :cond_b
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 485
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clear()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 467
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 468
    return-object p0

    .line 465
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist clear()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 475
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

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

    .line 417
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final blacklist copyOnWrite()V
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 446
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWriteInternal()V

    .line 448
    :cond_b
    return-void
.end method

.method protected blacklist copyOnWriteInternal()V
    .registers 3

    .line 451
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 454
    return-void
.end method

.method public blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist internalMergeFrom(Lcom/android/framework/protobuf/AbstractMessageLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 417
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist internalMergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist isInitialized()Z
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
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

    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 556
    :try_start_3
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 557
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;

    move-result-object p1

    .line 556
    invoke-interface {v0, v1, p1, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_16} :catch_18

    .line 563
    nop

    .line 564
    return-object p0

    .line 558
    :catch_18
    move-exception p1

    .line 559
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_28

    .line 560
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 562
    :cond_28
    throw p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 505
    return-object p0

    .line 507
    :cond_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 508
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    return-object p0
.end method

.method public blacklist mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 544
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 527
    :try_start_3
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    add-int v6, p2, p3

    new-instance v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    invoke-direct {v7, p4}, Lcom/android/framework/protobuf/ArrayDecoders$Registers;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    :try_end_1b
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_1b} :catch_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_1b} :catch_27
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_1d

    .line 536
    nop

    .line 537
    return-object p0

    .line 534
    :catch_1d
    move-exception v0

    move-object p1, v0

    .line 535
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 532
    :catch_27
    move-exception v0

    .line 533
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 530
    :catch_2d
    move-exception v0

    move-object p1, v0

    .line 531
    throw p1
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
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

    .line 417
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BII)Lcom/android/framework/protobuf/MessageLite$Builder;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 417
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
