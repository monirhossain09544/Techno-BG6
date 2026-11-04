.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite;
.super Lcom/android/framework/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final blacklist MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final blacklist MUTABLE_FLAG_MASK:I = -0x80000000

.field static final blacklist UNINITIALIZED_HASH_CODE:I = 0x0

.field static final blacklist UNINITIALIZED_SERIALIZED_SIZE:I = 0x7fffffff

.field private static blacklist defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist memoizedSerializedSize:I

.field protected blacklist unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 363
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 61
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 1

    .line 37
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1491
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1495
    check-cast p0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p0

    .line 1492
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1691
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 1692
    :cond_9
    nop

    .line 1693
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1694
    invoke-virtual {v0}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1695
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1697
    :cond_17
    :goto_17
    return-object p0
.end method

.method private blacklist computeSerializedSize(Lcom/android/framework/protobuf/Schema;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)I"
        }
    .end annotation

    .line 350
    if-nez p1, :cond_f

    .line 351
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 353
    :cond_f
    nop

    .line 354
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    .line 353
    return p1
.end method

.method protected static blacklist emptyBooleanList()Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 1

    .line 1564
    invoke-static {}, Lcom/android/framework/protobuf/BooleanArrayList;->emptyList()Lcom/android/framework/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyDoubleList()Lcom/android/framework/protobuf/Internal$DoubleList;
    .registers 1

    .line 1554
    invoke-static {}, Lcom/android/framework/protobuf/DoubleArrayList;->emptyList()Lcom/android/framework/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyFloatList()Lcom/android/framework/protobuf/Internal$FloatList;
    .registers 1

    .line 1544
    invoke-static {}, Lcom/android/framework/protobuf/FloatArrayList;->emptyList()Lcom/android/framework/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyIntList()Lcom/android/framework/protobuf/Internal$IntList;
    .registers 1

    .line 1524
    invoke-static {}, Lcom/android/framework/protobuf/IntArrayList;->emptyList()Lcom/android/framework/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyLongList()Lcom/android/framework/protobuf/Internal$LongList;
    .registers 1

    .line 1534
    invoke-static {}, Lcom/android/framework/protobuf/LongArrayList;->emptyList()Lcom/android/framework/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1574
    invoke-static {}, Lcom/android/framework/protobuf/ProtobufArrayList;->emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private blacklist ensureUnknownFieldsInitialized()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 170
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 172
    :cond_e
    return-void
.end method

