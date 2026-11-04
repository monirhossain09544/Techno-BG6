.class final Lcom/android/framework/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/framework/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist cachedSizeField:Ljava/lang/reflect/Field;

.field private final blacklist enforceUtf8:Z

.field private final blacklist enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

.field private final blacklist field:Ljava/lang/reflect/Field;

.field private final blacklist fieldNumber:I

.field private final blacklist mapDefaultEntry:Ljava/lang/Object;

.field private final blacklist messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist oneof:Lcom/android/framework/protobuf/OneofInfo;

.field private final blacklist oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist presenceField:Ljava/lang/reflect/Field;

.field private final blacklist presenceMask:I

.field private final blacklist required:Z

.field private final blacklist type:Lcom/android/framework/protobuf/FieldType;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 312
    iput-object p3, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    .line 313
    iput-object p4, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    .line 314
    iput p2, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    .line 315
    iput-object p5, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    .line 316
    iput p6, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    .line 317
    iput-boolean p7, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    .line 318
    iput-boolean p8, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    .line 319
    iput-object p9, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    .line 320
    iput-object p10, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 321
    iput-object p11, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    .line 322
    iput-object p12, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    .line 323
    iput-object p13, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    .line 324
    return-void
.end method

.method private static blacklist checkFieldNumber(I)V
    .registers 4

    .line 238
    if-lez p0, :cond_3

    .line 241
    return-void

    .line 239
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNumber must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forExplicitPresenceField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21

    .line 167
    move-object/from16 v5, p3

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 168
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "presenceField"

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    if-eqz v5, :cond_3e

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move/from16 v6, p4

    goto :goto_40

    .line 172
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "presenceMask must have exactly one bit set: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move/from16 v6, p4

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_3e
    move/from16 v6, p4

    .line 175
    :goto_40
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static blacklist forField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Z)Lcom/android/framework/protobuf/FieldInfo;
    .registers 18

    .line 44
    move-object/from16 v3, p2

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 45
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    .line 50
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 48
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 19

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 117
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static blacklist forLegacyRequiredField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 21

    .line 252
    move-object/from16 v5, p3

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 253
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v0, "presenceField"

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    if-eqz v5, :cond_3e

    invoke-static/range {p4 .. p4}, Lcom/android/framework/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move/from16 v6, p4

    goto :goto_40

    .line 257
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "presenceMask must have exactly one bit set: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move/from16 v6, p4

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_3e
    move/from16 v6, p4

    .line 260
    :goto_40
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static blacklist forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 19

    .line 278
    const-string v0, "mapDefaultEntry"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 280
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    sget-object v4, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static blacklist forOneofMemberField(ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/android/framework/protobuf/Internal$EnumVerifier;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Lcom/android/framework/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    .line 210
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 211
    const-string v0, "fieldType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v0, "oneof"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v0, "oneofStoredType"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p1}, Lcom/android/framework/protobuf/FieldType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 221
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    move/from16 v8, p4

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 215
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist forPackedField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 18

    .line 69
    move-object/from16 v3, p2

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 70
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    .line 75
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 73
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 20

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 141
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static blacklist forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;)Lcom/android/framework/protobuf/FieldInfo;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/android/framework/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/framework/protobuf/FieldInfo;"
        }
    .end annotation

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/android/framework/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 95
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v0, "fieldType"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v0, "messageClass"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    new-instance v1, Lcom/android/framework/protobuf/FieldInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/framework/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/android/framework/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/android/framework/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method private static blacklist isExactlyOneBitSet(I)Z
    .registers 2

    .line 553
    if-eqz p0, :cond_9

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static blacklist newBuilder()Lcom/android/framework/protobuf/FieldInfo$Builder;
    .registers 2

    .line 424
    new-instance v0, Lcom/android/framework/protobuf/FieldInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldInfo$Builder;-><init>(Lcom/android/framework/protobuf/FieldInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/framework/protobuf/FieldInfo;)I
    .registers 3

    .line 362
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    iget p1, p1, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    check-cast p1, Lcom/android/framework/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldInfo;->compareTo(Lcom/android/framework/protobuf/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public blacklist getCachedSizeField()Ljava/lang/reflect/Field;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getEnumVerifier()Lcom/android/framework/protobuf/Internal$EnumVerifier;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enumVerifier:Lcom/android/framework/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public blacklist getField()Ljava/lang/reflect/Field;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getFieldNumber()I
    .registers 2

    .line 328
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public blacklist getListElementType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getMapDefaultEntry()Ljava/lang/Object;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getMessageFieldClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 411
    sget-object v0, Lcom/android/framework/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 419
    const/4 v0, 0x0

    return-object v0

    .line 417
    :pswitch_f
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0

    .line 414
    :pswitch_12
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    :goto_1f
    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public blacklist getOneof()Lcom/android/framework/protobuf/OneofInfo;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneof:Lcom/android/framework/protobuf/OneofInfo;

    return-object v0
.end method

.method public blacklist getOneofStoredType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getPresenceField()Ljava/lang/reflect/Field;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getPresenceMask()I
    .registers 2

    .line 387
    iget v0, p0, Lcom/android/framework/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public blacklist getType()Lcom/android/framework/protobuf/FieldType;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldInfo;->type:Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method

.method public blacklist isEnforceUtf8()Z
    .registers 2

    .line 399
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public blacklist isRequired()Z
    .registers 2

    .line 392
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldInfo;->required:Z

    return v0
.end method
