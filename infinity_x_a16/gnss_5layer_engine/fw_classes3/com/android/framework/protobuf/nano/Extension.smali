.class public Lcom/android/framework/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist TYPE_BOOL:I = 0x8

.field public static final blacklist TYPE_BYTES:I = 0xc

.field public static final blacklist TYPE_DOUBLE:I = 0x1

.field public static final blacklist TYPE_ENUM:I = 0xe

.field public static final blacklist TYPE_FIXED32:I = 0x7

.field public static final blacklist TYPE_FIXED64:I = 0x6

.field public static final blacklist TYPE_FLOAT:I = 0x2

.field public static final blacklist TYPE_GROUP:I = 0xa

.field public static final blacklist TYPE_INT32:I = 0x5

.field public static final blacklist TYPE_INT64:I = 0x3

.field public static final blacklist TYPE_MESSAGE:I = 0xb

.field public static final blacklist TYPE_SFIXED32:I = 0xf

.field public static final blacklist TYPE_SFIXED64:I = 0x10

.field public static final blacklist TYPE_SINT32:I = 0x11

.field public static final blacklist TYPE_SINT64:I = 0x12

.field public static final blacklist TYPE_STRING:I = 0x9

.field public static final blacklist TYPE_UINT32:I = 0xd

.field public static final blacklist TYPE_UINT64:I = 0x4


# instance fields
.field protected final blacklist clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final blacklist repeated:Z

.field public final blacklist tag:I

.field protected final blacklist type:I


# direct methods
.method private constructor blacklist <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    .line 169
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    .line 170
    iput p3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    .line 171
    iput-boolean p4, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    .line 172
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/Class;IZLcom/android/framework/protobuf/nano/Extension$1;)V
    .registers 6

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-void
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;I)Lcom/android/framework/protobuf/nano/Extension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createPrimitiveTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method public static blacklist createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "[TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;[TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    long-to-int p2, p2

    const/4 p3, 0x1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/android/framework/protobuf/nano/Extension;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;JJJ)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 139
    move-wide v0, p2

    move-object p2, p1

    move p1, p0

    new-instance p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int p3, v0

    long-to-int p5, p4

    long-to-int p6, p6

    const/4 p4, 0x1

    invoke-direct/range {p0 .. p6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object p0
.end method

.method private blacklist getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 193
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 194
    iget-object v4, v3, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v4, v4

    if-eqz v4, :cond_1b

    .line 195
    invoke-virtual {p0, v3, v0}, Lcom/android/framework/protobuf/nano/Extension;->readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V

    .line 192
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 199
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 200
    if-nez p1, :cond_26

    .line 201
    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_26
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 204
    nop

    :goto_37
    if-ge v1, p1, :cond_43

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 207
    :cond_43
    return-object v2
.end method

.method private blacklist getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 213
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    const/4 p1, 0x0

    return-object p1

    .line 216
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 217
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected blacklist computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 6

    .line 306
    nop

    .line 307
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 308
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 309
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 310
    if-eqz v3, :cond_18

    .line 311
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 308
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 314
    :cond_1b
    return v2
.end method

.method blacklist computeSerializedSize(Ljava/lang/Object;)I
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_9

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 300
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected blacklist computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 4

    .line 319
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 320
    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v1, :pswitch_data_34

    .line 328
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :pswitch_26
    check-cast p1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 326
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result p1

    return p1

    .line 322
    :pswitch_2d
    check-cast p1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 323
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result p1

    return p1

    :pswitch_data_34
    .packed-switch 0xa
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method

.method final blacklist getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 183
    if-nez p1, :cond_4

    .line 184
    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_4
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_11

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method protected blacklist readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 6

    .line 222
    const-string v0, "Error creating instance of class "

    iget-boolean v1, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_f

    :cond_d
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    .line 224
    :goto_f
    :try_start_f
    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v2, :pswitch_data_84

    .line 234
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_31

    .line 230
    :pswitch_17
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 231
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 232
    return-object v2

    .line 226
    :pswitch_21
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 227
    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/android/framework/protobuf/nano/MessageNano;I)V

    .line 228
    return-object v2

    .line 234
    :goto_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4a
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_4a} :catch_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_4a} :catch_53
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4a} :catch_4a

    .line 242
    :catch_4a
    move-exception p1

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error reading extension field"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 239
    :catch_53
    move-exception p1

    .line 240
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 236
    :catch_6b
    move-exception p1

    .line 237
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_84
    .packed-switch 0xa
        :pswitch_21
        :pswitch_17
    .end packed-switch
.end method

.method protected blacklist readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object p1, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method protected blacklist writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6

    .line 287
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 288
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 289
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_10

    .line 291
    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 288
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 294
    :cond_13
    return-void
.end method

.method protected blacklist writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4

    .line 263
    :try_start_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 264
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v0, :pswitch_data_46

    .line 277
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_25

    .line 273
    :pswitch_d
    check-cast p1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 274
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 275
    goto :goto_23

    .line 266
    :pswitch_13
    check-cast p1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 267
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 268
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 270
    const/4 p1, 0x4

    invoke-virtual {p2, v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 271
    nop

    .line 282
    :goto_23
    nop

    .line 283
    return-void

    .line 277
    :goto_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3e} :catch_3e

    .line 279
    :catch_3e
    move-exception p1

    .line 281
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_46
    .packed-switch 0xa
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_8

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_b

    .line 256
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 258
    :goto_b
    return-void
.end method
