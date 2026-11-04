.class final Lcom/android/framework/protobuf/ExtensionSchemaLite;
.super Lcom/android/framework/protobuf/ExtensionSchema;
.source "ExtensionSchemaLite.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/ExtensionSchema<",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/framework/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist extensionNumber(Ljava/util/Map$Entry;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 307
    nop

    .line 308
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 309
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result p1

    return p1
.end method

.method blacklist findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;
    .registers 4

    .line 518
    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    return-object p1
.end method

.method blacklist getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    return-object p1
.end method

.method blacklist getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 37
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    return-object p1
.end method

.method blacklist hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z
    .registers 2

    .line 22
    instance-of p1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    return p1
.end method

.method blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ExtensionSchemaLite;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldSet;->makeImmutable()V

    .line 43
    return-void
.end method

.method blacklist parseExtension(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    check-cast p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 57
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v1

    .line 59
    iget-object v0, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 60
    nop

    .line 61
    sget-object p4, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_26c

    .line 169
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Type cannot be packed: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 170
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :pswitch_45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 157
    iget-object p2, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 162
    invoke-virtual {p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v3

    .line 158
    move-object v0, p1

    move-object v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p6

    .line 165
    nop

    .line 166
    goto/16 :goto_f0

    .line 148
    :pswitch_5d
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 150
    nop

    .line 151
    goto/16 :goto_f0

    .line 141
    :pswitch_69
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 143
    nop

    .line 144
    goto/16 :goto_f0

    .line 134
    :pswitch_75
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 136
    nop

    .line 137
    goto/16 :goto_f0

    .line 127
    :pswitch_81
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 129
    nop

    .line 130
    goto/16 :goto_f0

    .line 120
    :pswitch_8d
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 122
    nop

    .line 123
    goto :goto_f0

    .line 113
    :pswitch_98
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 115
    nop

    .line 116
    goto :goto_f0

    .line 106
    :pswitch_a3
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 108
    nop

    .line 109
    goto :goto_f0

    .line 99
    :pswitch_ae
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 101
    nop

    .line 102
    goto :goto_f0

    .line 92
    :pswitch_b9
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 94
    nop

    .line 95
    goto :goto_f0

    .line 85
    :pswitch_c4
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 87
    nop

    .line 88
    goto :goto_f0

    .line 78
    :pswitch_cf
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 80
    nop

    .line 81
    goto :goto_f0

    .line 71
    :pswitch_da
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 73
    nop

    .line 74
    goto :goto_f0

    .line 64
    :pswitch_e5
    move-object v4, p6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p2, v2}, Lcom/android/framework/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 66
    nop

    .line 67
    nop

    .line 172
    :goto_f0
    iget-object p1, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p1, v2}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 173
    goto/16 :goto_26a

    .line 59
    :cond_f7
    move-object v0, p1

    move-object v4, p6

    move-object v5, p7

    .line 174
    nop

    .line 176
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p1

    sget-object p6, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne p1, p6, :cond_11e

    .line 177
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result p1

    .line 178
    iget-object p2, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object p2

    .line 179
    if-nez p2, :cond_118

    .line 180
    invoke-static {v0, v1, p1, v4, v5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 185
    :cond_118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 186
    goto/16 :goto_23c

    .line 187
    :cond_11e
    sget-object p1, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p6

    aget p1, p1, p6

    packed-switch p1, :pswitch_data_28c

    const/4 p1, 0x0

    goto/16 :goto_23c

    .line 261
    :pswitch_130
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p1

    if-nez p1, :cond_162

    .line 262
    iget-object p1, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    .line 263
    instance-of p6, p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz p6, :cond_162

    .line 264
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object p6

    .line 265
    move-object p7, p1

    check-cast p7, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {p7}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p7

    if-nez p7, :cond_15e

    .line 266
    invoke-interface {p6}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p7

    .line 267
    invoke-interface {p6, p7, p1}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    iget-object p1, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p1, p7}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 269
    move-object p1, p7

    .line 271
    :cond_15e
    invoke-interface {p2, p1, p6, p4}, Lcom/android/framework/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 272
    return-object v4

    .line 275
    :cond_162
    nop

    .line 277
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 276
    invoke-interface {p2, p1, p4}, Lcom/android/framework/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 278
    goto/16 :goto_23c

    .line 238
    :pswitch_171
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p1

    if-nez p1, :cond_1a3

    .line 239
    iget-object p1, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    .line 240
    instance-of p6, p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz p6, :cond_1a3

    .line 241
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object p6

    .line 242
    move-object p7, p1

    check-cast p7, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {p7}, Lcom/android/framework/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p7

    if-nez p7, :cond_19f

    .line 243
    invoke-interface {p6}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p7

    .line 244
    invoke-interface {p6, p7, p1}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    iget-object p1, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p1, p7}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 246
    move-object p1, p7

    .line 248
    :cond_19f
    invoke-interface {p2, p1, p6, p4}, Lcom/android/framework/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 249
    return-object v4

    .line 252
    :cond_1a3
    nop

    .line 254
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 253
    invoke-interface {p2, p1, p4}, Lcom/android/framework/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 255
    goto/16 :goto_23c

    .line 232
    :pswitch_1b2
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 233
    goto/16 :goto_23c

    .line 213
    :pswitch_1b8
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    .line 214
    goto/16 :goto_23c

    .line 281
    :pswitch_1be
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :pswitch_1c6
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 229
    goto/16 :goto_23c

    .line 225
    :pswitch_1d0
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 226
    goto :goto_23c

    .line 222
    :pswitch_1d9
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 223
    goto :goto_23c

    .line 219
    :pswitch_1e2
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 220
    goto :goto_23c

    .line 216
    :pswitch_1eb
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 217
    goto :goto_23c

    .line 210
    :pswitch_1f4
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 211
    goto :goto_23c

    .line 207
    :pswitch_1fd
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 208
    goto :goto_23c

    .line 204
    :pswitch_206
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 205
    goto :goto_23c

    .line 201
    :pswitch_20f
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 202
    goto :goto_23c

    .line 198
    :pswitch_218
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 199
    goto :goto_23c

    .line 195
    :pswitch_221
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 196
    goto :goto_23c

    .line 192
    :pswitch_22a
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 193
    goto :goto_23c

    .line 189
    :pswitch_233
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 190
    nop

    .line 284
    :goto_23c
    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p2

    if-eqz p2, :cond_248

    .line 285
    iget-object p2, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p2, p1}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_269

    .line 287
    :cond_248
    sget-object p2, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p4

    aget p2, p2, p4

    packed-switch p2, :pswitch_data_2b4

    goto :goto_264

    .line 291
    :pswitch_258
    iget-object p2, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p2}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p2

    .line 292
    if-eqz p2, :cond_264

    .line 293
    invoke-static {p2, p1}, Lcom/android/framework/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    :cond_264
    :goto_264
    iget-object p2, p3, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p2, p1}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 302
    :goto_269
    move-object p6, v4

    :goto_26a
    return-object p6

    nop

    :pswitch_data_26c
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_da
        :pswitch_cf
        :pswitch_c4
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
        :pswitch_8d
        :pswitch_81
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_45
    .end packed-switch

    :pswitch_data_28c
    .packed-switch 0x1
        :pswitch_233
        :pswitch_22a
        :pswitch_221
        :pswitch_218
        :pswitch_20f
        :pswitch_206
        :pswitch_1fd
        :pswitch_1f4
        :pswitch_1eb
        :pswitch_1e2
        :pswitch_1d9
        :pswitch_1d0
        :pswitch_1c6
        :pswitch_1be
        :pswitch_1b8
        :pswitch_1b2
        :pswitch_171
        :pswitch_130
    .end packed-switch

    :pswitch_data_2b4
    .packed-switch 0x11
        :pswitch_258
        :pswitch_258
    .end packed-switch
