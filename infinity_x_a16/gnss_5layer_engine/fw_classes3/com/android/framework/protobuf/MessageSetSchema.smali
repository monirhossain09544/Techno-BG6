.class final Lcom/android/framework/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

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


# instance fields
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

.field private final blacklist unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MessageLite;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 27
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/ExtensionSchema;->hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    .line 28
    iput-object p2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    .line 29
    iput-object p3, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 30
    return-void
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

    .line 377
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 378
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getSerializedSizeAsMessageSet(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private blacklist mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 13
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

    .line 230
    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 231
    invoke-virtual {p2, p3}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v4

    .line 234
    :goto_8
    :try_start_8
    invoke-interface {p4}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_2b

    .line 235
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_15

    .line 251
    invoke-virtual {p1, p3, v6}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    return-void

    .line 238
    :cond_15
    move-object v0, p0

    move-object v5, p1

    move-object v3, p2

    move-object v1, p4

    move-object v2, p5

    :try_start_1a
    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSetSchema;->parseMessageSetItemOrUnknownField(Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/FieldSet;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_29

    if-eqz p1, :cond_25

    .line 245
    move-object p4, v1

    move-object p5, v2

    move-object p2, v3

    move-object p1, v5

    goto :goto_8

    .line 251
    :cond_25
    invoke-virtual {v5, p3, v6}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    return-void

    .line 251
    :catchall_29
    move-exception v0

    goto :goto_2d

    :catchall_2b
    move-exception v0

    move-object v5, p1

    :goto_2d
    move-object p1, v0

    invoke-virtual {v5, p3, v6}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    throw p1
.end method

.method static blacklist newSchema(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageSetSchema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/android/framework/protobuf/MessageLite;",
            ")",
            "Lcom/android/framework/protobuf/MessageSetSchema<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/framework/protobuf/MessageSetSchema;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/MessageSetSchema;-><init>(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)V

    return-object v0
.end method

.method private blacklist parseMessageSetItemOrUnknownField(Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/FieldSet;Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/android/framework/protobuf/Reader;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TET;>;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TET;>;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v0

    .line 271
    sget v1, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2b

    .line 272
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_26

    .line 273
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 275
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 274
    invoke-virtual {p3, p2, v1, v0}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_21

    .line 277
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/android/framework/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V

    .line 279
    return v2

    .line 281
    :cond_21
    invoke-virtual {p5, p6, p1, v3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)Z

    move-result p1

    return p1

    .line 284
    :cond_26
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result p1

    return p1

    .line 304
    :cond_2b
    nop

    .line 305
    nop

    .line 306
    const/4 v0, 0x0

    move-object v1, v0

    .line 312
    :goto_2f
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v4

    .line 313
    const v5, 0x7fffffff

    if-ne v4, v5, :cond_39

    .line 314
    goto :goto_62

    .line 317
    :cond_39
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v4

    .line 318
    sget v5, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v4, v5, :cond_4c

    .line 319
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result v3

    .line 320
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 321
    invoke-virtual {p3, p2, v0, v3}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v0

    .line 322
    goto :goto_2f

    .line 323
    :cond_4c
    sget v5, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v4, v5, :cond_5b

    .line 324
    if-eqz v0, :cond_56

    .line 325
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/android/framework/protobuf/ExtensionSchema;->parseLengthPrefixedMessageSetItem(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V

    .line 327
    goto :goto_2f

    .line 330
    :cond_56
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 331
    goto :goto_2f

    .line 333
    :cond_5b
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->skipField()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 334
    nop

    .line 339
    :goto_62
    invoke-interface {p1}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result p1

    sget v4, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne p1, v4, :cond_76

    .line 344
    if-eqz v1, :cond_75

    .line 345
    if-eqz v0, :cond_72

    .line 348
    invoke-virtual {p3, v1, v0, p2, p4}, Lcom/android/framework/protobuf/ExtensionSchema;->parseMessageSetItem(Lcom/android/framework/protobuf/ByteString;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V

    goto :goto_75

    .line 350
    :cond_72
    invoke-virtual {p5, p6, v3, v1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    .line 353
    :cond_75
    :goto_75
    return v2

    .line 340
    :cond_76
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 337
    :cond_7b
    goto :goto_2f
.end method

.method private blacklist writeUnknownFieldsHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
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

    .line 111
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->writeAsMessageSetTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 112
    return-void
.end method


# virtual methods
.method public blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 56
    const/4 p1, 0x0

    return p1

    .line 58
    :cond_14
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_29

    .line 59
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 63
    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist getSerializedSize(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 364
    nop

    .line 366
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1}, Lcom/android/framework/protobuf/MessageSetSchema;->getUnknownFieldsSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 368
    iget-boolean v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_18

    .line 369
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result p1

    add-int/2addr v0, p1

    .line 372
    :cond_18
    return v0
.end method

.method public blacklist hashCode(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 69
    iget-boolean v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v1, :cond_1b

    .line 70
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    .line 71
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    .line 73
    :cond_1b
    return v0
.end method

.method public final blacklist isInitialized(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->isInitialized()Z

    move-result p1

    return p1
.end method

.method public blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 259
    return-void
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

    .line 216
    iget-object v1, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/MessageSetSchema;->mergeFromHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 217
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->hasExtensions:Z

    if-eqz v0, :cond_e

    .line 80
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    :cond_e
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V
    .registers 15
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

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 122
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v2

    if-ne v1, v2, :cond_13

    .line 123
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    .line 124
    iput-object v1, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-object v6, v1

    goto :goto_14

    .line 122
    :cond_13
    move-object v6, v1

    .line 126
    :goto_14
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 127
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    .line 128
    const/4 v0, 0x0

    move-object v1, v0

    .line 129
    :goto_1c
    if-ge p3, p4, :cond_df

    .line 130
    invoke-static {p2, p3, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 131
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 132
    sget p3, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v3, 0x2

    if-eq v2, p3, :cond_6e

    .line 133
    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result p3

    if-ne p3, v3, :cond_67

    .line 134
    iget-object p3, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    iget-object v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iget-object v3, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 137
    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 135
    invoke-virtual {p3, v1, v3, v5}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 138
    if-eqz v1, :cond_5e

    .line 141
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p3

    .line 142
    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 141
    invoke-virtual {p3, v2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p3

    .line 140
    invoke-static {p3, p2, v4, p4, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 144
    iget-object v2, v1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1c

    .line 146
    :cond_5e
    nop

    .line 147
    move-object v3, p2

    move v5, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_1c

    .line 151
    :cond_67
    move v5, p4

    move-object v7, p5

    invoke-static {v2, p2, v4, v5, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 153
    goto :goto_1c

    .line 156
    :cond_6e
    move v5, p4

    move-object v7, p5

    .line 157
    const/4 p3, 0x0

    move-object p4, v0

    .line 159
    :goto_72
    if-ge v4, v5, :cond_cf

    .line 160
    invoke-static {p2, v4, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p5

    .line 161
    iget v2, v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 162
    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v4

    .line 163
    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v8

    .line 164
    packed-switch v4, :pswitch_data_e8

    goto :goto_c5

    .line 179
    :pswitch_86
    if-eqz v1, :cond_a4

    .line 181
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v2

    .line 182
    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 181
    invoke-virtual {v2, v4}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    .line 180
    invoke-static {v2, p2, p5, v5, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 184
    iget-object p5, v1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v2, v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {p1, p5, v2}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 185
    goto :goto_72

    .line 187
    :cond_a4
    if-ne v8, v3, :cond_c5

    .line 188
    invoke-static {p2, p5, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 189
    iget-object p4, v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    check-cast p4, Lcom/android/framework/protobuf/ByteString;

    .line 190
    goto :goto_72

    .line 166
    :pswitch_af
    if-nez v8, :cond_c5

    .line 167
    invoke-static {p2, p5, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 168
    iget p3, v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 171
    iget-object p5, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    iget-object v1, v7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iget-object v2, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 173
    invoke-virtual {p5, v1, v2, p3}, Lcom/android/framework/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object p5

    move-object v1, p5

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 175
    goto :goto_72

    .line 197
    :cond_c5
    :goto_c5
    sget v4, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    if-ne v2, v4, :cond_ca

    .line 198
    goto :goto_d0

    .line 200
    :cond_ca
    invoke-static {v2, p2, p5, v5, v7}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v4

    .line 201
    goto :goto_72

    .line 159
    :cond_cf
    move p5, v4

    .line 203
    :goto_d0
    if-eqz p4, :cond_da

    .line 204
    nop

    .line 205
    invoke-static {p3, v3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p3

    .line 204
    invoke-virtual {v6, p3, p4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 207
    :cond_da
    move p3, p5

    move p4, v5

    move-object p5, v7

    goto/16 :goto_1c

    .line 208
    :cond_df
    move v5, p4

    if-ne p3, v5, :cond_e3

    .line 211
    return-void

    .line 209
    :cond_e3
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :pswitch_data_e8
    .packed-switch 0x2
        :pswitch_af
        :pswitch_86
    .end packed-switch
.end method

.method public blacklist newInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    instance-of v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_f

    .line 45
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0

    .line 47
    :cond_f
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 8
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

    .line 87
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->extensionSchema:Lcom/android/framework/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 92
    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_53

    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_53

    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-nez v3, :cond_53

    .line 95
    instance-of v3, v1, Lcom/android/framework/protobuf/LazyField$LazyEntry;

    if-eqz v3, :cond_47

    .line 96
    nop

    .line 97
    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    check-cast v1, Lcom/android/framework/protobuf/LazyField$LazyEntry;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/LazyField$LazyEntry;->getField()Lcom/android/framework/protobuf/LazyField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/LazyField;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 96
    invoke-interface {p2, v2, v1}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    goto :goto_52

    .line 99
    :cond_47
    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 101
    :goto_52
    goto :goto_a

    .line 93
    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_5b
    iget-object v0, p0, Lcom/android/framework/protobuf/MessageSetSchema;->unknownFieldSchema:Lcom/android/framework/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/MessageSetSchema;->writeUnknownFieldsHelper(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 103
    return-void
.end method