.method static blacklist getDefaultInstance(Ljava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 369
    if-nez v0, :cond_29

    .line 373
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_20

    .line 376
    nop

    .line 377
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    goto :goto_29

    .line 374
    :catch_20
    move-exception p0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 379
    :cond_29
    :goto_29
    if-nez v0, :cond_43

    .line 382
    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_3d

    .line 387
    sget-object v1, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 385
    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 389
    :cond_43
    :goto_43
    return-object v0
.end method

.method static varargs blacklist getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6

    .line 1243
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 1244
    :catch_5
    move-exception p2

    .line 1245
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated message class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\" missing method \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs blacklist invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1254
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 1258
    :catch_5
    move-exception p0

    .line 1259
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1260
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 1262
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 1263
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1265
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1261
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 1255
    :catch_20
    move-exception p0

    .line 1256
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final blacklist isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1505
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1506
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1507
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1508
    return v1

    .line 1510
    :cond_10
    if-nez v0, :cond_14

    .line 1511
    const/4 p0, 0x0

    return p0

    .line 1513
    :cond_14
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v0

    .line 1514
    if-eqz p1, :cond_2c

    .line 1516
    sget-object p1, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1518
    if-eqz v0, :cond_28

    move-object v1, p0

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 1517
    :goto_29
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_2c
    return v0
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$BooleanList;)Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 2

    .line 1568
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1569
    nop

    .line 1570
    if-nez v0, :cond_a

    const/16 v0, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v0, v0, 0x2

    .line 1569
    :goto_c
    invoke-interface {p0, v0}, Lcom/android/framework/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$DoubleList;)Lcom/android/framework/protobuf/Internal$DoubleList;
    .registers 2

    .line 1558
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1559
    nop

    .line 1560
    if-nez v0, :cond_a

    const/16 v0, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v0, v0, 0x2

    .line 1559
    :goto_c
    invoke-interface {p0, v0}, Lcom/android/framework/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$DoubleList;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$FloatList;)Lcom/android/framework/protobuf/Internal$FloatList;
    .registers 2

    .line 1548
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1549
    nop

    .line 1550
    if-nez v0, :cond_a

    const/16 v0, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v0, v0, 0x2

    .line 1549
    :goto_c
    invoke-interface {p0, v0}, Lcom/android/framework/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$FloatList;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$IntList;)Lcom/android/framework/protobuf/Internal$IntList;
    .registers 2

    .line 1528
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1529
    nop

    .line 1530
    if-nez v0, :cond_a

    const/16 v0, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v0, v0, 0x2

    .line 1529
    :goto_c
    invoke-interface {p0, v0}, Lcom/android/framework/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$LongList;)Lcom/android/framework/protobuf/Internal$LongList;
    .registers 2

    .line 1538
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1539
    nop

    .line 1540
    if-nez v0, :cond_a

    const/16 v0, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v0, v0, 0x2

    .line 1539
    :goto_c
    invoke-interface {p0, v0}, Lcom/android/framework/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1578
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1579
    nop

    .line 1580
    if-nez v0, :cond_a

    const/16 v0, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v0, v0, 0x2

    .line 1579
    :goto_c
    invoke-interface {p0, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 405
    new-instance v0, Lcom/android/framework/protobuf/RawMessageInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/RawMessageInfo;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist newRepeatedGeneratedExtension(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1165
    move-object v1, p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 1166
    move v2, p3

    move-object p3, p1

    move-object p1, p0

    new-instance p0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZZ)V

    move-object p5, p6

    move-object p4, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object p0
.end method

.method public static blacklist newSingularGeneratedExtension(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1145
    move-object v1, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    new-instance p0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/framework/protobuf/Internal$EnumLiteMap;ILcom/android/framework/protobuf/WireFormat$FieldType;ZZ)V

    move-object p5, p6

    move-object p4, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object p0
.end method

.method protected static blacklist parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1792
    nop

    .line 1794
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1793
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1792
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1801
    nop

    .line 1802
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1801
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1717
    nop

    .line 1718
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1717
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1725
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1779
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1786
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1761
    nop

    .line 1764
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p1

    .line 1765
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1762
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1761
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1772
    nop

    .line 1773
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1772
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1711
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1704
    nop

    .line 1705
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1704
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1746
    array-length v0, p1

    .line 1747
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1746
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1754
    array-length v0, p1

    .line 1755
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1754
    invoke-static {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parsePartialDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1810
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1811
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1812
    const/4 p0, 0x0

    return-object p0

    .line 1814
    :cond_9
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0
    :try_end_d
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_27

    .line 1822
    nop

    .line 1823
    new-instance v1, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1824
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p1

    .line 1825
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1827
    const/4 p2, 0x0

    :try_start_1c
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1f
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 1830
    nop

    .line 1831
    return-object p0

    .line 1828
    :catch_21
    move-exception p1

    .line 1829
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1820
    :catch_27
    move-exception p0

    .line 1821
    new-instance p1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 1815
    :catch_2e
    move-exception p0

    .line 1816
    invoke-virtual {p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1817
    new-instance p1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p0, p1

    .line 1819
    :cond_3b
    throw p0
.end method

.method private static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1733
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p1

    .line 1734
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1736
    const/4 p2, 0x0

    :try_start_9
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_9 .. :try_end_c} :catch_e

    .line 1739
    nop

    .line 1740
    return-object p0

    .line 1737
    :catch_e
    move-exception p1

    .line 1738
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method protected static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1680
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1621
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1625
    :try_start_4
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 1626
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 1627
    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_16} :catch_4d
    .catch Lcom/android/framework/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_16} :catch_43
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_16} :catch_18

    .line 1645
    nop

    .line 1646
    return-object p0

    .line 1640
    :catch_18
    move-exception p0

    .line 1641
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_28

    .line 1642
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1644
    :cond_28
    throw p0

    .line 1635
    :catch_29
    move-exception p1

    .line 1636
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_39

    .line 1637
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1639
    :cond_39
    new-instance p2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1633
    :catch_43
    move-exception p1

    .line 1634
    invoke-virtual {p1}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1628
    :catch_4d
    move-exception p1

    .line 1629
    invoke-virtual {p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 1630
    new-instance p2, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 1632
    :cond_5a
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist parsePartialFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1654
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 1656
    :try_start_4
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 1657
    add-int v4, p2, p3

    new-instance v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;

    invoke-direct {v5, p4}, Lcom/android/framework/protobuf/ArrayDecoders$Registers;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V

    .line 1659
    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_1b
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_1b} :catch_4d
    .catch Lcom/android/framework/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_1b} :catch_42
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_1b} :catch_1d

    .line 1674
    nop

    .line 1675
    return-object v1

    .line 1672
    :catch_1d
    move-exception v0

    .line 1673
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1667
    :catch_27
    move-exception v0

    move-object p0, v0

    .line 1668
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_38

    .line 1669
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1671
    :cond_38
    new-instance p1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1665
    :catch_42
    move-exception v0

    move-object p0, v0

    .line 1666
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1660
    :catch_4d
    move-exception v0

    move-object p0, v0

    .line 1661
    invoke-virtual {p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 1662
    new-instance p1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p0, p1

    .line 1664
    :cond_5b
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method protected static blacklist registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 400
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method


# virtual methods
.method blacklist buildMessageInfo()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist clearMemoizedHashCode()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 81
    return-void
.end method

.method blacklist clearMemoizedSerializedSize()V
    .registers 2

    .line 294
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 295
    return-void
.end method

.method blacklist computeHashCode()I
    .registers 2

    .line 141
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final blacklist createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method protected final blacklist createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .registers 3

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 148
    if-ne p0, p1, :cond_4

    .line 149
    const/4 p1, 0x1

    return p1

    .line 152
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 153
    return v0

    .line 156
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 157
    return v0

    .line 160
    :cond_13
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-interface {v0, p0, p1}, Lcom/android/framework/protobuf/Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic blacklist getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method blacklist getMemoizedHashCode()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method blacklist getMemoizedSerializedSize()I
    .registers 3

    .line 299
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final blacklist getParserForType()Lcom/android/framework/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Parser;

    return-object v0
.end method

.method public blacklist getSerializedSize()I
    .registers 2

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method blacklist getSerializedSize(Lcom/android/framework/protobuf/Schema;)I
    .registers 5

    .line 321
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 323
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result p1

    .line 324
    if-ltz p1, :cond_d

    .line 327
    return p1

    .line 325
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_27
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_35

    .line 332
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result p1

    return p1

    .line 336
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 338
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 129
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    return v0

    .line 133
    :cond_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->hashCodeIsNotMemoized()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 134
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->setMemoizedHashCode(I)V

    .line 137
    :cond_18
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    return v0
.end method

.method blacklist hashCodeIsNotMemoized()Z
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final blacklist isInitialized()Z
    .registers 2

    .line 223
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isInitialized(Lcom/android/framework/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method blacklist isMutable()Z
    .registers 3

    .line 64
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method protected blacklist makeImmutable()V
    .registers 2

    .line 203
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 205
    return-void
.end method

.method blacklist markImmutable()V
    .registers 3

    .line 68
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 69
    return-void
.end method

.method protected blacklist mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4

    .line 197
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 198
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 199
    return-void
.end method

.method protected final blacklist mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 415
    return-void
.end method

.method protected blacklist mergeVarintField(II)V
    .registers 4

    .line 191
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 192
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 193
    return-void
.end method

.method public final blacklist newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic blacklist newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method blacklist newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method protected blacklist parseUnknownField(ILcom/android/framework/protobuf/CodedInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 182
    const/4 p1, 0x0

    return p1

    .line 185
    :cond_9
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 186
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method blacklist setMemoizedHashCode(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 77
    return-void
.end method

.method blacklist setMemoizedSerializedSize(I)V
    .registers 5

    .line 304
    if-ltz p1, :cond_f

    .line 307
    iget v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 309
    return-void

    .line 305
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    .line 230
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->toBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/MessageLiteToString;->toString(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 315
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/android/framework/protobuf/CodedOutputStream;)Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 316
    return-void
.end method