.end method

.method blacklist parseLengthPrefixedMessageSetItem(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    check-cast p2, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 530
    nop

    .line 531
    invoke-virtual {p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/android/framework/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 532
    iget-object p2, p2, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, p2, p1}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method blacklist parseMessageSetItem(Lcom/android/framework/protobuf/ByteString;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    check-cast p2, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 545
    invoke-virtual {p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object p1

    .line 549
    invoke-interface {v0, p1, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 550
    iget-object p2, p2, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 551
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 552
    return-void
.end method

.method blacklist serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Writer;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    nop

    .line 315
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 316
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 317
    sget-object v1, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_31e

    goto/16 :goto_1ac

    .line 438
    :pswitch_1f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 439
    if-eqz v1, :cond_1ac

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1ac

    .line 440
    nop

    .line 441
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    .line 442
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 444
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 440
    invoke-static {v0, p2, p1, v1}, Lcom/android/framework/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_1ac

    .line 426
    :pswitch_4d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 427
    if-eqz v1, :cond_79

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_79

    .line 428
    nop

    .line 429
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    .line 430
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 432
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    .line 428
    invoke-static {v0, p2, p1, v1}, Lcom/android/framework/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V

    .line 435
    :cond_79
    goto/16 :goto_1ac

    .line 421
    :pswitch_7b
    nop

    .line 422
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 421
    invoke-static {v0, p2, p1}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    .line 423
    goto/16 :goto_1ac

    .line 375
    :pswitch_8b
    nop

    .line 376
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 375
    invoke-static {v0, p2, p1}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V

    .line 377
    goto/16 :goto_1ac

    .line 414
    :pswitch_9b
    nop

    .line 415
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 416
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 418
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 414
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 419
    goto/16 :goto_1ac

    .line 407
    :pswitch_af
    nop

    .line 408
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 409
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 411
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 407
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 412
    goto/16 :goto_1ac

    .line 400
    :pswitch_c3
    nop

    .line 401
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 402
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 404
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 400
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 405
    goto/16 :goto_1ac

    .line 393
    :pswitch_d7
    nop

    .line 394
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 395
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 397
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 393
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 398
    goto/16 :goto_1ac

    .line 386
    :pswitch_eb
    nop

    .line 387
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 388
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 390
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 386
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 391
    goto/16 :goto_1ac

    .line 379
    :pswitch_ff
    nop

    .line 380
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 381
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 383
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 379
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 384
    goto/16 :goto_1ac

    .line 368
    :pswitch_113
    nop

    .line 369
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 370
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 372
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 368
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 373
    goto/16 :goto_1ac

    .line 361
    :pswitch_127
    nop

    .line 362
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 363
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 365
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 361
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 366
    goto :goto_1ac

    .line 354
    :pswitch_13a
    nop

    .line 355
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 356
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 358
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 354
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 359
    goto :goto_1ac

    .line 347
    :pswitch_14d
    nop

    .line 348
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 349
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 351
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 347
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 352
    goto :goto_1ac

    .line 340
    :pswitch_160
    nop

    .line 341
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 342
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 344
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 340
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 345
    goto :goto_1ac

    .line 333
    :pswitch_173
    nop

    .line 334
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 335
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 337
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 333
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 338
    goto :goto_1ac

    .line 326
    :pswitch_186
    nop

    .line 327
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 328
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 330
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 326
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 331
    goto :goto_1ac

    .line 319
    :pswitch_199
    nop

    .line 320
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 321
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 323
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v0

    .line 319
    invoke-static {v1, p2, p1, v0}, Lcom/android/framework/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V

    .line 324
    nop

    .line 447
    :cond_1ac
    :goto_1ac
    goto/16 :goto_31c

    .line 450
    :cond_1ae
    sget-object v1, Lcom/android/framework/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_346

    goto/16 :goto_31c

    .line 506
    :pswitch_1bf
    nop

    .line 507
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    .line 508
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 509
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 506
    invoke-interface {p1, v0, v1, p2}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    goto/16 :goto_31c

    .line 500
    :pswitch_1dd
    nop

    .line 501
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    .line 502
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 503
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 500
    invoke-interface {p1, v0, v1, p2}, Lcom/android/framework/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 504
    goto/16 :goto_31c

    .line 497
    :pswitch_1fb
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 498
    goto/16 :goto_31c

    .line 476
    :pswitch_20a
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 477
    goto/16 :goto_31c

    .line 494
    :pswitch_219
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    .line 495
    goto/16 :goto_31c

    .line 491
    :pswitch_22c
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    .line 492
    goto/16 :goto_31c

    .line 488
    :pswitch_23f
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    .line 489
    goto/16 :goto_31c

    .line 485
    :pswitch_252
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    .line 486
    goto/16 :goto_31c

    .line 482
    :pswitch_265
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    .line 483
    goto/16 :goto_31c

    .line 479
    :pswitch_278
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    .line 480
    goto/16 :goto_31c

    .line 473
    :pswitch_28b
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    .line 474
    goto/16 :goto_31c

    .line 470
    :pswitch_29e
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    .line 471
    goto :goto_31c

    .line 467
    :pswitch_2b0
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    .line 468
    goto :goto_31c

    .line 464
    :pswitch_2c2
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    .line 465
    goto :goto_31c

    .line 461
    :pswitch_2d4
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    .line 462
    goto :goto_31c

    .line 458
    :pswitch_2e6
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    .line 459
    goto :goto_31c

    .line 455
    :pswitch_2f8
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    .line 456
    goto :goto_31c

    .line 452
    :pswitch_30a
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    .line 453
    nop

    .line 513
    :goto_31c
    return-void

    nop

    :pswitch_data_31e
    .packed-switch 0x1
        :pswitch_199
        :pswitch_186
        :pswitch_173
        :pswitch_160
        :pswitch_14d
        :pswitch_13a
        :pswitch_127
        :pswitch_113
        :pswitch_ff
        :pswitch_eb
        :pswitch_d7
        :pswitch_c3
        :pswitch_af
        :pswitch_9b
        :pswitch_8b
        :pswitch_7b
        :pswitch_4d
        :pswitch_1f
    .end packed-switch

    :pswitch_data_346
    .packed-switch 0x1
        :pswitch_30a
        :pswitch_2f8
        :pswitch_2e6
        :pswitch_2d4
        :pswitch_2c2
        :pswitch_2b0
        :pswitch_29e
        :pswitch_28b
        :pswitch_278
        :pswitch_265
        :pswitch_252
        :pswitch_23f
        :pswitch_22c
        :pswitch_219
        :pswitch_20a
        :pswitch_1fb
        :pswitch_1dd
        :pswitch_1bf
    .end packed-switch
.end method

.method blacklist setExtensions(Ljava/lang/Object;Lcom/android/framework/protobuf/FieldSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p2, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 33
    return-void
.end method
