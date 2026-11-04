.class final Lcom/android/framework/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Lcom/android/framework/protobuf/Schema;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist CHECK_INITIALIZED_BIT:I = 0x400

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field private static final blacklist ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final blacklist FIELD_TYPE_MASK:I = 0xff00000

.field private static final blacklist HAS_HAS_BIT:I = 0x1000

.field private static final blacklist INTS_PER_FIELD:I = 0x3

.field private static final blacklist LEGACY_ENUM_IS_CLOSED_BIT:I = 0x800

.field private static final blacklist LEGACY_ENUM_IS_CLOSED_MASK:I = -0x80000000

.field private static final blacklist NO_PRESENCE_SENTINEL:I = 0xfffff

.field private static final blacklist OFFSET_BITS:I = 0x14

.field private static final blacklist OFFSET_MASK:I = 0xfffff

.field static final blacklist ONEOF_TYPE_OFFSET:I = 0x33

.field private static final blacklist REQUIRED_BIT:I = 0x100

.field private static final blacklist REQUIRED_MASK:I = 0x10000000

.field private static final blacklist UNSAFE:Lsun/misc/Unsafe;

.field private static final blacklist UTF8_CHECK_BIT:I = 0x200


# instance fields
.field private final blacklist buffer:[I

.field private final blacklist checkInitializedCount:I

.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final blacklist extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist hasExtensions:Z

.field private final blacklist intArray:[I

.field private final blacklist listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

.field private final blacklist lite:Z

.field private final blacklist mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

.field private final blacklist maxFieldNumber:I

.field private final blacklist minFieldNumber:I

.field private final blacklist newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

.field private final blacklist objects:[Ljava/lang/Object;

.field private final blacklist repeatedFieldOffsetStart:I

.field private final blacklist syntax:Lcom/android/framework/protobuf/ProtoSyntax;

.field private final blacklist unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private final blacklist useCachedSizeField:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 93
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor blacklist <init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ProtoSyntax;Z[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/ProtoSyntax;",
            "Z[III",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    .line 197
    iput-object p2, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 198
    iput p3, p0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    .line 199
    iput p4, p0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    .line 201
    instance-of p1, p5, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/android/framework/protobuf/MessageSchema;->lite:Z

    .line 202
    iput-object p6, p0, Lcom/android/framework/protobuf/MessageSchema;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    .line 203
    if-eqz p14, :cond_1b

    invoke-virtual {p14, p5}, Lcom/android/framework/protobuf/ExtensionSchema;->hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    .line 204
    iput-boolean p7, p0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 206
    iput-object p8, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    .line 207
    iput p9, p0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    .line 208
    iput p10, p0, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 210
    iput-object p11, p0, Lcom/android/framework/protobuf/MessageSchema;->newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

    .line 211
    iput-object p12, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 212
    iput-object p13, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 213
    iput-object p14, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    .line 214
    iput-object p5, p0, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 215
    move-object p1, p15

    iput-object p1, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 216
    return-void
.end method

.method private blacklist arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 4747
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private static blacklist booleanAt(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 4722
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static blacklist checkMutable(Ljava/lang/Object;)V
    .registers 4

    .line 4700
    invoke-static {p0}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4703
    return-void

    .line 4701
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutating immutable message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist decodeMapEntry([BIILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3510
    move-object/from16 v6, p6

    invoke-static {p1, p2, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 3511
    iget v0, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 3512
    if-ltz v0, :cond_6e

    sub-int v1, p3, p2

    if-gt v0, v1, :cond_6e

    .line 3515
    add-int v7, p2, v0

    .line 3516
    iget-object v0, p4, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 3517
    iget-object v1, p4, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v8, v0

    move-object v9, v1

    .line 3518
    :goto_16
    if-ge p2, v7, :cond_63

    .line 3519
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 3520
    if-gez p2, :cond_26

    .line 3521
    invoke-static {p2, p1, v0, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 3522
    iget p2, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v2, v0

    goto :goto_27

    .line 3520
    :cond_26
    move v2, v0

    .line 3524
    :goto_27
    ushr-int/lit8 v0, p2, 0x3

    .line 3525
    and-int/lit8 v1, p2, 0x7

    .line 3526
    packed-switch v0, :pswitch_data_74

    goto :goto_5e

    .line 3536
    :pswitch_2f
    iget-object v0, p4, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v1, v0, :cond_5e

    .line 3537
    iget-object v4, p4, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object p2, p4, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 3543
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 3538
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 3545
    iget-object v9, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3546
    goto :goto_16

    .line 3528
    :pswitch_49
    iget-object v0, p4, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v1, v0, :cond_5e

    .line 3529
    iget-object v4, p4, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 3530
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 3531
    iget-object v8, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3532
    goto :goto_16

    .line 3552
    :cond_5e
    :goto_5e
    invoke-static {p2, p1, v2, p3, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 3553
    goto :goto_16

    .line 3554
    :cond_63
    if-ne p2, v7, :cond_69

    .line 3557
    invoke-interface {p5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3558
    return v7

    .line 3555
    :cond_69
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3513
    :cond_6e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_49
        :pswitch_2f
    .end packed-switch
.end method

.method private blacklist decodeMapEntryValue([BIILcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3442
    sget-object v0, Lcom/android/framework/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_b6

    .line 3496
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3493
    :pswitch_14
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3494
    goto/16 :goto_b4

    .line 3489
    :pswitch_1a
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3490
    iget-wide p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p2, p3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3491
    goto/16 :goto_b4

    .line 3485
    :pswitch_2c
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3486
    iget p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3487
    goto/16 :goto_b4

    .line 3482
    :pswitch_3e
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p4

    .line 3481
    invoke-static {p4, p1, p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3483
    goto :goto_b4

    .line 3476
    :pswitch_4b
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3477
    iget-wide p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3478
    goto :goto_b4

    .line 3471
    :pswitch_58
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3472
    iget p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3473
    goto :goto_b4

    .line 3465
    :pswitch_65
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3466
    add-int/lit8 p1, p2, 0x4

    .line 3467
    goto :goto_b4

    .line 3461
    :pswitch_72
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3462
    add-int/lit8 p1, p2, 0x8

    .line 3463
    goto :goto_b4

    .line 3456
    :pswitch_7f
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3457
    add-int/lit8 p1, p2, 0x4

    .line 3458
    goto :goto_b4

    .line 3451
    :pswitch_8c
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3452
    add-int/lit8 p1, p2, 0x8

    .line 3453
    goto :goto_b4

    .line 3448
    :pswitch_99
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3449
    goto :goto_b4

    .line 3444
    :pswitch_9e
    invoke-static {p1, p2, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 3445
    iget-wide p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_ac

    const/4 p2, 0x1

    goto :goto_ad

    :cond_ac
    const/4 p2, 0x0

    :goto_ad
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 3446
    nop

    .line 3498
    :goto_b4
    return p1

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_99
        :pswitch_8c
        :pswitch_7f
        :pswitch_7f
        :pswitch_72
        :pswitch_72
        :pswitch_65
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_4b
        :pswitch_4b
        :pswitch_3e
        :pswitch_2c
        :pswitch_1a
        :pswitch_14
    .end packed-switch
.end method

.method private static blacklist doubleAt(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 4706
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 824
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 825
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 827
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_1da

    .line 949
    return v4

    .line 944
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_28

    .line 946
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 945
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    move v3, v4

    goto :goto_29

    :cond_28
    nop

    .line 944
    :goto_29
    return v3

    .line 924
    :pswitch_2a
    nop

    .line 925
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 924
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 921
    :pswitch_38
    nop

    .line 922
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 921
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 885
    :pswitch_46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 887
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 886
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    move v3, v4

    goto :goto_5d

    :cond_5c
    nop

    .line 885
    :goto_5d
    return v3

    .line 882
    :pswitch_5e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_72

    .line 883
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_72

    move v3, v4

    goto :goto_73

    :cond_72
    nop

    .line 882
    :goto_73
    return v3

    .line 879
    :pswitch_74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_86

    .line 880
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_86

    move v3, v4

    goto :goto_87

    :cond_86
    nop

    .line 879
    :goto_87
    return v3

    .line 876
    :pswitch_88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_9c

    .line 877
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_9c

    move v3, v4

    goto :goto_9d

    :cond_9c
    nop

    .line 876
    :goto_9d
    return v3

    .line 873
    :pswitch_9e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b0

    .line 874
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_b0

    move v3, v4

    goto :goto_b1

    :cond_b0
    nop

    .line 873
    :goto_b1
    return v3

    .line 870
    :pswitch_b2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c4

    .line 871
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c4

    move v3, v4

    goto :goto_c5

    :cond_c4
    nop

    .line 870
    :goto_c5
    return v3

    .line 867
    :pswitch_c6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_d8

    .line 868
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_d8

    move v3, v4

    goto :goto_d9

    :cond_d8
    nop

    .line 867
    :goto_d9
    return v3

    .line 863
    :pswitch_da
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f0

    .line 865
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 864
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f0

    move v3, v4

    goto :goto_f1

    :cond_f0
    nop

    .line 863
    :goto_f1
    return v3

    .line 859
    :pswitch_f2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_108

    .line 861
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 860
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_108

    move v3, v4

    goto :goto_109

    :cond_108
    nop

    .line 859
    :goto_109
    return v3

    .line 855
    :pswitch_10a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_120

    .line 857
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 856
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_120

    move v3, v4

    goto :goto_121

    :cond_120
    nop

    .line 855
    :goto_121
    return v3

    .line 852
    :pswitch_122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_134

    .line 853
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_134

    move v3, v4

    goto :goto_135

    :cond_134
    nop

    .line 852
    :goto_135
    return v3

    .line 849
    :pswitch_136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_148

    .line 850
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_148

    move v3, v4

    goto :goto_149

    :cond_148
    nop

    .line 849
    :goto_149
    return v3

    .line 846
    :pswitch_14a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_15e

    .line 847
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_15e

    move v3, v4

    goto :goto_15f

    :cond_15e
    nop

    .line 846
    :goto_15f
    return v3

    .line 843
    :pswitch_160
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_172

    .line 844
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_172

    move v3, v4

    goto :goto_173

    :cond_172
    nop

    .line 843
    :goto_173
    return v3

    .line 840
    :pswitch_174
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_188

    .line 841
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_188

    move v3, v4

    goto :goto_189

    :cond_188
    nop

    .line 840
    :goto_189
    return v3

    .line 837
    :pswitch_18a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_19e

    .line 838
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_19e

    move v3, v4

    goto :goto_19f

    :cond_19e
    nop

    .line 837
    :goto_19f
    return v3

    .line 833
    :pswitch_1a0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1ba

    .line 834
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 835
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_1ba

    move v3, v4

    goto :goto_1bb

    :cond_1ba
    nop

    .line 833
    :goto_1bb
    return v3

    .line 829
    :pswitch_1bc
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1d8

    .line 830
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 831
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_1d8

    move v3, v4

    goto :goto_1d9

    :cond_1d8
    nop

    .line 829
    :goto_1d9
    return v3

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_1bc
        :pswitch_1a0
        :pswitch_18a
        :pswitch_174
        :pswitch_160
        :pswitch_14a
        :pswitch_136
        :pswitch_122
        :pswitch_10a
        :pswitch_f2
        :pswitch_da
        :pswitch_c6
        :pswitch_b2
        :pswitch_9e
        :pswitch_88
        :pswitch_74
        :pswitch_5e
        :pswitch_46
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_2a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private blacklist filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 4423
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v2

    .line 4424
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 4425
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 4426
    if-nez p1, :cond_13

    .line 4427
    return-object p3

    .line 4429
    :cond_13
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v4

    .line 4430
    if-nez v4, :cond_1a

    .line 4431
    return-object p3

    .line 4433
    :cond_1a
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 4435
    nop

    .line 4436
    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4444
    return-object p1
.end method

.method private blacklist filterUnknownEnumMap(IILjava/util/Map;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    .line 4456
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 4457
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    .line 4458
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 4459
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_67

    .line 4461
    if-nez p5, :cond_34

    .line 4462
    invoke-virtual {p6, p7}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 4464
    :cond_34
    nop

    .line 4465
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 4466
    invoke-static {v1}, Lcom/android/framework/protobuf/ByteString;->newCodedBuilder(I)Lcom/android/framework/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 4467
    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v2

    .line 4469
    :try_start_49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_60

    .line 4473
    nop

    .line 4474
    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->build()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    .line 4475
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_67

    .line 4470
    :catch_60
    move-exception p1

    .line 4472
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4477
    :cond_67
    :goto_67
    goto :goto_12

    .line 4478
    :cond_68
    return-object p5
.end method

.method private static blacklist floatAt(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 4710
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private blacklist getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .registers 3

    .line 3925
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object p1
.end method

.method private blacklist getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .registers 3

    .line 3921
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method private blacklist getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;
    .registers 5

    .line 3910
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 3911
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    .line 3912
    if-eqz v0, :cond_d

    .line 3913
    return-object v0

    .line 3915
    :cond_d
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 3916
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 3917
    return-object v0
.end method

.method static blacklist getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 3

    .line 3425
    check-cast p0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 3426
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 3427
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 3428
    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 3430
    :cond_10
    return-object v0
.end method

.method private blacklist getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2061
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2062
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static blacklist intAt(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 4714
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static blacklist isEnforceUtf8(I)Z
    .registers 2

    .line 4672
    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private blacklist isFieldPresent(Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 4760
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    .line 4761
    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    .line 4762
    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_e8

    .line 4763
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p2

    .line 4764
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 4765
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_f6

    .line 4810
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4808
    :pswitch_29
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    move v4, v5

    :cond_30
    return v4

    .line 4806
    :pswitch_31
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3a

    move v4, v5

    :cond_3a
    return v4

    .line 4804
    :pswitch_3b
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    move v4, v5

    :cond_42
    return v4

    .line 4802
    :pswitch_43
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4c

    move v4, v5

    :cond_4c
    return v4

    .line 4800
    :pswitch_4d
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    move v4, v5

    :cond_54
    return v4

    .line 4798
    :pswitch_55
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    move v4, v5

    :cond_5c
    return v4

    .line 4796
    :pswitch_5d
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    move v4, v5

    :cond_64
    return v4

    .line 4794
    :pswitch_65
    sget-object p2, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 4792
    :pswitch_71
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_78

    move v4, v5

    :cond_78
    return v4

    .line 4783
    :pswitch_79
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 4784
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_89

    .line 4785
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 4786
    :cond_89
    instance-of p2, p1, Lcom/android/framework/protobuf/ByteString;

    if-eqz p2, :cond_95

    .line 4787
    sget-object p2, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 4789
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4781
    :pswitch_9b
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 4779
    :pswitch_a0
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a7

    move v4, v5

    :cond_a7
    return v4

    .line 4777
    :pswitch_a8
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b1

    move v4, v5

    :cond_b1
    return v4

    .line 4775
    :pswitch_b2
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_b9

    move v4, v5

    :cond_b9
    return v4

    .line 4773
    :pswitch_ba
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c3

    move v4, v5

    :cond_c3
    return v4

    .line 4771
    :pswitch_c4
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_cd

    move v4, v5

    :cond_cd
    return v4

    .line 4769
    :pswitch_ce
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_d9

    move v4, v5

    :cond_d9
    return v4

    .line 4767
    :pswitch_da
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e7

    move v4, v5

    :cond_e7
    return v4

    .line 4813
    :cond_e8
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 4814
    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f4

    move v4, v5

    :cond_f4
    return v4

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_da
        :pswitch_ce
        :pswitch_c4
        :pswitch_ba
        :pswitch_b2
        :pswitch_a8
        :pswitch_a0
        :pswitch_9b
        :pswitch_79
        :pswitch_71
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method private blacklist isFieldPresent(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    .line 4752
    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 4753
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    .line 4755
    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private static blacklist isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z
    .registers 5

    .line 4552
    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 4553
    invoke-interface {p2, p0}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isLegacyEnumIsClosed(I)Z
    .registers 2

    .line 4676
    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private blacklist isListInitialized(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 4558
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 4559
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    .line 4560
    return v0

    .line 4563
    :cond_12
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 4564
    const/4 p3, 0x0

    move v1, p3

    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 4565
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 4566
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 4567
    return p3

    .line 4564
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 4570
    :cond_2c
    return v0
.end method

.method private blacklist isMapInitialized(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 4574
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 4575
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    .line 4576
    return v0

    .line 4578
    :cond_16
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p2

    .line 4579
    iget-object p3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {p3, p2}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object p2

    .line 4580
    iget-object p2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {p2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object p2

    sget-object p3, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-eq p2, p3, :cond_2b

    .line 4581
    return v0

    .line 4584
    :cond_2b
    nop

    .line 4585
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 4586
    if-nez p2, :cond_4d

    .line 4587
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 4589
    :cond_4d
    invoke-interface {p2, p3}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_55

    .line 4590
    const/4 p1, 0x0

    return p1

    .line 4592
    :cond_55
    goto :goto_35

    .line 4593
    :cond_56
    return v0
.end method

.method private static blacklist isMutable(Ljava/lang/Object;)Z
    .registers 2

    .line 4684
    if-nez p0, :cond_4

    .line 4685
    const/4 p0, 0x0

    return p0

    .line 4690
    :cond_4
    instance-of v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_f

    .line 4691
    check-cast p0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p0

    return p0

    .line 4696
    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 4837
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    .line 4838
    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 4839
    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 4838
    :goto_16
    return p1
.end method

.method private blacklist isOneofPresent(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 4832
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    .line 4833
    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method private static blacklist isRequired(I)Z
    .registers 2

    .line 4668
    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static blacklist longAt(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 4718
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2969
    move-object/from16 v1, p0

    move-object/from16 v5, p5

    .line 2970
    const/4 v9, 0x0

    move-object v7, v9

    move-object v8, v7

    .line 2973
    :goto_7
    :try_start_7
    invoke-interface/range {p4 .. p4}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v2

    .line 2974
    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v3
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_82b

    .line 2975
    const/4 v10, 0x0

    if-gez v3, :cond_dc

    .line 2976
    const v0, 0x7fffffff

    if-ne v2, v0, :cond_3d

    .line 3410
    iget v0, v1, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v7

    :goto_1a
    iget v2, v1, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_33

    .line 3411
    iget-object v2, v1, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v2, v0

    .line 3412
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3410
    move-object v11, v1

    move-object v1, v2

    move-object v6, v5

    add-int/lit8 v0, v0, 0x1

    move-object v1, v11

    goto :goto_1a

    .line 3415
    :cond_33
    move-object/from16 v6, p1

    move-object/from16 v1, p3

    if-eqz v4, :cond_3c

    .line 3416
    invoke-virtual {v6, v1, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2977
    :cond_3c
    return-void

    .line 2981
    :cond_3d
    move-object/from16 v6, p1

    move-object v11, v1

    move-object/from16 v1, p3

    :try_start_42
    iget-boolean v0, v11, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v0, :cond_4a

    .line 2982
    move-object/from16 v3, p2

    move-object v4, v9

    goto :goto_53

    .line 2983
    :cond_4a
    iget-object v0, v11, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    move-object/from16 v3, p2

    invoke-virtual {v3, v5, v0, v2}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_d4

    move-object v4, v0

    .line 2985
    :goto_53
    if-eqz v4, :cond_79

    .line 2986
    if-nez v8, :cond_60

    .line 2987
    :try_start_57
    invoke-virtual/range {p2 .. p3}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v8
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5c

    goto :goto_60

    .line 3410
    :catchall_5c
    move-exception v0

    move-object v2, v1

    goto/16 :goto_d9

    .line 2989
    :cond_60
    :goto_60
    nop

    .line 2990
    move-object v2, v8

    move-object v8, v6

    move-object v6, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, p4

    :try_start_68
    invoke-virtual/range {v1 .. v8}, Lcom/android/framework/protobuf/ExtensionSchema;->parseExtension(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_73

    move-object v4, v3

    move-object v1, v5

    move-object v5, v8

    .line 2998
    move-object v5, v1

    move-object v8, v6

    move-object v1, v11

    goto :goto_7

    .line 3410
    :catchall_73
    move-exception v0

    move-object v12, v7

    move-object v5, v8

    move-object v6, v5

    goto/16 :goto_d9

    .line 3000
    :cond_79
    move-object/from16 v4, p4

    move-object v2, v1

    move-object v1, v5

    move-object v5, v6

    move-object v12, v7

    :try_start_7f
    invoke-virtual {v5, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z

    move-result v0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_cf

    if-eqz v0, :cond_97

    .line 3001
    :try_start_85
    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 3002
    move-object v5, v1

    move-object v1, v11

    move-object v7, v12

    goto/16 :goto_7

    .line 3001
    :cond_90
    move-object v7, v12

    goto :goto_a9

    .line 3410
    :catchall_92
    move-exception v0

    move-object v6, v5

    :goto_94
    move-object v1, v11

    goto/16 :goto_829

    .line 3005
    :cond_97
    if-nez v12, :cond_9e

    .line 3006
    invoke-virtual {v5, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_9d
    .catchall {:try_start_85 .. :try_end_9d} :catchall_92

    goto :goto_9f

    .line 3005
    :cond_9e
    move-object v7, v12

    .line 3009
    :goto_9f
    :try_start_9f
    invoke-virtual {v5, v7, v4, v10}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)Z

    move-result v0
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_c9

    if-eqz v0, :cond_a9

    .line 3011
    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_7

    .line 3410
    :cond_a9
    :goto_a9
    iget v0, v11, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v7

    :goto_ac
    iget v1, v11, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_c1

    .line 3411
    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v1, v0

    .line 3412
    move-object/from16 v6, p3

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3410
    move-object v13, v5

    move-object v5, v2

    add-int/lit8 v0, v0, 0x1

    move-object v5, v13

    goto :goto_ac

    .line 3415
    :cond_c1
    move-object v13, v5

    move-object v5, v2

    if-eqz v4, :cond_c8

    .line 3416
    invoke-virtual {v13, v5, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3015
    :cond_c8
    return-void

    .line 3410
    :catchall_c9
    move-exception v0

    move-object v13, v5

    move-object v5, v2

    move-object v1, v11

    goto/16 :goto_795

    :catchall_cf
    move-exception v0

    move-object v13, v5

    move-object v5, v2

    goto/16 :goto_589

    :catchall_d4
    move-exception v0

    move-object v5, v1

    move-object v13, v6

    move-object v12, v7

    move-object v2, v5

    :goto_d9
    move-object v1, v11

    goto/16 :goto_831

    .line 3017
    :cond_dc
    move-object/from16 v13, p1

    move-object/from16 v4, p4

    move-object v11, v1

    move-object v1, v5

    move-object v12, v7

    move-object/from16 v5, p3

    :try_start_e5
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_825

    .line 3020
    :try_start_e9
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v6
    :try_end_ed
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e9 .. :try_end_ed} :catch_7c8
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_825

    packed-switch v6, :pswitch_data_852

    .line 3382
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    if-nez v12, :cond_79c

    .line 3383
    :try_start_f5
    invoke-virtual {v13, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_f9
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_f5 .. :try_end_f9} :catch_798
    .catchall {:try_start_f5 .. :try_end_f9} :catchall_793

    goto/16 :goto_79d

    .line 3373
    :pswitch_fb
    nop

    .line 3374
    :try_start_fc
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 3375
    nop

    .line 3376
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 3375
    invoke-interface {v4, v0, v6, v1}, Lcom/android/framework/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 3377
    invoke-direct {v11, v5, v2, v3, v0}, Lcom/android/framework/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3378
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3367
    :pswitch_112
    nop

    .line 3368
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3367
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3369
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3370
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3362
    :pswitch_12a
    nop

    .line 3363
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3362
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3364
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3365
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3357
    :pswitch_142
    nop

    .line 3358
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3357
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3359
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3360
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3352
    :pswitch_15a
    nop

    .line 3353
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3352
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3354
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3355
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3339
    :pswitch_172
    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readEnum()I

    move-result v6

    .line 3340
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v7

    .line 3341
    if-eqz v7, :cond_18e

    invoke-interface {v7, v6}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v7

    if-eqz v7, :cond_183

    goto :goto_18e

    .line 3345
    :cond_183
    nop

    .line 3346
    invoke-static {v5, v2, v6, v12, v13}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    .line 3349
    move-object v2, v5

    move-object v6, v13

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_7c2

    .line 3342
    :cond_18e
    :goto_18e
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v14, v15, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3343
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3333
    :pswitch_1a1
    nop

    .line 3334
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3333
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3335
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3336
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3329
    :pswitch_1b9
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3330
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3331
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3321
    :pswitch_1cc
    nop

    .line 3322
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 3323
    nop

    .line 3324
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 3323
    invoke-interface {v4, v0, v6, v1}, Lcom/android/framework/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 3325
    invoke-direct {v11, v5, v2, v3, v0}, Lcom/android/framework/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3326
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3316
    :pswitch_1e3
    invoke-direct {v11, v5, v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    .line 3317
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3318
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3311
    :pswitch_1ee
    nop

    .line 3312
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3311
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3313
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3314
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3306
    :pswitch_206
    nop

    .line 3307
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3306
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3308
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3309
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3301
    :pswitch_21e
    nop

    .line 3302
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3301
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3303
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3304
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3296
    :pswitch_236
    nop

    .line 3297
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3296
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3298
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3299
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3291
    :pswitch_24e
    nop

    .line 3292
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3291
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3293
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3294
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3286
    :pswitch_266
    nop

    .line 3287
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3286
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3288
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3289
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3281
    :pswitch_27e
    nop

    .line 3282
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 3281
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3283
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 3284
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3276
    :pswitch_296
    nop

    .line 3277
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 3276
    invoke-static {v5, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3278
    invoke-direct {v11, v5, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_2a9
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_fc .. :try_end_2a9} :catch_2b2
    .catchall {:try_start_fc .. :try_end_2a9} :catchall_2ae

    .line 3279
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_790

    .line 3410
    :catchall_2ae
    move-exception v0

    move-object v2, v5

    goto/16 :goto_589

    .line 3391
    :catch_2b2
    move-exception v0

    move-object v2, v5

    move-object v7, v12

    move-object v6, v13

    move-object v5, v1

    move-object v1, v11

    goto/16 :goto_7ce

    .line 3273
    :pswitch_2ba
    :try_start_2ba
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_2be
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2ba .. :try_end_2be} :catch_2d8
    .catchall {:try_start_2ba .. :try_end_2be} :catchall_2d2

    move-object/from16 v6, p4

    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    :try_start_2c3
    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/Reader;)V
    :try_end_2c6
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2c3 .. :try_end_2c6} :catch_2d0
    .catchall {:try_start_2c3 .. :try_end_2c6} :catchall_2ce

    .line 3274
    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3410
    :catchall_2ce
    move-exception v0

    goto :goto_2d4

    .line 3391
    :catch_2d0
    move-exception v0

    goto :goto_2da

    .line 3410
    :catchall_2d2
    move-exception v0

    move-object v1, v11

    :goto_2d4
    move-object/from16 v2, p3

    goto/16 :goto_794

    .line 3391
    :catch_2d8
    move-exception v0

    move-object v1, v11

    :goto_2da
    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    goto/16 :goto_799

    .line 3264
    :pswitch_2e2
    move-object v1, v11

    .line 3266
    :try_start_2e3
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 3268
    invoke-direct {v1, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6
    :try_end_2eb
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2e3 .. :try_end_2eb} :catch_310
    .catchall {:try_start_2e3 .. :try_end_2eb} :catchall_30a

    .line 3264
    move-object/from16 v2, p3

    move-object/from16 v7, p5

    move-wide v3, v4

    move-object/from16 v5, p4

    :try_start_2f2
    invoke-direct/range {v1 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_2f5
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2f2 .. :try_end_2f5} :catch_304
    .catchall {:try_start_2f2 .. :try_end_2f5} :catchall_2ff

    move-object v11, v1

    move-object v1, v2

    move-object v7, v5

    .line 3270
    move-object/from16 v5, p5

    move-object v2, v1

    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_790

    .line 3410
    :catchall_2ff
    move-exception v0

    move-object v11, v1

    move-object v1, v2

    goto/16 :goto_589

    .line 3391
    :catch_304
    move-exception v0

    move-object v11, v1

    move-object v1, v2

    move-object v7, v5

    goto/16 :goto_58d

    .line 3410
    :catchall_30a
    move-exception v0

    move-object v11, v1

    move-object/from16 v1, p3

    goto/16 :goto_371

    .line 3391
    :catch_310
    move-exception v0

    move-object/from16 v7, p4

    move-object v11, v1

    move-object/from16 v1, p3

    goto/16 :goto_375

    .line 3259
    :pswitch_318
    move-object v7, v4

    move-object v1, v5

    :try_start_31a
    iget-object v2, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3260
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3259
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 3261
    move-object/from16 v5, p5

    move-object v2, v1

    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_790

    .line 3255
    :pswitch_32e
    move-object v7, v4

    move-object v1, v5

    iget-object v2, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3256
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3255
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 3257
    move-object/from16 v5, p5

    move-object v2, v1

    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_790

    .line 3251
    :pswitch_344
    move-object v7, v4

    move-object v1, v5

    iget-object v2, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3252
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3251
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 3253
    move-object/from16 v5, p5

    move-object v2, v1

    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_790

    .line 3247
    :pswitch_35a
    move-object v7, v4

    move-object v1, v5

    iget-object v2, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3248
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3247
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V
    :try_end_369
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_31a .. :try_end_369} :catch_374
    .catchall {:try_start_31a .. :try_end_369} :catchall_370

    .line 3249
    move-object/from16 v5, p5

    move-object v2, v1

    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_790

    .line 3410
    :catchall_370
    move-exception v0

    :goto_371
    move-object v2, v1

    goto/16 :goto_589

    .line 3391
    :catch_374
    move-exception v0

    :goto_375
    move-object/from16 v5, p5

    move-object v2, v1

    goto/16 :goto_58f

    .line 3233
    :pswitch_37a
    move-object v7, v4

    move-object v1, v5

    :try_start_37c
    iget-object v4, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3234
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3235
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 3236
    nop

    .line 3241
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_38e
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_37c .. :try_end_38e} :catch_3ac
    .catchall {:try_start_37c .. :try_end_38e} :catchall_3a7

    .line 3237
    move-object v3, v0

    move-object v5, v12

    move-object v6, v13

    :try_start_391
    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0
    :try_end_395
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_391 .. :try_end_395} :catch_3a3
    .catchall {:try_start_391 .. :try_end_395} :catchall_39f

    move-object v2, v1

    .line 3244
    move-object/from16 v6, p1

    move-object/from16 v5, p5

    move-object v4, v7

    move-object v1, v11

    move-object v7, v0

    goto/16 :goto_7c2

    .line 3410
    :catchall_39f
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4f7

    .line 3391
    :catch_3a3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4fd

    .line 3410
    :catchall_3a7
    move-exception v0

    move-object v2, v1

    move-object v5, v12

    goto/16 :goto_4f7

    .line 3391
    :catch_3ac
    move-exception v0

    move-object v2, v1

    move-object v5, v12

    goto/16 :goto_4fd

    .line 3228
    :pswitch_3b1
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    :try_start_3b4
    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3229
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3228
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 3230
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3224
    :pswitch_3ca
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3225
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3224
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 3226
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3220
    :pswitch_3e3
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3221
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3220
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 3222
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3216
    :pswitch_3fc
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3217
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3216
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 3218
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3212
    :pswitch_415
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3213
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3212
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 3214
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3208
    :pswitch_42e
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3209
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3208
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 3210
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3204
    :pswitch_447
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3205
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3204
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 3206
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3200
    :pswitch_460
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3201
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3200
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 3202
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3196
    :pswitch_479
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3197
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3196
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 3198
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3192
    :pswitch_492
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3193
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3192
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 3194
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3188
    :pswitch_4ab
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3189
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3188
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 3190
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3184
    :pswitch_4c4
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3185
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3184
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 3186
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3180
    :pswitch_4dd
    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3181
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3180
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V
    :try_end_4ed
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3b4 .. :try_end_4ed} :catch_4fc
    .catchall {:try_start_3b4 .. :try_end_4ed} :catchall_4f6

    .line 3182
    move-object/from16 v13, p1

    move-object v12, v5

    move-object v4, v7

    move-object v1, v11

    move-object/from16 v5, p5

    goto/16 :goto_790

    .line 3410
    :catchall_4f6
    move-exception v0

    :goto_4f7
    move-object/from16 v6, p1

    move-object v7, v5

    goto/16 :goto_d9

    .line 3391
    :catch_4fc
    move-exception v0

    :goto_4fd
    move-object/from16 v6, p1

    move-object v4, v7

    move-object v1, v11

    move-object v7, v5

    move-object/from16 v5, p5

    goto/16 :goto_7ce

    .line 3166
    :pswitch_506
    move v1, v2

    move-object v7, v4

    move-object v2, v5

    move-object v5, v12

    :try_start_50a
    iget-object v4, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3167
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    invoke-virtual {v4, v2, v12, v13}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3168
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 3169
    nop

    .line 3174
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_51c
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_50a .. :try_end_51c} :catch_544
    .catchall {:try_start_50a .. :try_end_51c} :catchall_53f

    .line 3170
    move-object v3, v2

    move v2, v1

    move-object v1, v3

    move-object/from16 v6, p1

    move-object v3, v0

    :try_start_522
    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v0
    :try_end_526
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_522 .. :try_end_526} :catch_536
    .catchall {:try_start_522 .. :try_end_526} :catchall_530

    move-object v2, v1

    move-object v13, v6

    .line 3177
    move-object/from16 v5, p5

    move-object v4, v7

    move-object v1, v11

    move-object v6, v13

    move-object v7, v0

    goto/16 :goto_7c2

    .line 3410
    :catchall_530
    move-exception v0

    move-object v2, v1

    move-object v12, v5

    move-object v13, v6

    goto/16 :goto_94

    .line 3391
    :catch_536
    move-exception v0

    move-object v2, v1

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v5, p5

    move-object v4, v7

    goto/16 :goto_7cc

    .line 3410
    :catchall_53f
    move-exception v0

    move-object/from16 v13, p1

    move-object v12, v5

    goto :goto_589

    .line 3391
    :catch_544
    move-exception v0

    move-object/from16 v13, p1

    move-object v12, v5

    goto :goto_58d

    .line 3161
    :pswitch_549
    move-object v7, v4

    move-object v2, v5

    :try_start_54b
    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3162
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3161
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 3163
    move-object/from16 v5, p5

    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_790

    .line 3157
    :pswitch_55e
    move-object v7, v4

    move-object v2, v5

    iget-object v1, v11, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3158
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3157
    invoke-interface {v7, v0}, Lcom/android/framework/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    .line 3159
    move-object/from16 v5, p5

    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_790

    .line 3148
    :pswitch_573
    move-object v7, v4

    move-object v2, v5

    .line 3152
    invoke-direct {v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v5
    :try_end_579
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_54b .. :try_end_579} :catch_58c
    .catchall {:try_start_54b .. :try_end_579} :catchall_588

    .line 3148
    move-object/from16 v6, p5

    move v3, v0

    move-object v4, v7

    move-object v1, v11

    :try_start_57e
    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    :try_end_581
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_57e .. :try_end_581} :catch_584
    .catchall {:try_start_57e .. :try_end_581} :catchall_793

    move-object v5, v6

    .line 3154
    goto/16 :goto_790

    .line 3391
    :catch_584
    move-exception v0

    move-object v5, v6

    goto/16 :goto_799

    .line 3410
    :catchall_588
    move-exception v0

    :goto_589
    move-object v1, v11

    goto/16 :goto_794

    .line 3391
    :catch_58c
    move-exception v0

    :goto_58d
    move-object/from16 v5, p5

    :goto_58f
    move-object v4, v7

    move-object v1, v11

    goto/16 :goto_799

    .line 3144
    :pswitch_593
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    :try_start_596
    invoke-direct {v1, v2, v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    .line 3145
    goto/16 :goto_790

    .line 3140
    :pswitch_59b
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3141
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3140
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 3142
    goto/16 :goto_790

    .line 3136
    :pswitch_5ad
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3137
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3136
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 3138
    goto/16 :goto_790

    .line 3132
    :pswitch_5bf
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3133
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3132
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 3134
    goto/16 :goto_790

    .line 3128
    :pswitch_5d1
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3129
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3128
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 3130
    goto/16 :goto_790

    .line 3124
    :pswitch_5e3
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3125
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3124
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 3126
    goto/16 :goto_790

    .line 3120
    :pswitch_5f5
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3121
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3120
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 3122
    goto/16 :goto_790

    .line 3116
    :pswitch_607
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3117
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3116
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 3118
    goto/16 :goto_790

    .line 3112
    :pswitch_619
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 3113
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 3112
    invoke-interface {v4, v0}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 3114
    goto/16 :goto_790

    .line 3105
    :pswitch_62b
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 3106
    nop

    .line 3107
    invoke-direct {v1, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 3106
    invoke-interface {v4, v0, v6, v5}, Lcom/android/framework/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 3108
    invoke-direct {v1, v2, v3, v0}, Lcom/android/framework/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3109
    goto/16 :goto_790

    .line 3100
    :pswitch_641
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3101
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3102
    goto/16 :goto_790

    .line 3096
    :pswitch_654
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3097
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3098
    goto/16 :goto_790

    .line 3092
    :pswitch_667
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3093
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3094
    goto/16 :goto_790

    .line 3088
    :pswitch_67a
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3089
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3090
    goto/16 :goto_790

    .line 3075
    :pswitch_68d
    move v6, v2

    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readEnum()I

    move-result v7

    .line 3076
    invoke-direct {v1, v3}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v11

    .line 3077
    if-eqz v11, :cond_6aa

    invoke-interface {v11, v7}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v11

    if-eqz v11, :cond_6a2

    goto :goto_6aa

    .line 3081
    :cond_6a2
    nop

    .line 3082
    invoke-static {v2, v6, v7, v12, v13}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    .line 3085
    move-object v6, v13

    goto/16 :goto_7c2

    .line 3078
    :cond_6aa
    :goto_6aa
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v14

    invoke-static {v2, v14, v15, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3079
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_790

    .line 3070
    :pswitch_6b6
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3071
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3072
    goto/16 :goto_790

    .line 3066
    :pswitch_6c9
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3067
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3068
    goto/16 :goto_790

    .line 3059
    :pswitch_6dc
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 3060
    nop

    .line 3061
    invoke-direct {v1, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 3060
    invoke-interface {v4, v0, v6, v5}, Lcom/android/framework/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 3062
    invoke-direct {v1, v2, v3, v0}, Lcom/android/framework/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3063
    goto/16 :goto_790

    .line 3054
    :pswitch_6f2
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-direct {v1, v2, v0, v4}, Lcom/android/framework/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V

    .line 3055
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3056
    goto/16 :goto_790

    .line 3050
    :pswitch_6fd
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 3051
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3052
    goto/16 :goto_790

    .line 3046
    :pswitch_710
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3047
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3048
    goto/16 :goto_790

    .line 3042
    :pswitch_723
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3043
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3044
    goto/16 :goto_790

    .line 3038
    :pswitch_736
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3039
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3040
    goto :goto_790

    .line 3034
    :pswitch_748
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3035
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3036
    goto :goto_790

    .line 3030
    :pswitch_75a
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3031
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3032
    goto :goto_790

    .line 3026
    :pswitch_76c
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result v0

    invoke-static {v2, v6, v7, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3027
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 3028
    goto :goto_790

    .line 3022
    :pswitch_77e
    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3023
    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V
    :try_end_78f
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_596 .. :try_end_78f} :catch_798
    .catchall {:try_start_596 .. :try_end_78f} :catchall_793

    .line 3024
    nop

    .line 3407
    :goto_790
    move-object v7, v12

    move-object v6, v13

    goto :goto_7c2

    .line 3410
    :catchall_793
    move-exception v0

    :goto_794
    move-object v7, v12

    :goto_795
    move-object v6, v13

    goto/16 :goto_831

    .line 3391
    :catch_798
    move-exception v0

    :goto_799
    move-object v7, v12

    :goto_79a
    move-object v6, v13

    goto :goto_7ce

    .line 3382
    :cond_79c
    move-object v7, v12

    .line 3385
    :goto_79d
    :try_start_79d
    invoke-virtual {v13, v7, v4, v10}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)Z

    move-result v0
    :try_end_7a1
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_79d .. :try_end_7a1} :catch_7c6
    .catchall {:try_start_79d .. :try_end_7a1} :catchall_7c4

    if-nez v0, :cond_7c1

    .line 3410
    iget v0, v1, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v7

    :goto_7a6
    iget v3, v1, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v3, :cond_7ba

    .line 3411
    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v0

    .line 3412
    move-object/from16 v6, p3

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3410
    move-object v6, v5

    add-int/lit8 v0, v0, 0x1

    move-object v13, v6

    goto :goto_7a6

    .line 3415
    :cond_7ba
    move-object v6, v13

    if-eqz v4, :cond_7c0

    .line 3416
    invoke-virtual {v6, v2, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3387
    :cond_7c0
    return-void

    .line 3385
    :cond_7c1
    move-object v6, v13

    .line 3407
    :goto_7c2
    goto/16 :goto_821

    .line 3410
    :catchall_7c4
    move-exception v0

    goto :goto_795

    .line 3391
    :catch_7c6
    move-exception v0

    goto :goto_79a

    :catch_7c8
    move-exception v0

    move-object v2, v5

    move-object v6, v13

    move-object v5, v1

    :goto_7cc
    move-object v1, v11

    move-object v7, v12

    .line 3394
    :goto_7ce
    :try_start_7ce
    invoke-virtual {v6, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z

    move-result v0

    if-eqz v0, :cond_7f7

    .line 3395
    invoke-interface {v4}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v0
    :try_end_7d8
    .catchall {:try_start_7ce .. :try_end_7d8} :catchall_823

    if-nez v0, :cond_821

    .line 3410
    iget v0, v1, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v7

    :goto_7dd
    iget v3, v1, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v3, :cond_7f1

    .line 3411
    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v0

    .line 3412
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3410
    move-object v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_7dd

    .line 3415
    :cond_7f1
    if-eqz v4, :cond_7f6

    .line 3416
    invoke-virtual {v6, v2, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3396
    :cond_7f6
    return-void

    .line 3399
    :cond_7f7
    if-nez v7, :cond_7fe

    .line 3400
    :try_start_7f9
    invoke-virtual {v6, v2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    .line 3402
    :cond_7fe
    invoke-virtual {v6, v7, v4, v10}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)Z

    move-result v0
    :try_end_802
    .catchall {:try_start_7f9 .. :try_end_802} :catchall_823

    if-nez v0, :cond_821

    .line 3410
    iget v0, v1, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v7

    :goto_807
    iget v3, v1, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v3, :cond_81b

    .line 3411
    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v0

    .line 3412
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3410
    move-object v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_807

    .line 3415
    :cond_81b
    if-eqz v4, :cond_820

    .line 3416
    invoke-virtual {v6, v2, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3404
    :cond_820
    return-void

    .line 3408
    :cond_821
    :goto_821
    goto/16 :goto_7

    .line 3410
    :catchall_823
    move-exception v0

    goto :goto_831

    :catchall_825
    move-exception v0

    move-object v2, v5

    move-object v1, v11

    move-object v6, v13

    :goto_829
    move-object v7, v12

    goto :goto_831

    :catchall_82b
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v2, p3

    move-object v12, v7

    :goto_831
    iget v3, v1, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    move-object v4, v7

    move v7, v3

    :goto_835
    iget v3, v1, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v7, v3, :cond_84b

    .line 3411
    iget-object v3, v1, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v7

    .line 3412
    move-object/from16 v6, p3

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3410
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object v6, v5

    goto :goto_835

    .line 3415
    :cond_84b
    move-object v5, v6

    if-eqz v4, :cond_851

    .line 3416
    invoke-virtual {v5, v2, v4}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3418
    :cond_851
    throw v0

    :pswitch_data_852
    .packed-switch 0x0
        :pswitch_77e
        :pswitch_76c
        :pswitch_75a
        :pswitch_748
        :pswitch_736
        :pswitch_723
        :pswitch_710
        :pswitch_6fd
        :pswitch_6f2
        :pswitch_6dc
        :pswitch_6c9
        :pswitch_6b6
        :pswitch_68d
        :pswitch_67a
        :pswitch_667
        :pswitch_654
        :pswitch_641
        :pswitch_62b
        :pswitch_619
        :pswitch_607
        :pswitch_5f5
        :pswitch_5e3
        :pswitch_5d1
        :pswitch_5bf
        :pswitch_5ad
        :pswitch_59b
        :pswitch_593
        :pswitch_573
        :pswitch_55e
        :pswitch_549
        :pswitch_506
        :pswitch_4dd
        :pswitch_4c4
        :pswitch_4ab
        :pswitch_492
        :pswitch_479
        :pswitch_460
        :pswitch_447
        :pswitch_42e
        :pswitch_415
        :pswitch_3fc
        :pswitch_3e3
        :pswitch_3ca
        :pswitch_3b1
        :pswitch_37a
        :pswitch_35a
        :pswitch_344
        :pswitch_32e
        :pswitch_318
        :pswitch_2e2
        :pswitch_2ba
        :pswitch_296
        :pswitch_27e
        :pswitch_266
        :pswitch_24e
        :pswitch_236
        :pswitch_21e
        :pswitch_206
        :pswitch_1ee
        :pswitch_1e3
        :pswitch_1cc
        :pswitch_1b9
        :pswitch_1a1
        :pswitch_172
        :pswitch_15a
        :pswitch_142
        :pswitch_12a
        :pswitch_112
        :pswitch_fb
    .end packed-switch
.end method

.method private final blacklist mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/Reader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4396
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p2

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 4397
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 4402
    if-nez p2, :cond_18

    .line 4403
    iget-object p2, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {p2, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4404
    invoke-static {p1, v0, v1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_30

    .line 4405
    :cond_18
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v2, p2}, Lcom/android/framework/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4406
    nop

    .line 4407
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v2, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4408
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v3, v2, p2}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4409
    invoke-static {p1, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    .line 4411
    :cond_30
    :goto_30
    iget-object p1, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 4412
    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 4413
    invoke-interface {p2, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object p2

    .line 4411
    invoke-interface {p5, p1, p2, p4}, Lcom/android/framework/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 4415
    return-void
.end method

.method private blacklist mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1385
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1386
    return-void

    .line 1389
    :cond_7
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1390
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 1392
    sget-object v2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1393
    if-eqz v2, :cond_5a

    .line 1398
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 1399
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1400
    invoke-static {v2}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 1402
    sget-object p2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_39

    .line 1405
    :cond_2d
    invoke-interface {p2}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 1406
    invoke-interface {p2, v3, v2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1407
    sget-object p2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1409
    :goto_39
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 1410
    return-void

    .line 1414
    :cond_3d
    sget-object p3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 1415
    invoke-static {p3}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 1416
    invoke-interface {p2}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 1417
    invoke-interface {p2, v3, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1418
    sget-object p3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1419
    move-object p3, v3

    .line 1421
    :cond_56
    invoke-interface {p2, p3, v2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1422
    return-void

    .line 1394
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1395
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is present but null: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1425
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v0

    .line 1426
    invoke-direct {p0, p2, v0, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1427
    return-void

    .line 1430
    :cond_b
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1431
    sget-object v3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1432
    if-eqz v3, :cond_5e

    .line 1437
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 1438
    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_41

    .line 1439
    invoke-static {v3}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1441
    sget-object p2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3d

    .line 1444
    :cond_31
    invoke-interface {p2}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 1445
    invoke-interface {p2, v4, v3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1446
    sget-object p2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1448
    :goto_3d
    invoke-direct {p0, p1, v0, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 1449
    return-void

    .line 1453
    :cond_41
    sget-object p3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 1454
    invoke-static {p3}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1455
    invoke-interface {p2}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1456
    invoke-interface {p2, v0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1457
    sget-object p3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3, p1, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1458
    move-object p3, v0

    .line 1460
    :cond_5a
    invoke-interface {p2, p3, v3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1461
    return-void

    .line 1433
    :cond_5e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1434
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " is present but null: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1202
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1203
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1204
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 1206
    invoke-static {v0}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v0

    packed-switch v0, :pswitch_data_174

    goto/16 :goto_173

    .line 1377
    :pswitch_15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1378
    goto/16 :goto_173

    .line 1371
    :pswitch_1a
    invoke-direct {p0, p2, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1372
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1373
    invoke-direct {p0, p1, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 1362
    :pswitch_2c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1363
    goto/16 :goto_173

    .line 1355
    :pswitch_31
    invoke-direct {p0, p2, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1356
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1357
    invoke-direct {p0, p1, v3, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 1344
    :pswitch_43
    iget-object p3, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-static {p3, p1, p2, v1, v2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeMap(Lcom/android/framework/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1345
    goto/16 :goto_173

    .line 1341
    :pswitch_4a
    iget-object p3, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 1342
    goto/16 :goto_173

    .line 1307
    :pswitch_51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1308
    goto/16 :goto_173

    .line 1301
    :pswitch_56
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1302
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1303
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1295
    :pswitch_68
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1296
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1297
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1289
    :pswitch_7a
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1290
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1291
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1283
    :pswitch_8c
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1284
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1285
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1277
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1278
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1279
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1271
    :pswitch_b0
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1272
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1273
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1265
    :pswitch_c2
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1266
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1267
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1262
    :pswitch_d4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1263
    goto/16 :goto_173

    .line 1256
    :pswitch_d9
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1257
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1258
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1250
    :pswitch_eb
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1251
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1252
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 1244
    :pswitch_fd
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1245
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1246
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1238
    :pswitch_10e
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1239
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1240
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1232
    :pswitch_11f
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1233
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1234
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1226
    :pswitch_130
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1227
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1228
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1220
    :pswitch_141
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1221
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1222
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1214
    :pswitch_152
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1215
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1216
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_173

    .line 1208
    :pswitch_163
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1209
    invoke-static {p2, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1210
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 1382
    :cond_173
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_163
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_d4
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_51
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method private blacklist mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4246
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 4247
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 4250
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_17

    .line 4251
    invoke-interface {v0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4255
    :cond_17
    sget-object p2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 4256
    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 4257
    return-object p1

    .line 4261
    :cond_24
    invoke-interface {v0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 4262
    if-eqz p1, :cond_2d

    .line 4263
    invoke-interface {v0, p2, p1}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4265
    :cond_2d
    return-object p2
.end method

.method private blacklist mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4274
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 4277
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_f

    .line 4278
    invoke-interface {v0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4282
    :cond_f
    sget-object p2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 4283
    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 4284
    return-object p1

    .line 4288
    :cond_24
    invoke-interface {v0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 4289
    if-eqz p1, :cond_2d

    .line 4290
    invoke-interface {v0, p2, p1}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4292
    :cond_2d
    return-object p2
.end method

.method static blacklist newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/MessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 226
    instance-of p0, p1, Lcom/android/framework/protobuf/RawMessageInfo;

    if-eqz p0, :cond_b

    .line 227
    check-cast p1, Lcom/android/framework/protobuf/RawMessageInfo;

    invoke-static/range {p1 .. p6}, Lcom/android/framework/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Lcom/android/framework/protobuf/RawMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    .line 236
    :cond_b
    check-cast p1, Lcom/android/framework/protobuf/StructuralMessageInfo;

    invoke-static/range {p1 .. p6}, Lcom/android/framework/protobuf/MessageSchema;->newSchemaForMessageInfo(Lcom/android/framework/protobuf/StructuralMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    return-object p0
.end method

.method static blacklist newSchemaForMessageInfo(Lcom/android/framework/protobuf/StructuralMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/StructuralMessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getFields()[Lcom/android/framework/protobuf/FieldInfo;

    move-result-object v0

    .line 635
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 636
    nop

    .line 637
    move v7, v2

    move v8, v7

    goto :goto_1d

    .line 639
    :cond_c
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 640
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v3

    move v7, v1

    move v8, v3

    .line 643
    :goto_1d
    array-length v1, v0

    .line 645
    mul-int/lit8 v3, v1, 0x3

    new-array v5, v3, [I

    .line 646
    mul-int/lit8 v1, v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    .line 648
    nop

    .line 649
    nop

    .line 650
    array-length v1, v0

    move v3, v2

    move v4, v3

    move v9, v4

    :goto_2c
    const/16 v10, 0x31

    const/16 v11, 0x12

    if-ge v3, v1, :cond_58

    aget-object v12, v0, v3

    .line 651
    invoke-virtual {v12}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v13

    sget-object v14, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    if-ne v13, v14, :cond_3f

    .line 652
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 653
    :cond_3f
    invoke-virtual {v12}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v13

    if-lt v13, v11, :cond_55

    invoke-virtual {v12}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v11

    if-gt v11, v10, :cond_55

    .line 656
    add-int/lit8 v9, v9, 0x1

    .line 650
    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 659
    :cond_58
    const/4 v1, 0x0

    if-lez v4, :cond_5e

    new-array v3, v4, [I

    goto :goto_5f

    :cond_5e
    move-object v3, v1

    .line 660
    :goto_5f
    if-lez v9, :cond_63

    new-array v1, v9, [I

    .line 661
    :cond_63
    nop

    .line 662
    nop

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v4

    .line 665
    if-nez v4, :cond_6d

    .line 666
    sget-object v4, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 668
    :cond_6d
    nop

    .line 670
    nop

    .line 671
    move v9, v2

    move v12, v9

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_74
    array-length v2, v0

    if-ge v9, v2, :cond_d1

    .line 672
    aget-object v2, v0, v9

    .line 673
    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v10

    .line 677
    invoke-static {v2, v5, v12, v6}, Lcom/android/framework/protobuf/MessageSchema;->storeFieldData(Lcom/android/framework/protobuf/FieldInfo;[II[Ljava/lang/Object;)V

    .line 680
    array-length v11, v4

    if-ge v13, v11, :cond_8c

    aget v11, v4, v13

    if-ne v11, v10, :cond_8c

    .line 682
    add-int/lit8 v10, v13, 0x1

    aput v12, v4, v13

    move v13, v10

    .line 685
    :cond_8c
    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v10

    sget-object v11, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    if-ne v10, v11, :cond_9c

    .line 686
    add-int/lit8 v2, v14, 0x1

    aput v12, v3, v14

    move v14, v2

    move/from16 v17, v12

    goto :goto_c7

    .line 687
    :cond_9c
    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v10

    const/16 v11, 0x12

    if-lt v10, v11, :cond_c5

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v10

    const/16 v11, 0x31

    if-gt v10, v11, :cond_c5

    .line 690
    add-int/lit8 v10, v15, 0x1

    .line 691
    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    move/from16 v17, v12

    invoke-static {v2}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v2, v11

    aput v2, v1, v15

    move v15, v10

    goto :goto_c7

    .line 687
    :cond_c5
    move/from16 v17, v12

    .line 694
    :goto_c7
    add-int/lit8 v9, v9, 0x1

    .line 671
    add-int/lit8 v12, v17, 0x3

    const/4 v2, 0x0

    const/16 v10, 0x31

    const/16 v11, 0x12

    goto :goto_74

    .line 697
    :cond_d1
    if-nez v3, :cond_d5

    .line 698
    sget-object v3, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 700
    :cond_d5
    if-nez v1, :cond_d9

    .line 701
    sget-object v1, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 703
    :cond_d9
    array-length v0, v4

    array-length v2, v3

    add-int/2addr v0, v2

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v12, v0, [I

    .line 705
    array-length v0, v4

    const/4 v2, 0x0

    invoke-static {v4, v2, v12, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    array-length v0, v4

    array-length v9, v3

    invoke-static {v3, v2, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    array-length v0, v4

    array-length v9, v3

    add-int/2addr v0, v9

    array-length v9, v1

    invoke-static {v1, v2, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    new-instance v0, Lcom/android/framework/protobuf/MessageSchema;

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v9

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/StructuralMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v10

    array-length v13, v4

    array-length v1, v4

    array-length v2, v3

    add-int v14, v1, v2

    const/4 v11, 0x1

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object v4, v0

    invoke-direct/range {v4 .. v19}, Lcom/android/framework/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ProtoSyntax;Z[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V

    .line 715
    return-object v4
.end method

.method static blacklist newSchemaForRawMessageInfo(Lcom/android/framework/protobuf/RawMessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/RawMessageInfo;",
            "Lcom/android/framework/protobuf/NewInstanceSchema;",
            "Lcom/android/framework/protobuf/ListFieldSchema;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            ")",
            "Lcom/android/framework/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 255
    nop

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 258
    const v5, 0xd800

    if-lt v3, v5, :cond_21

    .line 259
    nop

    .line 260
    const/4 v3, 0x1

    .line 261
    :goto_15
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_20

    .line 262
    nop

    .line 263
    move v3, v6

    goto :goto_15

    .line 265
    :cond_20
    goto :goto_22

    .line 258
    :cond_21
    const/4 v6, 0x1

    .line 267
    :goto_22
    nop

    .line 269
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 270
    if-lt v6, v5, :cond_42

    .line 271
    and-int/lit16 v6, v6, 0x1fff

    .line 272
    const/16 v8, 0xd

    .line 273
    :goto_2f
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_3f

    .line 274
    and-int/lit16 v3, v3, 0x1fff

    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    .line 275
    add-int/lit8 v8, v8, 0xd

    move v3, v9

    goto :goto_2f

    .line 277
    :cond_3f
    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    move v3, v9

    .line 279
    :cond_42
    nop

    .line 291
    if-nez v6, :cond_5c

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    nop

    .line 296
    nop

    .line 297
    nop

    .line 298
    nop

    .line 299
    nop

    .line 300
    sget-object v6, Lcom/android/framework/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 301
    move v8, v2

    move v10, v8

    move v11, v10

    move v12, v11

    move v15, v12

    move/from16 v17, v15

    move-object/from16 v16, v6

    move/from16 v6, v17

    goto/16 :goto_170

    .line 303
    :cond_5c
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 304
    if-lt v3, v5, :cond_7b

    .line 305
    and-int/lit16 v3, v3, 0x1fff

    .line 306
    const/16 v8, 0xd

    .line 307
    :goto_68
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_78

    .line 308
    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    .line 309
    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_68

    .line 311
    :cond_78
    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    move v6, v9

    .line 313
    :cond_7b
    nop

    .line 315
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 316
    if-lt v6, v5, :cond_9b

    .line 317
    and-int/lit16 v6, v6, 0x1fff

    .line 318
    const/16 v9, 0xd

    .line 319
    :goto_88
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_98

    .line 320
    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    .line 321
    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_88

    .line 323
    :cond_98
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v10

    .line 325
    :cond_9b
    nop

    .line 327
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 328
    if-lt v8, v5, :cond_bb

    .line 329
    and-int/lit16 v8, v8, 0x1fff

    .line 330
    const/16 v10, 0xd

    .line 331
    :goto_a8
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b8

    .line 332
    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    .line 333
    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_a8

    .line 335
    :cond_b8
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v11

    .line 337
    :cond_bb
    nop

    .line 339
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 340
    if-lt v9, v5, :cond_db

    .line 341
    and-int/lit16 v9, v9, 0x1fff

    .line 342
    const/16 v11, 0xd

    .line 343
    :goto_c8
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_d8

    .line 344
    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    .line 345
    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_c8

    .line 347
    :cond_d8
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    .line 349
    :cond_db
    nop

    .line 351
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 352
    if-lt v10, v5, :cond_fb

    .line 353
    and-int/lit16 v10, v10, 0x1fff

    .line 354
    const/16 v12, 0xd

    .line 355
    :goto_e8
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f8

    .line 356
    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    .line 357
    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_e8

    .line 359
    :cond_f8
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    .line 361
    :cond_fb
    nop

    .line 363
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 364
    if-lt v11, v5, :cond_11b

    .line 365
    and-int/lit16 v11, v11, 0x1fff

    .line 366
    const/16 v13, 0xd

    .line 367
    :goto_108
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_118

    .line 368
    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    .line 369
    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_108

    .line 371
    :cond_118
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    .line 373
    :cond_11b
    nop

    .line 375
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 376
    if-lt v12, v5, :cond_13b

    .line 377
    and-int/lit16 v12, v12, 0x1fff

    .line 378
    const/16 v14, 0xd

    .line 379
    :goto_128
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_138

    .line 380
    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 381
    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_128

    .line 383
    :cond_138
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    .line 385
    :cond_13b
    nop

    .line 387
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 388
    if-lt v13, v5, :cond_15d

    .line 389
    and-int/lit16 v13, v13, 0x1fff

    .line 390
    const/16 v15, 0xd

    .line 391
    :goto_148
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_159

    .line 392
    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    .line 393
    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_148

    .line 395
    :cond_159
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    .line 397
    :cond_15d
    nop

    .line 398
    add-int v15, v13, v11

    add-int/2addr v15, v12

    new-array v12, v15, [I

    .line 400
    mul-int/lit8 v15, v3, 0x2

    add-int/2addr v15, v6

    move v6, v11

    move v11, v8

    move v8, v6

    move v6, v3

    move-object/from16 v16, v12

    move/from16 v17, v13

    move v3, v14

    move v12, v9

    .line 403
    :goto_170
    sget-object v9, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v13

    .line 405
    nop

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 407
    mul-int/lit8 v2, v10, 0x3

    new-array v2, v2, [I

    .line 408
    mul-int/lit8 v10, v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 410
    nop

    .line 411
    add-int v8, v17, v8

    .line 413
    move/from16 v22, v8

    move/from16 v21, v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 414
    :goto_192
    if-ge v3, v1, :cond_3f7

    .line 419
    add-int/lit8 v23, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 420
    if-lt v3, v5, :cond_1bc

    .line 421
    and-int/lit16 v3, v3, 0x1fff

    .line 422
    move/from16 v4, v23

    const/16 v23, 0xd

    const/16 v24, 0x1

    .line 423
    :goto_1a4
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1b6

    .line 424
    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v3, v4

    .line 425
    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    goto :goto_1a4

    .line 427
    :cond_1b6
    shl-int v4, v4, v23

    or-int/2addr v3, v4

    move/from16 v4, v25

    goto :goto_1c0

    .line 420
    :cond_1bc
    const/16 v24, 0x1

    move/from16 v4, v23

    .line 429
    :goto_1c0
    nop

    .line 431
    add-int/lit8 v23, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 432
    if-lt v4, v5, :cond_1e7

    .line 433
    and-int/lit16 v4, v4, 0x1fff

    .line 434
    move/from16 v7, v23

    const/16 v23, 0xd

    .line 435
    :goto_1cf
    add-int/lit8 v26, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_1e1

    .line 436
    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v23

    or-int/2addr v4, v7

    .line 437
    add-int/lit8 v23, v23, 0xd

    move/from16 v7, v26

    goto :goto_1cf

    .line 439
    :cond_1e1
    shl-int v7, v7, v23

    or-int/2addr v4, v7

    move/from16 v7, v26

    goto :goto_1e9

    .line 432
    :cond_1e7
    move/from16 v7, v23

    .line 441
    :goto_1e9
    nop

    .line 442
    and-int/lit16 v5, v4, 0xff

    .line 444
    move/from16 v26, v1

    and-int/lit16 v1, v4, 0x400

    if-eqz v1, :cond_1f8

    .line 445
    add-int/lit8 v1, v19, 0x1

    aput v20, v16, v19

    move/from16 v19, v1

    .line 453
    :cond_1f8
    const/16 v1, 0x33

    move-object/from16 v29, v2

    if-lt v5, v1, :cond_2a1

    .line 454
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 455
    const v2, 0xd800

    if-lt v7, v2, :cond_227

    .line 456
    and-int/lit16 v7, v7, 0x1fff

    .line 457
    const/16 v31, 0xd

    .line 458
    :goto_20d
    add-int/lit8 v32, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_222

    .line 459
    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v31

    or-int/2addr v7, v1

    .line 460
    add-int/lit8 v31, v31, 0xd

    move/from16 v1, v32

    const v2, 0xd800

    goto :goto_20d

    .line 462
    :cond_222
    shl-int v1, v1, v31

    or-int/2addr v7, v1

    move/from16 v1, v32

    .line 464
    :cond_227
    nop

    .line 466
    add-int/lit8 v2, v5, -0x33

    .line 467
    move/from16 v31, v1

    const/16 v1, 0x9

    if-eq v2, v1, :cond_257

    const/16 v1, 0x11

    if-ne v2, v1, :cond_235

    goto :goto_257

    .line 470
    :cond_235
    const/16 v1, 0xc

    if-ne v2, v1, :cond_264

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/ProtoSyntax;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_249

    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_264

    .line 475
    :cond_249
    div-int/lit8 v1, v20, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v15, 0x1

    aget-object v15, v13, v15

    aput-object v15, v10, v1

    move v15, v2

    goto :goto_264

    .line 469
    :cond_257
    :goto_257
    div-int/lit8 v1, v20, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v15, 0x1

    aget-object v15, v13, v15

    aput-object v15, v10, v1

    move v15, v2

    .line 480
    :cond_264
    :goto_264
    mul-int/lit8 v7, v7, 0x2

    .line 481
    aget-object v1, v13, v7

    .line 482
    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_26f

    .line 483
    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_277

    .line 485
    :cond_26f
    check-cast v1, Ljava/lang/String;

    invoke-static {v14, v1}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 490
    aput-object v1, v13, v7

    .line 493
    :goto_277
    invoke-virtual {v9, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 496
    add-int/lit8 v7, v7, 0x1

    .line 497
    aget-object v2, v13, v7

    .line 498
    move/from16 v27, v1

    instance-of v1, v2, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_289

    .line 499
    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_291

    .line 501
    :cond_289
    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 502
    aput-object v2, v13, v7

    .line 505
    :goto_291
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 506
    nop

    .line 507
    move-object/from16 v30, v0

    move v0, v1

    move/from16 v1, v27

    move/from16 v28, v31

    const/4 v7, 0x0

    goto/16 :goto_3b5

    .line 508
    :cond_2a1
    add-int/lit8 v1, v15, 0x1

    aget-object v2, v13, v15

    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 509
    const/16 v15, 0x9

    if-eq v5, v15, :cond_324

    const/16 v15, 0x11

    if-ne v5, v15, :cond_2b7

    move/from16 v27, v1

    goto/16 :goto_326

    .line 511
    :cond_2b7
    const/16 v15, 0x1b

    if-eq v5, v15, :cond_314

    const/16 v15, 0x31

    if-ne v5, v15, :cond_2c2

    move/from16 v27, v1

    goto :goto_316

    .line 514
    :cond_2c2
    const/16 v15, 0xc

    if-eq v5, v15, :cond_2f8

    const/16 v15, 0x1e

    if-eq v5, v15, :cond_2f8

    const/16 v15, 0x2c

    if-ne v5, v15, :cond_2cf

    goto :goto_2f8

    .line 523
    :cond_2cf
    const/16 v15, 0x32

    if-ne v5, v15, :cond_2f5

    .line 524
    add-int/lit8 v15, v21, 0x1

    aput v20, v16, v21

    .line 525
    div-int/lit8 v21, v20, 0x3

    mul-int/lit8 v21, v21, 0x2

    add-int/lit8 v27, v1, 0x1

    aget-object v1, v13, v1

    aput-object v1, v10, v21

    .line 526
    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_2f0

    .line 527
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v1, v27, 0x1

    aget-object v27, v13, v27

    aput-object v27, v10, v21

    move/from16 v21, v15

    goto :goto_334

    .line 526
    :cond_2f0
    move/from16 v21, v15

    move/from16 v1, v27

    goto :goto_334

    .line 523
    :cond_2f5
    move/from16 v27, v1

    goto :goto_332

    .line 519
    :cond_2f8
    :goto_2f8
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v15

    move/from16 v27, v1

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    if-eq v15, v1, :cond_306

    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_332

    .line 521
    :cond_306
    div-int/lit8 v1, v20, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v15, v27, 0x1

    aget-object v27, v13, v27

    aput-object v27, v10, v1

    move v1, v15

    goto :goto_334

    .line 511
    :cond_314
    move/from16 v27, v1

    .line 513
    :goto_316
    div-int/lit8 v1, v20, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v15, v27, 0x1

    aget-object v27, v13, v27

    aput-object v27, v10, v1

    move v1, v15

    goto :goto_334

    .line 509
    :cond_324
    move/from16 v27, v1

    .line 510
    :goto_326
    div-int/lit8 v1, v20, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v10, v1

    .line 531
    :cond_332
    :goto_332
    move/from16 v1, v27

    :goto_334
    move v15, v1

    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 532
    and-int/lit16 v2, v4, 0x1000

    if-eqz v2, :cond_341

    move/from16 v2, v24

    goto :goto_342

    :cond_341
    const/4 v2, 0x0

    .line 533
    :goto_342
    if-eqz v2, :cond_394

    const/16 v2, 0x11

    if-gt v5, v2, :cond_394

    .line 534
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 535
    move/from16 v27, v1

    const v1, 0xd800

    if-lt v7, v1, :cond_36f

    .line 536
    and-int/lit16 v7, v7, 0x1fff

    .line 537
    const/16 v23, 0xd

    .line 538
    :goto_359
    add-int/lit8 v28, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v1, :cond_36b

    .line 539
    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v7, v2

    .line 540
    add-int/lit8 v23, v23, 0xd

    move/from16 v2, v28

    goto :goto_359

    .line 542
    :cond_36b
    shl-int v2, v2, v23

    or-int/2addr v7, v2

    goto :goto_371

    .line 535
    :cond_36f
    move/from16 v28, v2

    .line 544
    :goto_371
    nop

    .line 547
    mul-int/lit8 v2, v6, 0x2

    div-int/lit8 v23, v7, 0x20

    add-int v2, v2, v23

    .line 548
    aget-object v1, v13, v2

    .line 549
    move-object/from16 v30, v0

    instance-of v0, v1, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_383

    .line 550
    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_38b

    .line 552
    :cond_383
    check-cast v1, Ljava/lang/String;

    invoke-static {v14, v1}, Lcom/android/framework/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 553
    aput-object v1, v13, v2

    .line 556
    :goto_38b
    invoke-virtual {v9, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 557
    rem-int/lit8 v7, v7, 0x20

    .line 558
    move v1, v0

    goto :goto_3a0

    .line 533
    :cond_394
    move-object/from16 v30, v0

    move/from16 v27, v1

    .line 559
    nop

    .line 560
    const v0, 0xfffff

    move/from16 v28, v7

    const/4 v7, 0x0

    move v1, v0

    .line 563
    :goto_3a0
    const/16 v0, 0x12

    if-lt v5, v0, :cond_3b2

    const/16 v0, 0x31

    if-gt v5, v0, :cond_3b2

    .line 566
    add-int/lit8 v0, v22, 0x1

    aput v27, v16, v22

    move/from16 v22, v0

    move v0, v1

    move/from16 v1, v27

    goto :goto_3b5

    .line 570
    :cond_3b2
    move v0, v1

    move/from16 v1, v27

    :goto_3b5
    add-int/lit8 v2, v20, 0x1

    aput v3, v29, v20

    .line 571
    add-int/lit8 v3, v2, 0x1

    .line 572
    move/from16 v20, v0

    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_3c4

    const/high16 v0, 0x20000000

    goto :goto_3c5

    :cond_3c4
    const/4 v0, 0x0

    .line 573
    :goto_3c5
    move/from16 v27, v0

    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_3ce

    const/high16 v0, 0x10000000

    goto :goto_3cf

    :cond_3ce
    const/4 v0, 0x0

    :goto_3cf
    or-int v0, v27, v0

    .line 574
    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_3d8

    .line 575
    const/high16 v4, -0x80000000

    goto :goto_3d9

    .line 576
    :cond_3d8
    const/4 v4, 0x0

    :goto_3d9
    or-int/2addr v0, v4

    shl-int/lit8 v4, v5, 0x14

    or-int/2addr v0, v4

    or-int/2addr v0, v1

    aput v0, v29, v2

    .line 579
    add-int/lit8 v0, v3, 0x1

    shl-int/lit8 v1, v7, 0x14

    or-int v1, v1, v20

    aput v1, v29, v3

    .line 580
    move/from16 v20, v0

    move/from16 v1, v26

    move/from16 v3, v28

    move-object/from16 v2, v29

    move-object/from16 v0, v30

    const v5, 0xd800

    goto/16 :goto_192

    .line 582
    :cond_3f7
    move-object/from16 v29, v2

    move/from16 v18, v8

    new-instance v8, Lcom/android/framework/protobuf/MessageSchema;

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v13

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/framework/protobuf/RawMessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v9, v29

    invoke-direct/range {v8 .. v23}, Lcom/android/framework/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ProtoSyntax;Z[IIILcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)V

    .line 582
    return-object v8
.end method

.method private blacklist numberAt(I)I
    .registers 3

    .line 4652
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    aget p1, v0, p1

    return p1
.end method

.method private static blacklist offset(I)J
    .registers 3

    .line 4680
    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static blacklist oneofBooleanAt(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 4742
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static blacklist oneofDoubleAt(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 4726
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist oneofFloatAt(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 4730
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static blacklist oneofIntAt(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 4734
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static blacklist oneofLongAt(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 4738
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3737
    move-wide v2, p6

    sget-object v4, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 3738
    invoke-direct {p0, p5}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v5

    .line 3739
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3740
    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v7, v6}, Lcom/android/framework/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 3741
    nop

    .line 3742
    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v7, v5}, Lcom/android/framework/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3743
    iget-object v8, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v8, v7, v6}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3744
    invoke-virtual {v4, p1, v2, v3, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v7

    .line 3746
    :cond_23
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 3750
    invoke-interface {v1, v5}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 3751
    invoke-interface {v1, v6}, Lcom/android/framework/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 3746
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->decodeMapEntry([BIILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    return v0
.end method

.method private blacklist parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3769
    move/from16 v8, p6

    move/from16 v2, p7

    move-wide/from16 v3, p10

    move/from16 v9, p12

    sget-object v5, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 3770
    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v7, v9, 0x2

    aget v6, v6, v7

    const v7, 0xfffff

    and-int/2addr v6, v7

    int-to-long v6, v6

    .line 3771
    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x2

    packed-switch p9, :pswitch_data_1dc

    move/from16 v1, p3

    goto/16 :goto_1da

    .line 3888
    :pswitch_1f
    const/4 v3, 0x3

    if-ne v2, v3, :cond_43

    .line 3889
    move/from16 v10, p5

    invoke-direct {p0, p1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 3890
    and-int/lit8 v2, v10, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 3891
    nop

    .line 3894
    invoke-direct {p0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    .line 3892
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 3900
    invoke-direct {p0, p1, v8, v9, v1}, Lcom/android/framework/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3901
    move v1, v2

    goto/16 :goto_1da

    .line 3888
    :cond_43
    move/from16 v1, p3

    goto/16 :goto_1da

    .line 3881
    :pswitch_47
    move-object/from16 v11, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1da

    .line 3882
    invoke-static {v11, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3883
    iget-wide v9, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v9, v10}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3884
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1da

    .line 3874
    :pswitch_65
    move-object/from16 v11, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1da

    .line 3875
    invoke-static {v11, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3876
    iget v2, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3877
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1da

    .line 3860
    :pswitch_83
    move-object/from16 v11, p2

    move/from16 v1, p3

    move/from16 v10, p5

    move-object/from16 v13, p13

    if-nez v2, :cond_1da

    .line 3861
    invoke-static {v11, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3862
    iget v2, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 3863
    invoke-direct {p0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v9

    .line 3864
    if-eqz v9, :cond_ad

    invoke-interface {v9, v2}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v9

    if-eqz v9, :cond_a0

    goto :goto_ad

    .line 3869
    :cond_a0
    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_b7

    .line 3865
    :cond_ad
    :goto_ad
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3866
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3871
    :goto_b7
    goto/16 :goto_1da

    .line 3853
    :pswitch_b9
    move-object/from16 v11, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-ne v2, v12, :cond_1da

    .line 3854
    invoke-static {v11, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3855
    iget-object v2, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3856
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1da

    .line 3844
    :pswitch_cf
    move-object/from16 v11, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-ne v2, v12, :cond_1da

    .line 3845
    invoke-direct {p0, p1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->mutableOneofMessageFieldForMerge(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 3846
    nop

    .line 3848
    invoke-direct {p0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    .line 3847
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v3, v11

    move-object v6, v13

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 3849
    invoke-direct {p0, p1, v8, v9, v1}, Lcom/android/framework/protobuf/MessageSchema;->storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3850
    move v1, v2

    goto/16 :goto_1da

    .line 3826
    :pswitch_f0
    move-object/from16 v9, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-ne v2, v12, :cond_1da

    .line 3827
    invoke-static {v9, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3828
    iget v2, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 3829
    if-nez v2, :cond_106

    .line 3830
    const-string v2, ""

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_125

    .line 3832
    :cond_106
    const/high16 v10, 0x20000000

    and-int v10, p8, v10

    if-eqz v10, :cond_11a

    add-int v10, v1, v2

    .line 3833
    invoke-static {v9, v1, v10}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v10

    if-eqz v10, :cond_115

    goto :goto_11a

    .line 3834
    :cond_115
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3836
    :cond_11a
    :goto_11a
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v9, v1, v2, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3837
    invoke-virtual {v5, p1, v3, v4, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3838
    add-int/2addr v1, v2

    .line 3840
    :goto_125
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3841
    goto/16 :goto_1da

    .line 3819
    :pswitch_12a
    move-object/from16 v9, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1da

    .line 3820
    invoke-static {v9, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3821
    iget-wide v9, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v12, 0x0

    cmp-long v2, v9, v12

    if-eqz v2, :cond_13f

    goto :goto_140

    :cond_13f
    const/4 v11, 0x0

    :goto_140
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3822
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1da

    .line 3812
    :pswitch_14c
    move-object/from16 v9, p2

    move/from16 v1, p3

    if-ne v2, v10, :cond_1da

    .line 3813
    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3814
    add-int/lit8 v1, v1, 0x4

    .line 3815
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1da

    .line 3804
    :pswitch_164
    move-object/from16 v9, p2

    move/from16 v1, p3

    if-ne v2, v11, :cond_1da

    .line 3805
    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3806
    add-int/lit8 v1, v1, 0x8

    .line 3807
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1da

    .line 3796
    :pswitch_17b
    move-object/from16 v9, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1da

    .line 3797
    invoke-static {v9, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3798
    iget v2, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3799
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1da

    .line 3788
    :pswitch_194
    move-object/from16 v9, p2

    move/from16 v1, p3

    move-object/from16 v13, p13

    if-nez v2, :cond_1da

    .line 3789
    invoke-static {v9, v1, v13}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 3790
    iget-wide v9, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3791
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1da

    .line 3780
    :pswitch_1ad
    move-object/from16 v9, p2

    move/from16 v1, p3

    if-ne v2, v10, :cond_1da

    .line 3781
    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3782
    add-int/lit8 v1, v1, 0x4

    .line 3783
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1da

    .line 3773
    :pswitch_1c4
    move-object/from16 v9, p2

    move/from16 v1, p3

    if-ne v2, v11, :cond_1da

    .line 3774
    invoke-static/range {p2 .. p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3775
    add-int/lit8 v1, v1, 0x8

    .line 3776
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3906
    :cond_1da
    :goto_1da
    return v1

    nop

    :pswitch_data_1dc
    .packed-switch 0x33
        :pswitch_1c4
        :pswitch_1ad
        :pswitch_194
        :pswitch_194
        :pswitch_17b
        :pswitch_164
        :pswitch_14c
        :pswitch_12a
        :pswitch_f0
        :pswitch_cf
        :pswitch_b9
        :pswitch_17b
        :pswitch_83
        :pswitch_14c
        :pswitch_164
        :pswitch_65
        :pswitch_47
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3576
    move/from16 v1, p8

    move-wide/from16 v2, p12

    sget-object v4, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 3577
    invoke-interface {v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_27

    .line 3578
    invoke-interface {v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v5

    .line 3579
    nop

    .line 3581
    if-nez v5, :cond_1d

    const/16 v5, 0xa

    goto :goto_1e

    :cond_1d
    mul-int/2addr v5, v6

    .line 3580
    :goto_1e
    invoke-interface {v4, v5}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v4

    .line 3582
    sget-object v5, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3584
    :cond_27
    const/4 v2, 0x5

    const/4 v3, 0x1

    packed-switch p11, :pswitch_data_1d0

    goto/16 :goto_1cf

    .line 3710
    :pswitch_2e
    const/4 p1, 0x3

    if-ne p7, p1, :cond_1cf

    .line 3711
    nop

    .line 3713
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object p6

    .line 3712
    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move p7, p5

    move-object/from16 p12, p14

    move-object/from16 p11, v4

    invoke-static/range {p6 .. p12}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3703
    :pswitch_47
    move-object/from16 v7, p14

    move-object p1, v4

    if-ne p7, v6, :cond_52

    .line 3704
    invoke-static {p2, p3, p1, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3705
    :cond_52
    if-nez p7, :cond_1cf

    .line 3706
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3695
    :pswitch_64
    move-object/from16 v7, p14

    move-object p1, v4

    if-ne p7, v6, :cond_6f

    .line 3696
    invoke-static {p2, p3, p1, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3697
    :cond_6f
    if-nez p7, :cond_1cf

    .line 3698
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3678
    :pswitch_81
    move-object/from16 v7, p14

    move-object v2, v4

    if-ne p7, v6, :cond_8c

    .line 3679
    invoke-static {p2, p3, v2, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    move p3, p2

    goto :goto_99

    .line 3680
    :cond_8c
    if-nez p7, :cond_1cf

    .line 3681
    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v2

    move v2, p5

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    move-object v2, v6

    move p3, p2

    .line 3685
    :goto_99
    nop

    .line 3689
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object p2

    iget-object p4, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 3685
    const/4 p5, 0x0

    move-object p7, p1

    move-object/from16 p10, p2

    move-object/from16 p12, p4

    move-object/from16 p11, p5

    move/from16 p8, p6

    move-object/from16 p9, v2

    invoke-static/range {p7 .. p12}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 3692
    goto/16 :goto_1cf

    .line 3672
    :pswitch_b1
    move-object p1, v4

    if-ne p7, v6, :cond_1cf

    .line 3673
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytesList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3659
    :pswitch_c4
    move-object p1, v4

    if-ne p7, v6, :cond_1cf

    .line 3660
    nop

    .line 3662
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object p6

    .line 3661
    move-object/from16 p11, p1

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move p7, p5

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3650
    :pswitch_dd
    move-object p1, v4

    if-ne p7, v6, :cond_1cf

    .line 3651
    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v2, 0x0

    cmp-long p6, v0, v2

    if-nez p6, :cond_fb

    .line 3652
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3654
    :cond_fb
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3643
    :pswitch_10b
    move-object/from16 v7, p14

    move-object p1, v4

    if-ne p7, v6, :cond_116

    .line 3644
    invoke-static {p2, p3, p1, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3645
    :cond_116
    if-nez p7, :cond_1cf

    .line 3646
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBoolList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3635
    :pswitch_128
    move-object/from16 v7, p14

    move-object p1, v4

    if-ne p7, v6, :cond_133

    .line 3636
    invoke-static {p2, p3, p1, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3637
    :cond_133
    if-ne p7, v2, :cond_1cf

    .line 3638
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3625
    :pswitch_145
    move-object/from16 v7, p14

    move-object v2, v4

    if-ne p7, v6, :cond_150

    .line 3626
    invoke-static {p2, p3, v2, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3627
    :cond_150
    if-ne p7, v3, :cond_1cf

    .line 3628
    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v2

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3615
    :pswitch_162
    move-object/from16 v7, p14

    move-object p1, v4

    if-ne p7, v6, :cond_16d

    .line 3616
    invoke-static {p2, p3, p1, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3617
    :cond_16d
    if-nez p7, :cond_1cf

    .line 3618
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto/16 :goto_1cf

    .line 3605
    :pswitch_17f
    move-object/from16 v7, p14

    move-object p1, v4

    if-ne p7, v6, :cond_189

    .line 3606
    invoke-static {p2, p3, p1, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_1cf

    .line 3607
    :cond_189
    if-nez p7, :cond_1cf

    .line 3608
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_1cf

    .line 3595
    :pswitch_19a
    move-object/from16 v7, p14

    move-object p1, v4

    if-ne p7, v6, :cond_1a4

    .line 3596
    invoke-static {p2, p3, p1, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_1cf

    .line 3597
    :cond_1a4
    if-ne p7, v2, :cond_1cf

    .line 3598
    move-object/from16 p10, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloatList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_1cf

    .line 3587
    :pswitch_1b5
    move-object/from16 v7, p14

    move-object v2, v4

    if-ne p7, v6, :cond_1bf

    .line 3588
    invoke-static {p2, p3, v2, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_1cf

    .line 3589
    :cond_1bf
    if-ne p7, v3, :cond_1cf

    .line 3590
    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v2

    move-object/from16 p11, v7

    invoke-static/range {p6 .. p11}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 3725
    :cond_1cf
    :goto_1cf
    return p3

    :pswitch_data_1d0
    .packed-switch 0x12
        :pswitch_1b5
        :pswitch_19a
        :pswitch_17f
        :pswitch_17f
        :pswitch_162
        :pswitch_145
        :pswitch_128
        :pswitch_10b
        :pswitch_dd
        :pswitch_c4
        :pswitch_b1
        :pswitch_162
        :pswitch_81
        :pswitch_128
        :pswitch_145
        :pswitch_64
        :pswitch_47
        :pswitch_1b5
        :pswitch_19a
        :pswitch_17f
        :pswitch_17f
        :pswitch_162
        :pswitch_145
        :pswitch_128
        :pswitch_10b
        :pswitch_162
        :pswitch_81
        :pswitch_128
        :pswitch_145
        :pswitch_64
        :pswitch_47
        :pswitch_2e
    .end packed-switch
.end method

.method private blacklist positionForFieldNumber(I)I
    .registers 3

    .line 4848
    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_e

    .line 4849
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    .line 4851
    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist positionForFieldNumber(II)I
    .registers 4

    .line 4855
    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/android/framework/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_d

    .line 4856
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    .line 4858
    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist presenceMaskAndOffsetAt(I)I
    .registers 3

    .line 4660
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private blacklist readGroupList(Ljava/lang/Object;JLcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/Schema<",
            "TE;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4647
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 4648
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 4647
    invoke-interface {p4, p1, p5, p6}, Lcom/android/framework/protobuf/Reader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 4649
    return-void
.end method

.method private blacklist readMessageList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/Schema<",
            "TE;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4635
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 4636
    iget-object p2, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 4637
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 4636
    invoke-interface {p3, p1, p4, p5}, Lcom/android/framework/protobuf/Reader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 4638
    return-void
.end method

.method private blacklist readString(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4605
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4607
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 4608
    :cond_12
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_22

    .line 4611
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 4615
    :cond_22
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4617
    :goto_2d
    return-void
.end method

.method private blacklist readStringList(Ljava/lang/Object;ILcom/android/framework/protobuf/Reader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4620
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4621
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    .line 4622
    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 4621
    invoke-interface {p3, p1}, Lcom/android/framework/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    goto :goto_21

    .line 4624
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/framework/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/framework/protobuf/Reader;->readStringList(Ljava/util/List;)V

    .line 4626
    :goto_21
    return-void
.end method

.method private static blacklist reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 602
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 603
    :catch_5
    move-exception v0

    .line 606
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 607
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 608
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 609
    return-object v3

    .line 607
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 615
    :cond_1e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 619
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found. Known fields are "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 621
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist setFieldPresent(Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 4819
    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p2

    .line 4820
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    .line 4821
    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 4822
    return-void

    .line 4824
    :cond_11
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    .line 4825
    nop

    .line 4828
    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 4825
    invoke-static {p1, v0, v1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4829
    return-void
.end method

.method private blacklist setOneofPresent(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 4843
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    .line 4844
    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4845
    return-void
.end method

.method private blacklist slowPositionForFieldNumber(II)I
    .registers 7

    .line 4862
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 4863
    :goto_7
    if-gt p2, v0, :cond_20

    .line 4865
    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 4866
    mul-int/lit8 v2, v1, 0x3

    .line 4867
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 4868
    if-ne p1, v3, :cond_16

    .line 4870
    return v2

    .line 4872
    :cond_16
    if-ge p1, v3, :cond_1c

    .line 4874
    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_1f

    .line 4877
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    .line 4879
    :goto_1f
    goto :goto_7

    .line 4880
    :cond_20
    const/4 p1, -0x1

    return p1
.end method

.method private static blacklist storeFieldData(Lcom/android/framework/protobuf/FieldInfo;[II[Ljava/lang/Object;)V
    .registers 12

    .line 740
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getOneof()Lcom/android/framework/protobuf/OneofInfo;

    move-result-object v0

    .line 741
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 742
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    .line 743
    invoke-virtual {v0}, Lcom/android/framework/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 744
    invoke-virtual {v0}, Lcom/android/framework/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 745
    move v4, v1

    goto :goto_6e

    .line 747
    :cond_25
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getType()Lcom/android/framework/protobuf/FieldType;

    move-result-object v0

    .line 748
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    .line 749
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v2

    .line 750
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldType;->isMap()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 751
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 752
    if-nez v0, :cond_4c

    .line 753
    const v0, 0xfffff

    goto :goto_51

    .line 755
    :cond_4c
    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 757
    :goto_51
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getPresenceMask()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    .line 758
    goto :goto_6e

    .line 759
    :cond_5a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_64

    .line 760
    nop

    .line 761
    move v0, v1

    move v4, v0

    goto :goto_6e

    .line 763
    :cond_64
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 764
    move v4, v1

    .line 769
    :goto_6e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    .line 770
    add-int/lit8 v5, p2, 0x1

    .line 771
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    if-eqz v6, :cond_7f

    const/high16 v6, 0x20000000

    goto :goto_80

    :cond_7f
    move v6, v1

    .line 772
    :goto_80
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->isRequired()Z

    move-result v7

    if-eqz v7, :cond_88

    const/high16 v1, 0x10000000

    :cond_88
    or-int/2addr v1, v6

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    aput v1, p1, v5

    .line 775
    add-int/lit8 v1, p2, 0x2

    shl-int/lit8 v2, v4, 0x14

    or-int/2addr v0, v2

    aput v0, p1, v1

    .line 777
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object p1

    .line 778
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 779
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p2

    .line 780
    if-eqz p1, :cond_b1

    .line 781
    add-int/lit8 p2, p2, 0x1

    aput-object p1, p3, p2

    goto :goto_dd

    .line 782
    :cond_b1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object p1

    if-eqz p1, :cond_dd

    .line 783
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object p0

    aput-object p0, p3, p2

    goto :goto_dd

    .line 786
    :cond_c0
    if-eqz p1, :cond_cb

    .line 787
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    aput-object p1, p3, p2

    goto :goto_dd

    .line 788
    :cond_cb
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object p1

    if-eqz p1, :cond_dd

    .line 789
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldInfo;->getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object p0

    aput-object p0, p3, p2

    .line 792
    :cond_dd
    :goto_dd
    return-void
.end method

.method private blacklist storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4269
    sget-object v0, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4270
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4271
    return-void
.end method

.method private blacklist storeOneofMessageField(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 4296
    sget-object v0, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    .line 4298
    return-void
.end method

.method private static blacklist type(I)I
    .registers 2

    .line 4664
    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private blacklist typeAndOffsetAt(I)I
    .registers 3

    .line 4656
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private blacklist writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2079
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 2080
    nop

    .line 2081
    iget-boolean v2, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_23

    .line 2082
    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v2

    .line 2083
    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 2084
    invoke-virtual {v2}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2085
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v8, v2

    goto :goto_25

    .line 2089
    :cond_23
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_25
    nop

    .line 2090
    nop

    .line 2091
    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v9, v2

    .line 2092
    sget-object v10, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 2093
    const v11, 0xfffff

    move v4, v11

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_32
    if-ge v2, v9, :cond_5cb

    .line 2094
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v13

    .line 2095
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v14

    .line 2096
    invoke-static {v13}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v15

    .line 2098
    nop

    .line 2099
    const/16 v7, 0x11

    if-gt v15, v7, :cond_69

    .line 2100
    iget-object v7, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v16, v2, 0x2

    aget v7, v7, v16

    .line 2101
    const/16 v16, 0x1

    and-int v12, v7, v11

    .line 2107
    if-eq v12, v4, :cond_5d

    .line 2108
    nop

    .line 2110
    if-ne v12, v11, :cond_56

    .line 2111
    const/4 v5, 0x0

    goto :goto_5c

    .line 2112
    :cond_56
    int-to-long v4, v12

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v5, v4

    :goto_5c
    move v4, v12

    .line 2115
    :cond_5d
    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v16, v7

    move/from16 v17, v7

    move-object v7, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v17

    goto :goto_6f

    .line 2099
    :cond_69
    const/16 v16, 0x1

    move-object v7, v3

    move v3, v4

    move v4, v5

    const/4 v5, 0x0

    .line 2119
    :goto_6f
    if-eqz v7, :cond_8d

    iget-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v12, v7}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v12

    if-gt v12, v14, :cond_8d

    .line 2120
    iget-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v12, v6, v7}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2121
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    goto :goto_6f

    :cond_8b
    const/4 v7, 0x0

    goto :goto_6f

    .line 2123
    :cond_8d
    invoke-static {v13}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    .line 2125
    packed-switch v15, :pswitch_data_5e8

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2463
    :pswitch_97
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 2464
    nop

    .line 2465
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    .line 2464
    invoke-interface {v6, v14, v5, v12}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2463
    :cond_ac
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2458
    :pswitch_af
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 2459
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2458
    :cond_bf
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2453
    :pswitch_c2
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 2454
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2453
    :cond_d2
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2448
    :pswitch_d5
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 2449
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2448
    :cond_e5
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2443
    :pswitch_e8
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 2444
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2443
    :cond_f8
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2438
    :pswitch_fb
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 2439
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2438
    :cond_10b
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2433
    :pswitch_10e
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 2434
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2433
    :cond_11e
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2428
    :pswitch_121
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 2429
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2428
    :cond_133
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2422
    :pswitch_136
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 2423
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2424
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-interface {v6, v14, v5, v12}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 2425
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2422
    :cond_14a
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2417
    :pswitch_14d
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 2418
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2417
    :cond_15d
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2412
    :pswitch_160
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 2413
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2412
    :cond_170
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2407
    :pswitch_173
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_183

    .line 2408
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2407
    :cond_183
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2402
    :pswitch_186
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_196

    .line 2403
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2402
    :cond_196
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2397
    :pswitch_199
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 2398
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2397
    :cond_1a9
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2392
    :pswitch_1ac
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1bc

    .line 2393
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2392
    :cond_1bc
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2387
    :pswitch_1bf
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1cf

    .line 2388
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2387
    :cond_1cf
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2382
    :pswitch_1d2
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 2383
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v6, v14, v5}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2382
    :cond_1e2
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2377
    :pswitch_1e5
    invoke-direct {v0, v1, v14, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1f5

    .line 2378
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2377
    :cond_1f5
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2374
    :pswitch_1f8
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v6, v14, v5, v2}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    .line 2375
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2366
    :pswitch_202
    nop

    .line 2367
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2368
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2370
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v13

    .line 2366
    invoke-static {v5, v12, v6, v13}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    .line 2371
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2362
    :pswitch_217
    nop

    .line 2363
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2362
    move/from16 v14, v16

    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2364
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2358
    :pswitch_22a
    move/from16 v14, v16

    .line 2359
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2358
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2360
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2354
    :pswitch_23c
    move/from16 v14, v16

    .line 2355
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2354
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2356
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2350
    :pswitch_24e
    move/from16 v14, v16

    .line 2351
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2350
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2352
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2346
    :pswitch_260
    move/from16 v14, v16

    .line 2347
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2346
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2348
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2342
    :pswitch_272
    move/from16 v14, v16

    .line 2343
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2342
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2344
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2338
    :pswitch_284
    move/from16 v14, v16

    .line 2339
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2338
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2340
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2333
    :pswitch_296
    move/from16 v14, v16

    .line 2334
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2333
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2336
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2329
    :pswitch_2a8
    move/from16 v14, v16

    .line 2330
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2329
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2331
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2325
    :pswitch_2ba
    move/from16 v14, v16

    .line 2326
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2325
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2327
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2321
    :pswitch_2cc
    move/from16 v14, v16

    .line 2322
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2321
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2323
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2317
    :pswitch_2de
    move/from16 v14, v16

    .line 2318
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2317
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2319
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2313
    :pswitch_2f0
    move/from16 v14, v16

    .line 2314
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2313
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2315
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2309
    :pswitch_302
    move/from16 v14, v16

    .line 2310
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2309
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2311
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2304
    :pswitch_314
    nop

    .line 2305
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2304
    const/4 v14, 0x0

    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2306
    move v15, v14

    goto/16 :goto_5c4

    .line 2300
    :pswitch_326
    const/4 v14, 0x0

    .line 2301
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2300
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2302
    move v15, v14

    goto/16 :goto_5c4

    .line 2296
    :pswitch_337
    const/4 v14, 0x0

    .line 2297
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2296
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2298
    move v15, v14

    goto/16 :goto_5c4

    .line 2292
    :pswitch_348
    const/4 v14, 0x0

    .line 2293
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2292
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2294
    move v15, v14

    goto/16 :goto_5c4

    .line 2288
    :pswitch_359
    const/4 v14, 0x0

    .line 2289
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2288
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2290
    move v15, v14

    goto/16 :goto_5c4

    .line 2284
    :pswitch_36a
    const/4 v14, 0x0

    .line 2285
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2284
    invoke-static {v5, v12, v6, v14}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2286
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2280
    :pswitch_37b
    nop

    .line 2281
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2280
    invoke-static {v5, v12, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    .line 2282
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2273
    :pswitch_38c
    nop

    .line 2274
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2275
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2277
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v13

    .line 2273
    invoke-static {v5, v12, v6, v13}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    .line 2278
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2269
    :pswitch_3a1
    nop

    .line 2270
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2269
    invoke-static {v5, v12, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    .line 2271
    const/4 v15, 0x0

    goto/16 :goto_5c4

    .line 2265
    :pswitch_3b2
    nop

    .line 2266
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2265
    const/4 v15, 0x0

    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2267
    goto/16 :goto_5c4

    .line 2261
    :pswitch_3c3
    const/4 v15, 0x0

    .line 2262
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2261
    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2263
    goto/16 :goto_5c4

    .line 2257
    :pswitch_3d3
    const/4 v15, 0x0

    .line 2258
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2257
    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2259
    goto/16 :goto_5c4

    .line 2253
    :pswitch_3e3
    const/4 v15, 0x0

    .line 2254
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2253
    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2255
    goto/16 :goto_5c4

    .line 2249
    :pswitch_3f3
    const/4 v15, 0x0

    .line 2250
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2249
    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2251
    goto/16 :goto_5c4

    .line 2245
    :pswitch_403
    const/4 v15, 0x0

    .line 2246
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2245
    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2247
    goto/16 :goto_5c4

    .line 2241
    :pswitch_413
    const/4 v15, 0x0

    .line 2242
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2241
    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2243
    goto/16 :goto_5c4

    .line 2237
    :pswitch_423
    const/4 v15, 0x0

    .line 2238
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 2237
    invoke-static {v5, v12, v6, v15}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2239
    goto/16 :goto_5c4

    .line 2230
    :pswitch_433
    const/4 v15, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5c4

    .line 2232
    nop

    .line 2233
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    .line 2232
    invoke-interface {v6, v14, v5, v12}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5c4

    .line 2224
    :pswitch_448
    const/4 v15, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_45a

    .line 2226
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2224
    :cond_45a
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2218
    :pswitch_45e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_472

    .line 2220
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2218
    :cond_472
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2212
    :pswitch_476
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_48a

    .line 2214
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2212
    :cond_48a
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2206
    :pswitch_48e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4a2

    .line 2208
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2206
    :cond_4a2
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2200
    :pswitch_4a6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4ba

    .line 2202
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2200
    :cond_4ba
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2194
    :pswitch_4be
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4d2

    .line 2196
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2194
    :cond_4d2
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2188
    :pswitch_4d6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4ec

    .line 2190
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2188
    :cond_4ec
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2181
    :pswitch_4f0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5c4

    .line 2183
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2184
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v12

    invoke-interface {v6, v14, v5, v12}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 2185
    goto/16 :goto_5c4

    .line 2175
    :pswitch_506
    const/4 v15, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5c4

    .line 2177
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v14, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5c4

    .line 2169
    :pswitch_516
    const/4 v15, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_528

    .line 2171
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2169
    :cond_528
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2163
    :pswitch_52c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_540

    .line 2165
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2163
    :cond_540
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2157
    :pswitch_544
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_558

    .line 2159
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2157
    :cond_558
    move-object/from16 v0, p0

    goto/16 :goto_5c4

    .line 2151
    :pswitch_55c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_56f

    .line 2153
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2151
    :cond_56f
    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2145
    :pswitch_572
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_585

    .line 2147
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2145
    :cond_585
    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2139
    :pswitch_588
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_59b

    .line 2141
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2139
    :cond_59b
    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2133
    :pswitch_59e
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5b1

    .line 2135
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v6, v14, v0}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2133
    :cond_5b1
    move-object/from16 v0, p0

    goto :goto_5c4

    .line 2127
    :pswitch_5b4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5c4

    .line 2129
    invoke-static {v1, v12, v13}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-interface {v6, v14, v12, v13}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    .line 2093
    :cond_5c4
    :goto_5c4
    add-int/lit8 v2, v2, 0x3

    move v5, v4

    move v4, v3

    move-object v3, v7

    goto/16 :goto_32

    .line 2473
    :cond_5cb
    :goto_5cb
    if-eqz v3, :cond_5e2

    .line 2474
    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v2, v6, v3}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2475
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v3, v2

    goto :goto_5cb

    :cond_5e0
    const/4 v3, 0x0

    goto :goto_5cb

    .line 2477
    :cond_5e2
    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v2, v1, v6}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2478
    return-void

    :pswitch_data_5e8
    .packed-switch 0x0
        :pswitch_5b4
        :pswitch_59e
        :pswitch_588
        :pswitch_572
        :pswitch_55c
        :pswitch_544
        :pswitch_52c
        :pswitch_516
        :pswitch_506
        :pswitch_4f0
        :pswitch_4d6
        :pswitch_4be
        :pswitch_4a6
        :pswitch_48e
        :pswitch_476
        :pswitch_45e
        :pswitch_448
        :pswitch_433
        :pswitch_423
        :pswitch_413
        :pswitch_403
        :pswitch_3f3
        :pswitch_3e3
        :pswitch_3d3
        :pswitch_3c3
        :pswitch_3b2
        :pswitch_3a1
        :pswitch_38c
        :pswitch_37b
        :pswitch_36a
        :pswitch_359
        :pswitch_348
        :pswitch_337
        :pswitch_326
        :pswitch_314
        :pswitch_302
        :pswitch_2f0
        :pswitch_2de
        :pswitch_2cc
        :pswitch_2ba
        :pswitch_2a8
        :pswitch_296
        :pswitch_284
        :pswitch_272
        :pswitch_260
        :pswitch_24e
        :pswitch_23c
        :pswitch_22a
        :pswitch_217
        :pswitch_202
        :pswitch_1f8
        :pswitch_1e5
        :pswitch_1d2
        :pswitch_1bf
        :pswitch_1ac
        :pswitch_199
        :pswitch_186
        :pswitch_173
        :pswitch_160
        :pswitch_14d
        :pswitch_136
        :pswitch_121
        :pswitch_10e
        :pswitch_fb
        :pswitch_e8
        :pswitch_d5
        :pswitch_c2
        :pswitch_af
        :pswitch_97
    .end packed-switch
.end method

.method private blacklist writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2482
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2484
    nop

    .line 2485
    nop

    .line 2486
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2487
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 2488
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2489
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2490
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_25

    .line 2494
    :cond_23
    move-object v0, v1

    move-object v2, v0

    :goto_25
    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    :goto_2a
    if-ltz v3, :cond_5b2

    .line 2495
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    .line 2496
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2499
    :goto_34
    if-eqz v2, :cond_52

    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, v2}, Lcom/android/framework/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_52

    .line 2500
    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v2}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2501
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_34

    :cond_50
    move-object v2, v1

    goto :goto_34

    .line 2504
    :cond_52
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_5ca

    goto/16 :goto_5ae

    .line 2915
    :pswitch_5d
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2916
    nop

    .line 2918
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2919
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 2916
    invoke-interface {p2, v5, v4, v6}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ae

    .line 2910
    :pswitch_75
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2911
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ae

    .line 2905
    :pswitch_88
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2906
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ae

    .line 2900
    :pswitch_9b
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2901
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ae

    .line 2895
    :pswitch_ae
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2896
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ae

    .line 2890
    :pswitch_c1
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2891
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ae

    .line 2885
    :pswitch_d4
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2886
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ae

    .line 2879
    :pswitch_e7
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2880
    nop

    .line 2881
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    .line 2880
    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5ae

    .line 2873
    :pswitch_fd
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2874
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2875
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 2876
    goto/16 :goto_5ae

    .line 2868
    :pswitch_114
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2869
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ae

    .line 2863
    :pswitch_127
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2864
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ae

    .line 2858
    :pswitch_13a
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2859
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_5ae

    .line 2853
    :pswitch_14d
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2854
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_5ae

    .line 2848
    :pswitch_160
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2849
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_5ae

    .line 2843
    :pswitch_173
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2844
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_5ae

    .line 2838
    :pswitch_186
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2839
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_5ae

    .line 2833
    :pswitch_199
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2834
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_5ae

    .line 2828
    :pswitch_1ac
    invoke-direct {p0, p1, v5, v3}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2829
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_5ae

    .line 2825
    :pswitch_1bf
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v5, v4, v3}, Lcom/android/framework/protobuf/MessageSchema;->writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V

    .line 2826
    goto/16 :goto_5ae

    .line 2817
    :pswitch_1cc
    nop

    .line 2818
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2819
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2821
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 2817
    invoke-static {v5, v4, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    .line 2822
    goto/16 :goto_5ae

    .line 2810
    :pswitch_1e4
    nop

    .line 2811
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2812
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2810
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2815
    goto/16 :goto_5ae

    .line 2803
    :pswitch_1f8
    nop

    .line 2804
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2805
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2803
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2808
    goto/16 :goto_5ae

    .line 2796
    :pswitch_20c
    nop

    .line 2797
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2798
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2796
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2801
    goto/16 :goto_5ae

    .line 2789
    :pswitch_220
    nop

    .line 2790
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2791
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2789
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2794
    goto/16 :goto_5ae

    .line 2782
    :pswitch_234
    nop

    .line 2783
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2784
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2782
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2787
    goto/16 :goto_5ae

    .line 2775
    :pswitch_248
    nop

    .line 2776
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2777
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2775
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2780
    goto/16 :goto_5ae

    .line 2768
    :pswitch_25c
    nop

    .line 2769
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2770
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2768
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2773
    goto/16 :goto_5ae

    .line 2760
    :pswitch_270
    nop

    .line 2761
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2762
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2760
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2766
    goto/16 :goto_5ae

    .line 2753
    :pswitch_284
    nop

    .line 2754
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2755
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2753
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2758
    goto/16 :goto_5ae

    .line 2746
    :pswitch_298
    nop

    .line 2747
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2748
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2746
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2751
    goto/16 :goto_5ae

    .line 2739
    :pswitch_2ac
    nop

    .line 2740
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2741
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2739
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2744
    goto/16 :goto_5ae

    .line 2732
    :pswitch_2c0
    nop

    .line 2733
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2734
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2732
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2737
    goto/16 :goto_5ae

    .line 2725
    :pswitch_2d4
    nop

    .line 2726
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2727
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2725
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2730
    goto/16 :goto_5ae

    .line 2718
    :pswitch_2e8
    nop

    .line 2719
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2720
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2718
    invoke-static {v5, v4, p2, v7}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2723
    goto/16 :goto_5ae

    .line 2711
    :pswitch_2fc
    nop

    .line 2712
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2713
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2711
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2716
    goto/16 :goto_5ae

    .line 2704
    :pswitch_310
    nop

    .line 2705
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2706
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2704
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2709
    goto/16 :goto_5ae

    .line 2697
    :pswitch_324
    nop

    .line 2698
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2699
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2697
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2702
    goto/16 :goto_5ae

    .line 2690
    :pswitch_338
    nop

    .line 2691
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2692
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2690
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2695
    goto/16 :goto_5ae

    .line 2683
    :pswitch_34c
    nop

    .line 2684
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2685
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2683
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2688
    goto/16 :goto_5ae

    .line 2676
    :pswitch_360
    nop

    .line 2677
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2678
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2676
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2681
    goto/16 :goto_5ae

    .line 2670
    :pswitch_374
    nop

    .line 2671
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2672
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2670
    invoke-static {v5, v4, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    .line 2674
    goto/16 :goto_5ae

    .line 2663
    :pswitch_388
    nop

    .line 2664
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2665
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2667
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 2663
    invoke-static {v5, v4, p2, v6}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    .line 2668
    goto/16 :goto_5ae

    .line 2657
    :pswitch_3a0
    nop

    .line 2658
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2659
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2657
    invoke-static {v5, v4, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    .line 2661
    goto/16 :goto_5ae

    .line 2650
    :pswitch_3b4
    nop

    .line 2651
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2652
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2650
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2655
    goto/16 :goto_5ae

    .line 2643
    :pswitch_3c8
    nop

    .line 2644
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2645
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2643
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2648
    goto/16 :goto_5ae

    .line 2636
    :pswitch_3dc
    nop

    .line 2637
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2638
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2636
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2641
    goto/16 :goto_5ae

    .line 2629
    :pswitch_3f0
    nop

    .line 2630
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2631
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2629
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2634
    goto/16 :goto_5ae

    .line 2622
    :pswitch_404
    nop

    .line 2623
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2624
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2622
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2627
    goto/16 :goto_5ae

    .line 2615
    :pswitch_418
    nop

    .line 2616
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2617
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2615
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2620
    goto/16 :goto_5ae

    .line 2608
    :pswitch_42c
    nop

    .line 2609
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2610
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2608
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2613
    goto/16 :goto_5ae

    .line 2601
    :pswitch_440
    nop

    .line 2602
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 2603
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2601
    invoke-static {v5, v4, p2, v8}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 2606
    goto/16 :goto_5ae

    .line 2593
    :pswitch_454
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2594
    nop

    .line 2596
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2597
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    .line 2594
    invoke-interface {p2, v5, v4, v6}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_5ae

    .line 2588
    :pswitch_46c
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2589
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_5ae

    .line 2583
    :pswitch_47f
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2584
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_5ae

    .line 2578
    :pswitch_492
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2579
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_5ae

    .line 2573
    :pswitch_4a5
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2574
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_5ae

    .line 2568
    :pswitch_4b8
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2569
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_5ae

    .line 2563
    :pswitch_4cb
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2564
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_5ae

    .line 2557
    :pswitch_4de
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2558
    nop

    .line 2559
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/ByteString;

    .line 2558
    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_5ae

    .line 2551
    :pswitch_4f4
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2552
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2553
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 2554
    goto/16 :goto_5ae

    .line 2546
    :pswitch_50b
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2547
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto/16 :goto_5ae

    .line 2541
    :pswitch_51e
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2542
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_5ae

    .line 2536
    :pswitch_531
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2537
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    goto :goto_5ae

    .line 2531
    :pswitch_543
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2532
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_5ae

    .line 2526
    :pswitch_555
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2527
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    goto :goto_5ae

    .line 2521
    :pswitch_567
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2522
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_5ae

    .line 2516
    :pswitch_579
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2517
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_5ae

    .line 2511
    :pswitch_58b
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2512
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    goto :goto_5ae

    .line 2506
    :pswitch_59d
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_5ae

    .line 2507
    invoke-static {v4}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/android/framework/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    .line 2494
    :cond_5ae
    :goto_5ae
    add-int/lit8 v3, v3, -0x3

    goto/16 :goto_2a

    .line 2926
    :cond_5b2
    :goto_5b2
    if-eqz v2, :cond_5c9

    .line 2927
    iget-object p1, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {p1, p2, v2}, Lcom/android/framework/protobuf/ExtensionSchema;->serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2928
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v2, p1

    goto :goto_5b2

    :cond_5c7
    move-object v2, v1

    goto :goto_5b2

    .line 2930
    :cond_5c9
    return-void

    :pswitch_data_5ca
    .packed-switch 0x0
        :pswitch_59d
        :pswitch_58b
        :pswitch_579
        :pswitch_567
        :pswitch_555
        :pswitch_543
        :pswitch_531
        :pswitch_51e
        :pswitch_50b
        :pswitch_4f4
        :pswitch_4de
        :pswitch_4cb
        :pswitch_4b8
        :pswitch_4a5
        :pswitch_492
        :pswitch_47f
        :pswitch_46c
        :pswitch_454
        :pswitch_440
        :pswitch_42c
        :pswitch_418
        :pswitch_404
        :pswitch_3f0
        :pswitch_3dc
        :pswitch_3c8
        :pswitch_3b4
        :pswitch_3a0
        :pswitch_388
        :pswitch_374
        :pswitch_360
        :pswitch_34c
        :pswitch_338
        :pswitch_324
        :pswitch_310
        :pswitch_2fc
        :pswitch_2e8
        :pswitch_2d4
        :pswitch_2c0
        :pswitch_2ac
        :pswitch_298
        :pswitch_284
        :pswitch_270
        :pswitch_25c
        :pswitch_248
        :pswitch_234
        :pswitch_220
        :pswitch_20c
        :pswitch_1f8
        :pswitch_1e4
        :pswitch_1cc
        :pswitch_1bf
        :pswitch_1ac
        :pswitch_199
        :pswitch_186
        :pswitch_173
        :pswitch_160
        :pswitch_14d
        :pswitch_13a
        :pswitch_127
        :pswitch_114
        :pswitch_fd
        :pswitch_e7
        :pswitch_d4
        :pswitch_c1
        :pswitch_ae
        :pswitch_9b
        :pswitch_88
        :pswitch_75
        :pswitch_5d
    .end packed-switch
.end method

.method private blacklist writeMapHelper(Lcom/android/framework/protobuf/Writer;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2935
    if-eqz p3, :cond_15

    .line 2936
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 2938
    invoke-direct {p0, p4}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object p4

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 2939
    invoke-interface {v0, p3}, Lcom/android/framework/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2936
    invoke-interface {p1, p2, p4, p3}, Lcom/android/framework/protobuf/Writer;->writeMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 2941
    :cond_15
    return-void
.end method

.method private blacklist writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4597
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 4598
    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    goto :goto_f

    .line 4600
    :cond_a
    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p3, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 4602
    :goto_f
    return-void
.end method

.method private blacklist writeUnknownInMessageTo(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2945
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2946
    return-void
.end method


# virtual methods
.method public blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 803
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_11

    .line 804
    invoke-direct {p0, p1, p2, v2}, Lcom/android/framework/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 805
    return v1

    .line 803
    :cond_e
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    .line 809
    :cond_11
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 810
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 811
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 812
    return v1

    .line 815
    :cond_24
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_39

    .line 816
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    .line 817
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p2

    .line 818
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 820
    :cond_39
    const/4 p1, 0x1

    return p1
.end method

.method blacklist getSchemaSize()I
    .registers 2

    .line 4884
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public blacklist getSerializedSize(Ljava/lang/Object;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1466
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1468
    sget-object v6, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 1469
    nop

    .line 1470
    nop

    .line 1471
    const/4 v7, 0x0

    const v8, 0xfffff

    move v2, v7

    move v4, v2

    move v9, v4

    move v3, v8

    :goto_10
    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v2, v5, :cond_6c4

    .line 1472
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 1473
    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v10

    .line 1474
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v11

    .line 1476
    nop

    .line 1477
    iget-object v12, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v13, v2, 0x2

    aget v12, v12, v13

    .line 1478
    and-int v13, v12, v8

    .line 1479
    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v10, v14, :cond_42

    .line 1484
    if-eq v13, v3, :cond_3d

    .line 1485
    nop

    .line 1487
    if-ne v13, v8, :cond_36

    .line 1488
    move v3, v7

    goto :goto_3b

    .line 1489
    :cond_36
    int-to-long v3, v13

    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :goto_3b
    move v4, v3

    move v3, v13

    .line 1492
    :cond_3d
    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v15, v12

    goto :goto_43

    .line 1479
    :cond_42
    move v12, v7

    .line 1495
    :goto_43
    move/from16 v16, v9

    invoke-static {v5}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    .line 1498
    sget-object v5, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 1497
    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v5

    if-lt v10, v5, :cond_5a

    sget-object v5, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 1498
    invoke-virtual {v5}, Lcom/android/framework/protobuf/FieldType;->id()I

    move-result v5

    if-gt v10, v5, :cond_5a

    .line 1499
    goto :goto_5b

    .line 1500
    :cond_5a
    move v13, v7

    .line 1502
    :goto_5b
    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    packed-switch v10, :pswitch_data_6de

    goto/16 :goto_6bb

    .line 2037
    :pswitch_63
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2038
    nop

    .line 2041
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/framework/protobuf/MessageLite;

    .line 2042
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    .line 2039
    invoke-static {v11, v5, v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 2032
    :pswitch_7c
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2033
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 2027
    :pswitch_8e
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2028
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 2022
    :pswitch_a0
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2023
    invoke-static {v11, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 2017
    :pswitch_ae
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2018
    invoke-static {v11, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 2012
    :pswitch_bc
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2013
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 2007
    :pswitch_ce
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2008
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 2000
    :pswitch_e0
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 2001
    nop

    .line 2003
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/framework/protobuf/ByteString;

    .line 2002
    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1994
    :pswitch_f5
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1995
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1996
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    invoke-static {v11, v5, v8}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v5

    add-int v9, v16, v5

    .line 1997
    goto/16 :goto_6bd

    .line 1984
    :pswitch_10b
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1985
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1986
    instance-of v8, v5, Lcom/android/framework/protobuf/ByteString;

    if-eqz v8, :cond_122

    .line 1987
    check-cast v5, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v5

    add-int v9, v16, v5

    goto :goto_12a

    .line 1989
    :cond_122
    check-cast v5, Ljava/lang/String;

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int v9, v16, v5

    .line 1991
    :goto_12a
    goto/16 :goto_6bd

    .line 1979
    :pswitch_12c
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1980
    const/4 v5, 0x1

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1974
    :pswitch_13b
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1975
    invoke-static {v11, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1969
    :pswitch_149
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1970
    invoke-static {v11, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1964
    :pswitch_157
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1965
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1959
    :pswitch_169
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1960
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1954
    :pswitch_17b
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1955
    invoke-static {v1, v8, v9}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1949
    :pswitch_18d
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_6bb

    .line 1950
    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1944
    :pswitch_19b
    invoke-direct {v0, v1, v11, v2}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1945
    const-wide/16 v8, 0x0

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1939
    :pswitch_1ab
    iget-object v5, v0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    .line 1941
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v9

    .line 1940
    invoke-interface {v5, v11, v8, v9}, Lcom/android/framework/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    add-int v9, v16, v5

    .line 1942
    goto/16 :goto_6bd

    .line 1931
    :pswitch_1bd
    nop

    .line 1934
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1935
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    .line 1932
    invoke-static {v11, v5, v8}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v5

    add-int v9, v16, v5

    .line 1936
    goto/16 :goto_6bd

    .line 1916
    :pswitch_1d0
    nop

    .line 1918
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1917
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1919
    if-lez v5, :cond_6bb

    .line 1920
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_1e5

    .line 1921
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1923
    :cond_1e5
    nop

    .line 1924
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1925
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1900
    :pswitch_1f4
    nop

    .line 1902
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1901
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1903
    if-lez v5, :cond_6bb

    .line 1904
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_209

    .line 1905
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1907
    :cond_209
    nop

    .line 1908
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1909
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1884
    :pswitch_218
    nop

    .line 1886
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1885
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1887
    if-lez v5, :cond_6bb

    .line 1888
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_22d

    .line 1889
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1891
    :cond_22d
    nop

    .line 1892
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1893
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1868
    :pswitch_23c
    nop

    .line 1870
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1869
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1871
    if-lez v5, :cond_6bb

    .line 1872
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_251

    .line 1873
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1875
    :cond_251
    nop

    .line 1876
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1877
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1852
    :pswitch_260
    nop

    .line 1854
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1853
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1855
    if-lez v5, :cond_6bb

    .line 1856
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_275

    .line 1857
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1859
    :cond_275
    nop

    .line 1860
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1861
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1836
    :pswitch_284
    nop

    .line 1838
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1837
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1839
    if-lez v5, :cond_6bb

    .line 1840
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_299

    .line 1841
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1843
    :cond_299
    nop

    .line 1844
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1845
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1820
    :pswitch_2a8
    nop

    .line 1822
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1821
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1823
    if-lez v5, :cond_6bb

    .line 1824
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_2bd

    .line 1825
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1827
    :cond_2bd
    nop

    .line 1828
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1829
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1804
    :pswitch_2cc
    nop

    .line 1806
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1805
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1807
    if-lez v5, :cond_6bb

    .line 1808
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_2e1

    .line 1809
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1811
    :cond_2e1
    nop

    .line 1812
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1813
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1788
    :pswitch_2f0
    nop

    .line 1790
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1789
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1791
    if-lez v5, :cond_6bb

    .line 1792
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_305

    .line 1793
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1795
    :cond_305
    nop

    .line 1796
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1797
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1772
    :pswitch_314
    nop

    .line 1774
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1773
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1775
    if-lez v5, :cond_6bb

    .line 1776
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_329

    .line 1777
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1779
    :cond_329
    nop

    .line 1780
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1781
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1756
    :pswitch_338
    nop

    .line 1758
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1757
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1759
    if-lez v5, :cond_6bb

    .line 1760
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_34d

    .line 1761
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1763
    :cond_34d
    nop

    .line 1764
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1765
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1740
    :pswitch_35c
    nop

    .line 1742
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1741
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1743
    if-lez v5, :cond_6bb

    .line 1744
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_371

    .line 1745
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1747
    :cond_371
    nop

    .line 1748
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1749
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1724
    :pswitch_380
    nop

    .line 1726
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1725
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1727
    if-lez v5, :cond_6bb

    .line 1728
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_395

    .line 1729
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1731
    :cond_395
    nop

    .line 1732
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1733
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1708
    :pswitch_3a4
    nop

    .line 1710
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1709
    invoke-static {v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v5

    .line 1711
    if-lez v5, :cond_6bb

    .line 1712
    iget-boolean v8, v0, Lcom/android/framework/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_3b9

    .line 1713
    int-to-long v8, v13

    invoke-virtual {v6, v1, v8, v9, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1715
    :cond_3b9
    nop

    .line 1716
    invoke-static {v11}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v8

    .line 1717
    invoke-static {v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int v9, v16, v8

    goto/16 :goto_6bd

    .line 1702
    :pswitch_3c8
    nop

    .line 1704
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1703
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1705
    goto/16 :goto_6bd

    .line 1697
    :pswitch_3d7
    nop

    .line 1699
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1698
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1700
    goto/16 :goto_6bd

    .line 1692
    :pswitch_3e6
    nop

    .line 1694
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1693
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1695
    goto/16 :goto_6bd

    .line 1687
    :pswitch_3f5
    nop

    .line 1689
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1688
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1690
    goto/16 :goto_6bd

    .line 1682
    :pswitch_404
    nop

    .line 1684
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1683
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1685
    goto/16 :goto_6bd

    .line 1677
    :pswitch_413
    nop

    .line 1679
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1678
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1680
    goto/16 :goto_6bd

    .line 1672
    :pswitch_422
    nop

    .line 1674
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1673
    invoke-static {v11, v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v5

    add-int v9, v16, v5

    .line 1675
    goto/16 :goto_6bd

    .line 1667
    :pswitch_431
    nop

    .line 1669
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    .line 1668
    invoke-static {v11, v5, v8}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I

    move-result v5

    add-int v9, v16, v5

    .line 1670
    goto/16 :goto_6bd

    .line 1663
    :pswitch_444
    nop

    .line 1664
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v5

    add-int v9, v16, v5

    .line 1665
    goto/16 :goto_6bd

    .line 1658
    :pswitch_453
    nop

    .line 1660
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1659
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1661
    goto/16 :goto_6bd

    .line 1653
    :pswitch_462
    nop

    .line 1655
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1654
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1656
    goto/16 :goto_6bd

    .line 1648
    :pswitch_471
    nop

    .line 1650
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1649
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1651
    goto/16 :goto_6bd

    .line 1643
    :pswitch_480
    nop

    .line 1645
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1644
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1646
    goto/16 :goto_6bd

    .line 1638
    :pswitch_48f
    nop

    .line 1640
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1639
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1641
    goto/16 :goto_6bd

    .line 1633
    :pswitch_49e
    nop

    .line 1635
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1634
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1636
    goto/16 :goto_6bd

    .line 1628
    :pswitch_4ad
    nop

    .line 1630
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1629
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1631
    goto/16 :goto_6bd

    .line 1623
    :pswitch_4bc
    nop

    .line 1625
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1624
    invoke-static {v11, v5, v7}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v5

    add-int v9, v16, v5

    .line 1626
    goto/16 :goto_6bd

    .line 1613
    :pswitch_4cb
    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1615
    nop

    .line 1618
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/framework/protobuf/MessageLite;

    .line 1619
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    .line 1616
    invoke-static {v11, v5, v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v5

    add-int v9, v16, v5

    goto/16 :goto_6bd

    .line 1607
    :pswitch_4e5
    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_4fa

    .line 1609
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_6bd

    .line 1607
    :cond_4fa
    move-object/from16 v0, p0

    goto/16 :goto_6bb

    .line 1601
    :pswitch_4fe
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_515

    .line 1603
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_6bd

    .line 1601
    :cond_515
    move-object/from16 v0, p0

    goto/16 :goto_6bb

    .line 1595
    :pswitch_519
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_52e

    .line 1597
    invoke-static {v11, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bd

    .line 1595
    :cond_52e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bb

    .line 1589
    :pswitch_534
    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_54b

    .line 1591
    invoke-static {v11, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bd

    .line 1589
    :cond_54b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bb

    .line 1583
    :pswitch_551
    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_56a

    .line 1585
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_6bd

    .line 1583
    :cond_56a
    move-object/from16 v0, p0

    goto/16 :goto_6bb

    .line 1577
    :pswitch_56e
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_585

    .line 1579
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_6bd

    .line 1577
    :cond_585
    move-object/from16 v0, p0

    goto/16 :goto_6bb

    .line 1570
    :pswitch_589
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5a2

    .line 1572
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    .line 1573
    invoke-static {v11, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v0

    add-int v9, v16, v0

    .line 1574
    move-object/from16 v0, p0

    goto/16 :goto_6bd

    .line 1570
    :cond_5a2
    move-object/from16 v0, p0

    goto/16 :goto_6bb

    .line 1563
    :pswitch_5a6
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1565
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 1566
    invoke-direct {v0, v2}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v8

    invoke-static {v11, v5, v8}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I

    move-result v5

    add-int v9, v16, v5

    .line 1567
    goto/16 :goto_6bd

    .line 1552
    :pswitch_5bf
    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5e3

    .line 1554
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1555
    instance-of v5, v0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v5, :cond_5d7

    .line 1556
    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v11, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v0

    add-int v9, v16, v0

    goto :goto_5df

    .line 1558
    :cond_5d7
    check-cast v0, Ljava/lang/String;

    invoke-static {v11, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int v9, v16, v0

    .line 1560
    :goto_5df
    move-object/from16 v0, p0

    goto/16 :goto_6bd

    .line 1552
    :cond_5e3
    move-object/from16 v0, p0

    goto/16 :goto_6bb

    .line 1546
    :pswitch_5e7
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_5fd

    .line 1548
    const/4 v5, 0x1

    invoke-static {v11, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bd

    .line 1546
    :cond_5fd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bb

    .line 1540
    :pswitch_603
    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_61a

    .line 1542
    invoke-static {v11, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bd

    .line 1540
    :cond_61a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bb

    .line 1534
    :pswitch_620
    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_637

    .line 1536
    invoke-static {v11, v14, v15}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bd

    .line 1534
    :cond_637
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6bb

    .line 1528
    :pswitch_63d
    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_656

    .line 1530
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v11, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    goto/16 :goto_6bd

    .line 1528
    :cond_656
    move-object/from16 v0, p0

    goto/16 :goto_6bb

    .line 1522
    :pswitch_65a
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_670

    .line 1524
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    goto :goto_6bd

    .line 1522
    :cond_670
    move-object/from16 v0, p0

    goto :goto_6bb

    .line 1516
    :pswitch_673
    move v5, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_689

    .line 1518
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    goto :goto_6bd

    .line 1516
    :cond_689
    move-object/from16 v0, p0

    goto :goto_6bb

    .line 1510
    :pswitch_68c
    move v0, v5

    move v5, v12

    move v8, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_6a2

    .line 1512
    invoke-static {v11, v8}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int v9, v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_6bd

    .line 1510
    :cond_6a2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_6bb

    .line 1504
    :pswitch_6a7
    move v5, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_6bb

    .line 1506
    const-wide/16 v8, 0x0

    invoke-static {v11, v8, v9}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v5

    add-int v9, v16, v5

    goto :goto_6bd

    .line 1471
    :cond_6bb
    :goto_6bb
    move/from16 v9, v16

    :goto_6bd
    add-int/lit8 v2, v2, 0x3

    const v8, 0xfffff

    goto/16 :goto_10

    .line 2050
    :cond_6c4
    move/from16 v16, v9

    iget-object v2, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {v0, v2, v1}, Lcom/android/framework/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v2

    add-int v9, v16, v2

    .line 2052
    iget-boolean v2, v0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_6dd

    .line 2053
    iget-object v0, v0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v9, v0

    .line 2056
    :cond_6dd
    return v9

    :pswitch_data_6de
    .packed-switch 0x0
        :pswitch_6a7
        :pswitch_68c
        :pswitch_673
        :pswitch_65a
        :pswitch_63d
        :pswitch_620
        :pswitch_603
        :pswitch_5e7
        :pswitch_5bf
        :pswitch_5a6
        :pswitch_589
        :pswitch_56e
        :pswitch_551
        :pswitch_534
        :pswitch_519
        :pswitch_4fe
        :pswitch_4e5
        :pswitch_4cb
        :pswitch_4bc
        :pswitch_4ad
        :pswitch_49e
        :pswitch_48f
        :pswitch_480
        :pswitch_471
        :pswitch_462
        :pswitch_453
        :pswitch_444
        :pswitch_431
        :pswitch_422
        :pswitch_413
        :pswitch_404
        :pswitch_3f5
        :pswitch_3e6
        :pswitch_3d7
        :pswitch_3c8
        :pswitch_3a4
        :pswitch_380
        :pswitch_35c
        :pswitch_338
        :pswitch_314
        :pswitch_2f0
        :pswitch_2cc
        :pswitch_2a8
        :pswitch_284
        :pswitch_260
        :pswitch_23c
        :pswitch_218
        :pswitch_1f4
        :pswitch_1d0
        :pswitch_1bd
        :pswitch_1ab
        :pswitch_19b
        :pswitch_18d
        :pswitch_17b
        :pswitch_169
        :pswitch_157
        :pswitch_149
        :pswitch_13b
        :pswitch_12c
        :pswitch_10b
        :pswitch_f5
        :pswitch_e0
        :pswitch_ce
        :pswitch_bc
        :pswitch_ae
        :pswitch_a0
        :pswitch_8e
        :pswitch_7c
        :pswitch_63
    .end packed-switch
.end method

.method public blacklist hashCode(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 955
    nop

    .line 956
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 957
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_255

    .line 958
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    .line 959
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 961
    invoke-static {v3}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    .line 963
    invoke-static {v3}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_274

    goto/16 :goto_251

    .line 1163
    :pswitch_1f
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1164
    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1165
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1166
    goto/16 :goto_251

    .line 1158
    :pswitch_32
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1159
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1153
    :pswitch_45
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1154
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1148
    :pswitch_54
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1149
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1143
    :pswitch_67
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1144
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1138
    :pswitch_76
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1139
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1133
    :pswitch_85
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1134
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1128
    :pswitch_94
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1129
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1122
    :pswitch_a7
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1123
    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1124
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1125
    goto/16 :goto_251

    .line 1116
    :pswitch_ba
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1117
    mul-int/lit8 v2, v2, 0x35

    .line 1118
    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1111
    :pswitch_cf
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1112
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1106
    :pswitch_e2
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1107
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1101
    :pswitch_f1
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1102
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1096
    :pswitch_104
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1097
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1091
    :pswitch_113
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1092
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1086
    :pswitch_126
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1087
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1081
    :pswitch_139
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1082
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1074
    :pswitch_14c
    invoke-direct {p0, p1, v4, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 1075
    mul-int/lit8 v2, v2, 0x35

    .line 1077
    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_251

    .line 1071
    :pswitch_163
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1072
    goto/16 :goto_251

    .line 1068
    :pswitch_170
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1069
    goto/16 :goto_251

    .line 1028
    :pswitch_17d
    nop

    .line 1029
    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1030
    if-eqz v3, :cond_188

    .line 1031
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 1033
    :cond_188
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    .line 1034
    goto/16 :goto_251

    .line 1023
    :pswitch_18d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1024
    goto/16 :goto_251

    .line 1020
    :pswitch_19a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1021
    goto/16 :goto_251

    .line 1017
    :pswitch_1a3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1018
    goto/16 :goto_251

    .line 1014
    :pswitch_1b0
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1015
    goto/16 :goto_251

    .line 1011
    :pswitch_1b9
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1012
    goto/16 :goto_251

    .line 1008
    :pswitch_1c2
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 1009
    goto/16 :goto_251

    .line 1005
    :pswitch_1cb
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 1006
    goto/16 :goto_251

    .line 996
    :pswitch_1d8
    nop

    .line 997
    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 998
    if-eqz v3, :cond_1e3

    .line 999
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 1001
    :cond_1e3
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    .line 1002
    goto :goto_251

    .line 992
    :pswitch_1e7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 993
    goto :goto_251

    .line 989
    :pswitch_1f5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    add-int/2addr v2, v3

    .line 990
    goto :goto_251

    .line 986
    :pswitch_201
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 987
    goto :goto_251

    .line 983
    :pswitch_209
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 984
    goto :goto_251

    .line 980
    :pswitch_215
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 981
    goto :goto_251

    .line 977
    :pswitch_21d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 978
    goto :goto_251

    .line 974
    :pswitch_229
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 975
    goto :goto_251

    .line 971
    :pswitch_235
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 972
    goto :goto_251

    .line 965
    :pswitch_241
    mul-int/lit8 v2, v2, 0x35

    .line 968
    invoke-static {p1, v5, v6}, Lcom/android/framework/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 967
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 969
    nop

    .line 957
    :cond_251
    :goto_251
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_6

    .line 1174
    :cond_255
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 1176
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_273

    .line 1177
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    .line 1180
    :cond_273
    return v2

    :pswitch_data_274
    .packed-switch 0x0
        :pswitch_241
        :pswitch_235
        :pswitch_229
        :pswitch_21d
        :pswitch_215
        :pswitch_209
        :pswitch_201
        :pswitch_1f5
        :pswitch_1e7
        :pswitch_1d8
        :pswitch_1cb
        :pswitch_1c2
        :pswitch_1b9
        :pswitch_1b0
        :pswitch_1a3
        :pswitch_19a
        :pswitch_18d
        :pswitch_17d
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_170
        :pswitch_163
        :pswitch_14c
        :pswitch_139
        :pswitch_126
        :pswitch_113
        :pswitch_104
        :pswitch_f1
        :pswitch_e2
        :pswitch_cf
        :pswitch_ba
        :pswitch_a7
        :pswitch_94
        :pswitch_85
        :pswitch_76
        :pswitch_67
        :pswitch_54
        :pswitch_45
        :pswitch_32
        :pswitch_1f
    .end packed-switch
.end method

.method public final blacklist isInitialized(Ljava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 4483
    nop

    .line 4484
    nop

    .line 4485
    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_9
    iget v5, p0, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_89

    .line 4486
    iget-object v5, p0, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v9, v5, v2

    .line 4487
    invoke-direct {p0, v9}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 4488
    invoke-direct {p0, v9}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v13

    .line 4490
    iget-object v7, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v8, v9, 0x2

    aget v7, v7, v8

    .line 4491
    and-int v8, v7, v0

    .line 4492
    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    .line 4493
    if-eq v8, v3, :cond_38

    .line 4494
    nop

    .line 4495
    if-eq v8, v0, :cond_35

    .line 4496
    sget-object v3, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v6, v8

    invoke-virtual {v3, p1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v11, v4

    move v10, v8

    goto :goto_3a

    .line 4495
    :cond_35
    move v11, v4

    move v10, v8

    goto :goto_3a

    .line 4493
    :cond_38
    move v10, v3

    move v11, v4

    .line 4500
    :goto_3a
    invoke-static {v13}, Lcom/android/framework/protobuf/MessageSchema;->isRequired(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 4501
    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 4503
    return v1

    .line 4500
    :cond_49
    move-object v7, p0

    move-object v8, p1

    .line 4510
    :cond_4b
    invoke-static {v13}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result p1

    sparse-switch p1, :sswitch_data_9e

    goto :goto_83

    .line 4527
    :sswitch_53
    invoke-direct {p0, v8, v5, v9}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 4528
    invoke-direct {p0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    invoke-static {v8, v13, p1}, Lcom/android/framework/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z

    move-result p1

    if-nez p1, :cond_83

    .line 4529
    return v1

    .line 4533
    :sswitch_64
    invoke-direct {p0, v8, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result p1

    if-nez p1, :cond_83

    .line 4534
    return v1

    .line 4521
    :sswitch_6b
    invoke-direct {p0, v8, v13, v9}, Lcom/android/framework/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result p1

    if-nez p1, :cond_83

    .line 4522
    return v1

    .line 4513
    :sswitch_72
    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 4515
    invoke-direct {p0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    invoke-static {v8, v13, p1}, Lcom/android/framework/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/android/framework/protobuf/Schema;)Z

    move-result p1

    if-nez p1, :cond_83

    .line 4516
    return v1

    .line 4485
    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto :goto_9

    .line 4542
    :cond_89
    move-object v7, p0

    move-object v8, p1

    iget-boolean p1, v7, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz p1, :cond_9c

    .line 4543
    iget-object p1, v7, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {p1, v8}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 4544
    return v1

    .line 4548
    :cond_9c
    return v6

    nop

    :sswitch_data_9e
    .sparse-switch
        0x9 -> :sswitch_72
        0x11 -> :sswitch_72
        0x1b -> :sswitch_6b
        0x31 -> :sswitch_6b
        0x32 -> :sswitch_64
        0x3c -> :sswitch_53
        0x44 -> :sswitch_53
    .end sparse-switch
.end method

.method public blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4308
    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->isMutable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4309
    return-void

    .line 4314
    :cond_7
    instance-of v0, p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_17

    .line 4315
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 4316
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->clearMemoizedSerializedSize()V

    .line 4317
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->clearMemoizedHashCode()V

    .line 4318
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 4321
    :cond_17
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    .line 4322
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_75

    .line 4323
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    .line 4324
    invoke-static {v2}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 4325
    invoke-static {v2}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v2

    packed-switch v2, :pswitch_data_84

    :pswitch_2c
    goto :goto_72

    .line 4334
    :pswitch_2d
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->numberAt(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/framework/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 4335
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    sget-object v5, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    goto :goto_72

    .line 4374
    :pswitch_45
    sget-object v2, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4375
    if-eqz v2, :cond_72

    .line 4376
    sget-object v5, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v6, p0, Lcom/android/framework/protobuf/MessageSchema;->mapFieldSchema:Lcom/android/framework/protobuf/MapFieldSchema;

    invoke-interface {v6, v2}, Lcom/android/framework/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_72

    .line 4370
    :pswitch_59
    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->listFieldSchema:Lcom/android/framework/protobuf/ListFieldSchema;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/framework/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    .line 4371
    goto :goto_72

    .line 4328
    :pswitch_5f
    invoke-direct {p0, p1, v1}, Lcom/android/framework/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 4329
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    sget-object v5, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 4322
    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x3

    goto :goto_1b

    .line 4382
    :cond_75
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 4383
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_83

    .line 4384
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 4386
    :cond_83
    return-void

    :pswitch_data_84
    .packed-switch 0x9
        :pswitch_5f
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_5f
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_45
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2951
    if-eqz p3, :cond_11

    .line 2954
    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 2955
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 2956
    return-void

    .line 2952
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1185
    invoke-static {p1}, Lcom/android/framework/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 1186
    if-eqz p2, :cond_20

    .line 1189
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 1191
    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1189
    add-int/lit8 v0, v0, 0x3

    goto :goto_6

    .line 1194
    :cond_11
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1196
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_1f

    .line 1197
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1199
    :cond_1f
    return-void

    .line 1187
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4303
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->parseMessage(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    .line 4304
    return-void
.end method

.method public blacklist newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSchema;->newInstanceSchema:Lcom/android/framework/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist parseMessage(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3938
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v15, p5

    move-object/from16 v7, p6

    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->checkMutable(Ljava/lang/Object;)V

    .line 3939
    sget-object v9, Lcom/android/framework/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 3940
    nop

    .line 3941
    nop

    .line 3942
    nop

    .line 3943
    nop

    .line 3944
    const/16 v16, 0x0

    const/4 v11, -0x1

    move/from16 v3, p3

    move v5, v11

    move/from16 v6, v16

    move v12, v6

    move v13, v12

    const v8, 0xfffff

    .line 3945
    :goto_22
    if-ge v3, v4, :cond_54d

    .line 3946
    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v2, v3

    .line 3947
    if-gez v3, :cond_36

    .line 3948
    invoke-static {v3, v2, v13, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v13

    .line 3949
    iget v3, v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move/from16 v25, v13

    move v13, v3

    move/from16 v3, v25

    goto :goto_3b

    .line 3947
    :cond_36
    move/from16 v25, v13

    move v13, v3

    move/from16 v3, v25

    .line 3951
    :goto_3b
    ushr-int/lit8 v14, v13, 0x3

    .line 3952
    and-int/lit8 v7, v13, 0x7

    .line 3953
    const v17, 0xfffff

    const/4 v10, 0x3

    if-le v14, v5, :cond_4b

    .line 3954
    div-int/2addr v6, v10

    invoke-direct {v0, v14, v6}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v5

    goto :goto_4f

    .line 3956
    :cond_4b
    invoke-direct {v0, v14}, Lcom/android/framework/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v5

    .line 3958
    :goto_4f
    nop

    .line 3959
    if-ne v5, v11, :cond_63

    .line 3961
    move v2, v3

    move/from16 v17, v8

    move-object/from16 v24, v9

    move/from16 v19, v11

    move/from16 v21, v14

    move/from16 v8, v16

    move-object v9, v0

    move v0, v13

    move-object/from16 v13, p6

    goto/16 :goto_4f6

    .line 3963
    :cond_63
    iget-object v6, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v5, 0x1

    aget v6, v6, v18

    .line 3964
    move/from16 v18, v11

    invoke-static {v6}, Lcom/android/framework/protobuf/MessageSchema;->type(I)I

    move-result v11

    .line 3965
    move/from16 v19, v3

    invoke-static {v6}, Lcom/android/framework/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    .line 3966
    const/16 v10, 0x11

    if-gt v11, v10, :cond_3c4

    .line 3968
    iget-object v10, v0, Lcom/android/framework/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v20, v5, 0x2

    aget v10, v10, v20

    .line 3969
    ushr-int/lit8 v20, v10, 0x14

    const/4 v2, 0x1

    shl-int v20, v2, v20

    .line 3970
    and-int v10, v10, v17

    .line 3973
    if-eq v10, v8, :cond_a4

    .line 3974
    move/from16 v21, v14

    move/from16 v14, v17

    if-eq v8, v14, :cond_95

    .line 3975
    move-wide/from16 v22, v3

    int-to-long v2, v8

    invoke-virtual {v9, v1, v2, v3, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_97

    .line 3974
    :cond_95
    move-wide/from16 v22, v3

    .line 3977
    :goto_97
    nop

    .line 3981
    if-ne v10, v14, :cond_9d

    .line 3982
    move/from16 v12, v16

    goto :goto_a3

    .line 3983
    :cond_9d
    int-to-long v2, v10

    invoke-virtual {v9, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v12, v2

    :goto_a3
    goto :goto_ab

    .line 3973
    :cond_a4
    move-wide/from16 v22, v3

    move/from16 v21, v14

    move/from16 v14, v17

    move v10, v8

    .line 3985
    :goto_ab
    const/4 v2, 0x5

    packed-switch v11, :pswitch_data_5a0

    move-object/from16 v14, p2

    move v11, v5

    move-object v3, v9

    move/from16 p3, v10

    move/from16 v8, v19

    goto/16 :goto_3b6

    .line 4116
    :pswitch_b9
    const/4 v2, 0x3

    if-ne v7, v2, :cond_ed

    .line 4117
    invoke-direct {v0, v1, v5}, Lcom/android/framework/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 4118
    shl-int/lit8 v3, v21, 0x3

    or-int/lit8 v7, v3, 0x4

    .line 4119
    nop

    .line 4122
    invoke-direct {v0, v5}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v3

    .line 4120
    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p6

    move v11, v5

    move/from16 v5, v19

    invoke-static/range {v2 .. v8}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4128
    move-object/from16 v25, v4

    move-object v4, v2

    move-object v2, v8

    move-object/from16 v8, v25

    invoke-direct {v0, v1, v11, v4}, Lcom/android/framework/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4129
    or-int v12, v12, v20

    .line 4130
    move/from16 v4, p4

    move-object v7, v2

    move-object v2, v8

    move v8, v10

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    goto/16 :goto_22

    .line 4116
    :cond_ed
    move-object/from16 v8, p2

    move-object/from16 v2, p6

    move v11, v5

    move/from16 v3, v19

    move-object v14, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v9

    goto/16 :goto_3b6

    .line 4106
    :pswitch_fb
    move-object/from16 v8, p2

    move-object/from16 v2, p6

    move v11, v5

    move/from16 v3, v19

    if-nez v7, :cond_12c

    .line 4107
    invoke-static {v8, v3, v2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    .line 4108
    iget-wide v3, v2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    .line 4109
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v5

    .line 4108
    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    move-object v9, v3

    move-wide/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4111
    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    or-int v12, v12, v20

    .line 4112
    move/from16 v4, p4

    move v3, v7

    move-object v7, v9

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v2

    move-object v2, v8

    move v8, v10

    goto/16 :goto_22

    .line 4106
    :cond_12c
    move-object/from16 v25, v9

    move-object v9, v2

    move-object/from16 v2, v25

    move-object v14, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v2

    goto/16 :goto_3b6

    .line 4097
    :pswitch_138
    move-object/from16 v8, p2

    move v11, v5

    move-object v2, v9

    move/from16 v3, v19

    move-wide/from16 v4, v22

    move-object/from16 v9, p6

    if-nez v7, :cond_160

    .line 4098
    invoke-static {v8, v3, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4099
    iget v6, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4100
    invoke-static {v6}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v6

    .line 4099
    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4101
    or-int v12, v12, v20

    .line 4102
    move/from16 v4, p4

    move-object v7, v9

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v2

    move-object v2, v8

    move v8, v10

    goto/16 :goto_22

    .line 4097
    :cond_160
    move-object v14, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v2

    goto/16 :goto_3b6

    .line 4078
    :pswitch_167
    move-object/from16 v8, p2

    move v11, v5

    move-object v2, v9

    move/from16 v3, v19

    move-wide/from16 v4, v22

    move-object/from16 v9, p6

    if-nez v7, :cond_1b7

    .line 4079
    invoke-static {v8, v3, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4080
    iget v7, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4081
    invoke-direct {v0, v11}, Lcom/android/framework/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/android/framework/protobuf/Internal$EnumVerifier;

    move-result-object v14

    .line 4082
    invoke-static {v6}, Lcom/android/framework/protobuf/MessageSchema;->isLegacyEnumIsClosed(I)Z

    move-result v6

    if-eqz v6, :cond_1a5

    if-eqz v14, :cond_1a5

    .line 4084
    invoke-interface {v14, v7}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v6

    if-eqz v6, :cond_18c

    goto :goto_1a5

    .line 4091
    :cond_18c
    invoke-static {v1}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    int-to-long v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 4093
    move/from16 v4, p4

    move-object v7, v9

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v2

    move-object v2, v8

    move v8, v10

    goto/16 :goto_22

    .line 4086
    :cond_1a5
    :goto_1a5
    invoke-virtual {v2, v1, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4087
    or-int v12, v12, v20

    move/from16 v4, p4

    move-object v7, v9

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v2

    move-object v2, v8

    move v8, v10

    goto/16 :goto_22

    .line 4078
    :cond_1b7
    move-object v14, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v2

    goto/16 :goto_3b6

    .line 4070
    :pswitch_1be
    move-object/from16 v8, p2

    move v11, v5

    move-object v2, v9

    move/from16 v3, v19

    move-wide/from16 v4, v22

    move-object/from16 v9, p6

    const/4 v6, 0x2

    if-ne v7, v6, :cond_1e3

    .line 4071
    invoke-static {v8, v3, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4072
    iget-object v6, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4073
    or-int v12, v12, v20

    .line 4074
    move/from16 v4, p4

    move-object v7, v9

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v2

    move-object v2, v8

    move v8, v10

    goto/16 :goto_22

    .line 4070
    :cond_1e3
    move-object v14, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v2

    goto/16 :goto_3b6

    .line 4059
    :pswitch_1ea
    move-object/from16 v8, p2

    move v11, v5

    move-object v2, v9

    move/from16 v3, v19

    move-object/from16 v9, p6

    const/4 v6, 0x2

    if-ne v7, v6, :cond_222

    .line 4060
    move-object v4, v1

    invoke-direct {v0, v4, v11}, Lcom/android/framework/protobuf/MessageSchema;->mutableMessageFieldForMerge(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 4061
    nop

    .line 4063
    move-object v5, v2

    invoke-direct {v0, v11}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    .line 4062
    move-object v6, v4

    move v4, v3

    move-object v3, v8

    move-object v8, v6

    move-object v6, v9

    move-object v9, v5

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4064
    move-object v14, v3

    move-object v3, v1

    move-object v1, v6

    invoke-direct {v0, v8, v11, v3}, Lcom/android/framework/protobuf/MessageSchema;->storeMessageField(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4065
    or-int v12, v12, v20

    .line 4066
    move/from16 v4, p4

    move-object v7, v1

    move v3, v2

    move-object v1, v8

    move v8, v10

    move v6, v11

    move-object v2, v14

    move/from16 v11, v18

    move/from16 v5, v21

    goto/16 :goto_22

    .line 4059
    :cond_222
    move-object v14, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v2

    move-object v1, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v9

    goto/16 :goto_3b6

    .line 4047
    :pswitch_22d
    move-object/from16 v14, p2

    move-object v8, v1

    move v11, v5

    move/from16 v3, v19

    move-wide/from16 v4, v22

    move-object/from16 v1, p6

    const/4 v2, 0x2

    if-ne v7, v2, :cond_25f

    .line 4048
    invoke-static {v6}, Lcom/android/framework/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 4049
    invoke-static {v14, v3, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v3, v2

    goto :goto_24b

    .line 4051
    :cond_246
    invoke-static {v14, v3, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v3, v2

    .line 4053
    :goto_24b
    iget-object v2, v1, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v9, v8, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4054
    or-int v12, v12, v20

    .line 4055
    move/from16 v4, p4

    move-object v7, v1

    move-object v1, v8

    move v8, v10

    move v6, v11

    move-object v2, v14

    move/from16 v11, v18

    move/from16 v5, v21

    goto/16 :goto_22

    .line 4047
    :cond_25f
    move-object v1, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v9

    goto/16 :goto_3b6

    .line 4039
    :pswitch_266
    move-object/from16 v14, p2

    move-object v8, v1

    move v11, v5

    move/from16 v3, v19

    move-wide/from16 v5, v22

    move-object/from16 v1, p6

    if-nez v7, :cond_298

    .line 4040
    invoke-static {v14, v3, v1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4041
    move-wide/from16 v22, v5

    iget-wide v4, v1, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_282

    const/4 v2, 0x1

    goto :goto_284

    :cond_282
    move/from16 v2, v16

    :goto_284
    move-wide/from16 v4, v22

    invoke-static {v8, v4, v5, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 4042
    or-int v12, v12, v20

    .line 4043
    move/from16 v4, p4

    move-object v7, v1

    move-object v1, v8

    move v8, v10

    move v6, v11

    move-object v2, v14

    move/from16 v11, v18

    move/from16 v5, v21

    goto/16 :goto_22

    .line 4039
    :cond_298
    move-object v1, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v9

    goto/16 :goto_3b6

    .line 4031
    :pswitch_29f
    move-object/from16 v14, p2

    move-object v8, v1

    move v11, v5

    move/from16 v3, v19

    move-wide/from16 v4, v22

    move-object/from16 v1, p6

    if-ne v7, v2, :cond_2c3

    .line 4032
    invoke-static {v14, v3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v9, v8, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4033
    add-int/lit8 v3, v3, 0x4

    .line 4034
    or-int v12, v12, v20

    .line 4035
    move/from16 v4, p4

    move-object v7, v1

    move-object v1, v8

    move v8, v10

    move v6, v11

    move-object v2, v14

    move/from16 v11, v18

    move/from16 v5, v21

    goto/16 :goto_22

    .line 4031
    :cond_2c3
    move-object v1, v8

    move/from16 p3, v10

    move v8, v3

    move-object v3, v9

    goto/16 :goto_3b6

    .line 4022
    :pswitch_2ca
    move-object/from16 v14, p2

    move-object v8, v1

    move v11, v5

    move/from16 v3, v19

    move-wide/from16 v4, v22

    move-object/from16 v1, p6

    const/4 v2, 0x1

    if-ne v7, v2, :cond_2fd

    .line 4023
    move-wide/from16 v22, v4

    invoke-static {v14, v3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v5

    move-object v2, v9

    move-object v9, v1

    move-object v1, v2

    move-object v2, v8

    move v8, v3

    move-wide/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4024
    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    add-int/lit8 v3, v8, 0x8

    .line 4025
    or-int v12, v12, v20

    .line 4026
    move/from16 v4, p4

    move-object v7, v9

    move v8, v10

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v2

    move-object v2, v14

    goto/16 :goto_22

    .line 4022
    :cond_2fd
    move-object v2, v9

    move-object v9, v1

    move-object v1, v8

    move v8, v3

    move-object v3, v2

    move/from16 p3, v10

    goto/16 :goto_3b6

    .line 4013
    :pswitch_306
    move-object/from16 v14, p2

    move v11, v5

    move-object v2, v9

    move/from16 v8, v19

    move-wide/from16 v3, v22

    move-object/from16 v9, p6

    if-nez v7, :cond_32b

    .line 4014
    invoke-static {v14, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 4015
    iget v6, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4016
    or-int v12, v12, v20

    .line 4017
    move/from16 v4, p4

    move v3, v5

    move-object v7, v9

    move v8, v10

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v2

    move-object v2, v14

    goto/16 :goto_22

    .line 4013
    :cond_32b
    move-object v3, v2

    move/from16 p3, v10

    goto/16 :goto_3b6

    .line 4004
    :pswitch_330
    move-object/from16 v14, p2

    move v11, v5

    move-object v2, v9

    move/from16 v8, v19

    move-wide/from16 v3, v22

    move-object/from16 v9, p6

    if-nez v7, :cond_35d

    .line 4005
    invoke-static {v14, v8, v9}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    .line 4006
    iget-wide v5, v9, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 4007
    move-object v3, v1

    move-object v1, v2

    or-int v12, v12, v20

    .line 4008
    move-object v2, v9

    move-object v9, v3

    move v3, v7

    move-object v7, v2

    move/from16 v4, p4

    move v8, v10

    move v6, v11

    move-object v2, v14

    move/from16 v11, v18

    move/from16 v5, v21

    goto/16 :goto_22

    .line 4004
    :cond_35d
    move-object v3, v2

    move/from16 p3, v10

    goto/16 :goto_3b6

    .line 3995
    :pswitch_362
    move-object/from16 v14, p2

    move v11, v5

    move-object v3, v9

    move/from16 v8, v19

    move-wide/from16 v5, v22

    move-object/from16 v9, p6

    if-ne v7, v2, :cond_387

    .line 3996
    invoke-static {v14, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-static {v1, v5, v6, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3997
    add-int/lit8 v2, v8, 0x4

    .line 3998
    or-int v12, v12, v20

    .line 3999
    move/from16 v4, p4

    move-object v7, v9

    move v8, v10

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move-object v9, v3

    move v3, v2

    move-object v2, v14

    goto/16 :goto_22

    .line 3995
    :cond_387
    move/from16 p3, v10

    goto :goto_3b6

    .line 3987
    :pswitch_38a
    move-object/from16 v14, p2

    move v11, v5

    move-object v3, v9

    move/from16 v8, v19

    move-wide/from16 v5, v22

    move-object/from16 v9, p6

    const/4 v4, 0x1

    if-ne v7, v4, :cond_3b4

    .line 3988
    move/from16 p3, v10

    invoke-static {v14, v8}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v9

    invoke-static {v1, v5, v6, v9, v10}, Lcom/android/framework/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3989
    add-int/lit8 v2, v8, 0x8

    .line 3990
    or-int v12, v12, v20

    .line 3991
    move/from16 v8, p3

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v9, v3

    move v6, v11

    move/from16 v11, v18

    move/from16 v5, v21

    move v3, v2

    move-object v2, v14

    goto/16 :goto_22

    .line 3987
    :cond_3b4
    move/from16 p3, v10

    .line 4136
    :goto_3b6
    move/from16 v17, p3

    move-object v9, v0

    move-object/from16 v24, v3

    move v2, v8

    move v8, v11

    move v0, v13

    move/from16 v19, v18

    move-object/from16 v13, p6

    goto/16 :goto_4f6

    :cond_3c4
    move-object/from16 v21, v9

    move v9, v5

    move-wide v4, v3

    move-object/from16 v3, v21

    move/from16 v21, v14

    move-object/from16 v14, p2

    const/16 v2, 0x1b

    if-ne v11, v2, :cond_427

    .line 4138
    const/4 v6, 0x2

    if-ne v7, v6, :cond_418

    .line 4139
    invoke-virtual {v3, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 4140
    invoke-interface {v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v6

    if-nez v6, :cond_3f6

    .line 4141
    invoke-interface {v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v6

    .line 4142
    nop

    .line 4144
    if-nez v6, :cond_3eb

    const/16 v6, 0xa

    goto :goto_3ed

    :cond_3eb
    mul-int/lit8 v6, v6, 0x2

    .line 4143
    :goto_3ed
    invoke-interface {v2, v6}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v2

    .line 4145
    invoke-virtual {v3, v1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v2

    goto :goto_3f7

    .line 4140
    :cond_3f6
    move-object v6, v2

    .line 4147
    :goto_3f7
    nop

    .line 4149
    invoke-direct {v0, v9}, Lcom/android/framework/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 4148
    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v10, v3

    move v2, v13

    move-object v3, v14

    move/from16 v4, v19

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    .line 4150
    move/from16 v4, p4

    move v3, v1

    move v6, v9

    move-object v9, v10

    move/from16 v11, v18

    move/from16 v5, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_22

    .line 4138
    :cond_418
    move-object v10, v3

    move v2, v13

    move/from16 v3, v19

    move/from16 v17, v8

    move v8, v9

    move-object/from16 v24, v10

    move/from16 v19, v18

    move/from16 v18, v12

    goto/16 :goto_4b8

    .line 4152
    :cond_427
    move-object v10, v3

    move v2, v13

    move/from16 v3, v19

    const/16 v1, 0x31

    if-gt v11, v1, :cond_471

    .line 4154
    nop

    .line 4155
    move v13, v8

    move v8, v9

    move-object v1, v10

    int-to-long v9, v6

    .line 4156
    move-object/from16 v14, p6

    move-object/from16 v24, v1

    move/from16 v17, v13

    move/from16 v19, v18

    move/from16 v6, v21

    move-object/from16 v1, p1

    move/from16 v18, v12

    move-wide v12, v4

    move/from16 v4, p4

    move v5, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Lcom/android/framework/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    .line 4169
    move v13, v5

    if-eq v7, v3, :cond_467

    .line 4170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v3, v7

    move v6, v8

    move/from16 v8, v17

    move/from16 v12, v18

    move/from16 v11, v19

    move/from16 v5, v21

    move-object/from16 v9, v24

    move-object/from16 v7, p6

    goto/16 :goto_22

    .line 4172
    :cond_467
    move-object/from16 v9, p0

    move v2, v7

    move v0, v13

    move/from16 v12, v18

    move-object/from16 v13, p6

    goto/16 :goto_4f6

    :cond_471
    move v13, v2

    move/from16 v17, v8

    move v8, v9

    move-object/from16 v24, v10

    move v9, v11

    move/from16 v19, v18

    move/from16 v18, v12

    const/16 v0, 0x32

    if-ne v9, v0, :cond_4c1

    .line 4173
    const/4 v6, 0x2

    if-ne v7, v6, :cond_4b8

    .line 4174
    nop

    .line 4175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v6, v4

    move v5, v8

    move/from16 v4, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/framework/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    .line 4176
    move v8, v5

    if-eq v6, v3, :cond_4af

    .line 4177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move v3, v6

    move v6, v8

    move/from16 v8, v17

    move/from16 v12, v18

    move/from16 v11, v19

    move/from16 v5, v21

    move-object/from16 v9, v24

    goto/16 :goto_22

    .line 4179
    :cond_4af
    move-object/from16 v9, p0

    move v2, v6

    move v0, v13

    move/from16 v12, v18

    move-object/from16 v13, p6

    goto :goto_4f6

    .line 4201
    :cond_4b8
    :goto_4b8
    move-object/from16 v9, p0

    move v2, v3

    move v0, v13

    move/from16 v12, v18

    move-object/from16 v13, p6

    goto :goto_4f6

    .line 4181
    :cond_4c1
    nop

    .line 4182
    nop

    .line 4183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v10, v4

    move v12, v8

    move v5, v13

    move/from16 v4, p4

    move-object/from16 v13, p6

    move v8, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    .line 4196
    move-object v9, v0

    move v0, v5

    move v8, v12

    if-eq v7, v3, :cond_4f3

    .line 4197
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v3, v7

    move v6, v8

    move-object v7, v13

    move/from16 v8, v17

    move/from16 v12, v18

    move/from16 v11, v19

    move/from16 v5, v21

    move v13, v0

    move-object v0, v9

    move-object/from16 v9, v24

    goto/16 :goto_22

    .line 4196
    :cond_4f3
    move v2, v7

    move/from16 v12, v18

    .line 4201
    :goto_4f6
    if-ne v0, v15, :cond_504

    if-eqz v15, :cond_504

    .line 4202
    move-object/from16 v6, p1

    move/from16 v7, p4

    move v13, v0

    move v8, v2

    move/from16 v0, v17

    goto/16 :goto_559

    .line 4205
    :cond_504
    iget-boolean v1, v9, Lcom/android/framework/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v1, :cond_527

    iget-object v1, v13, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 4206
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v3

    if-eq v1, v3, :cond_524

    .line 4207
    iget-object v5, v9, Lcom/android/framework/protobuf/MessageSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    iget-object v6, v9, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v7, v13

    invoke-static/range {v0 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v6, v4

    move/from16 v7, p4

    move v3, v2

    goto :goto_53a

    .line 4206
    :cond_524
    move-object/from16 v6, p1

    goto :goto_529

    .line 4205
    :cond_527
    move-object/from16 v6, p1

    .line 4212
    :goto_529
    nop

    .line 4213
    invoke-static {v6}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 4212
    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v7, v3

    move v3, v2

    .line 4215
    :goto_53a
    move-object/from16 v2, p2

    move v13, v0

    move-object v1, v6

    move v4, v7

    move v6, v8

    move-object v0, v9

    move/from16 v8, v17

    move/from16 v11, v19

    move/from16 v5, v21

    move-object/from16 v9, v24

    move-object/from16 v7, p6

    goto/16 :goto_22

    .line 3945
    :cond_54d
    move-object v6, v1

    move v7, v4

    move/from16 v17, v8

    move-object/from16 v24, v9

    move/from16 v18, v12

    move-object v9, v0

    move v8, v3

    move/from16 v0, v17

    .line 4216
    :goto_559
    const v14, 0xfffff

    if-eq v0, v14, :cond_564

    .line 4217
    int-to-long v0, v0

    move-object/from16 v2, v24

    invoke-virtual {v2, v6, v0, v1, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 4219
    :cond_564
    nop

    .line 4220
    iget v0, v9, Lcom/android/framework/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v1, 0x0

    move v10, v0

    move-object v3, v1

    :goto_56a
    iget v0, v9, Lcom/android/framework/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v10, v0, :cond_582

    .line 4221
    iget-object v0, v9, Lcom/android/framework/protobuf/MessageSchema;->intArray:[I

    aget v2, v0, v10

    iget-object v4, v9, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 4222
    move-object/from16 v5, p1

    move-object v1, v6

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 4220
    add-int/lit8 v10, v10, 0x1

    goto :goto_56a

    .line 4229
    :cond_582
    move-object v1, v6

    move-object v0, v9

    if-eqz v3, :cond_58b

    .line 4230
    iget-object v0, v0, Lcom/android/framework/protobuf/MessageSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 4231
    invoke-virtual {v0, v1, v3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4233
    :cond_58b
    if-nez v15, :cond_595

    .line 4234
    if-ne v8, v7, :cond_590

    goto :goto_599

    .line 4235
    :cond_590
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4238
    :cond_595
    if-gt v8, v7, :cond_59a

    if-ne v13, v15, :cond_59a

    .line 4242
    :goto_599
    return v8

    .line 4239
    :cond_59a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_5a0
    .packed-switch 0x0
        :pswitch_38a
        :pswitch_362
        :pswitch_330
        :pswitch_330
        :pswitch_306
        :pswitch_2ca
        :pswitch_29f
        :pswitch_266
        :pswitch_22d
        :pswitch_1ea
        :pswitch_1be
        :pswitch_306
        :pswitch_167
        :pswitch_29f
        :pswitch_2ca
        :pswitch_138
        :pswitch_fb
        :pswitch_b9
    .end packed-switch
.end method

.method public blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2070
    invoke-interface {p2}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_c

    .line 2071
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_f

    .line 2073
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/MessageSchema;->writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 2075
    :goto_f
    return-void
.end method
