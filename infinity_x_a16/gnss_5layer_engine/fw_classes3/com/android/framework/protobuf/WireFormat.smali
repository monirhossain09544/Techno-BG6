.class public final Lcom/android/framework/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/WireFormat$FieldType;,
        Lcom/android/framework/protobuf/WireFormat$Utf8Validation;,
        Lcom/android/framework/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final blacklist FIXED32_SIZE:I = 0x4

.field static final blacklist FIXED64_SIZE:I = 0x8

.field static final blacklist MAX_VARINT32_SIZE:I = 0x5

.field static final blacklist MAX_VARINT64_SIZE:I = 0xa

.field static final blacklist MAX_VARINT_SIZE:I = 0xa

.field static final blacklist MESSAGE_SET_ITEM:I = 0x1

.field static final blacklist MESSAGE_SET_ITEM_END_TAG:I

.field static final blacklist MESSAGE_SET_ITEM_TAG:I

.field static final blacklist MESSAGE_SET_MESSAGE:I = 0x3

.field static final blacklist MESSAGE_SET_MESSAGE_TAG:I

.field static final blacklist MESSAGE_SET_TYPE_ID:I = 0x2

.field static final blacklist MESSAGE_SET_TYPE_ID_TAG:I

.field static final blacklist TAG_TYPE_BITS:I = 0x3

.field static final blacklist TAG_TYPE_MASK:I = 0x7

.field public static final blacklist WIRETYPE_END_GROUP:I = 0x4

.field public static final blacklist WIRETYPE_FIXED32:I = 0x5

.field public static final blacklist WIRETYPE_FIXED64:I = 0x1

.field public static final blacklist WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field public static final blacklist WIRETYPE_START_GROUP:I = 0x3

.field public static final blacklist WIRETYPE_VARINT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    .line 156
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    .line 157
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 158
    nop

    .line 159
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/android/framework/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    .line 158
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTagFieldNumber(I)I
    .registers 1

    .line 49
    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static blacklist getTagWireType(I)I
    .registers 1

    .line 44
    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static blacklist makeTag(II)I
    .registers 2

    .line 54
    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method static blacklist readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Lcom/android/framework/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_aa

    .line 246
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 230
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 228
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 226
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 222
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 239
    :pswitch_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :pswitch_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :pswitch_5c
    invoke-virtual {p2, p0}, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;->readString(Lcom/android/framework/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 220
    :pswitch_61
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 218
    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 216
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 214
    :pswitch_7c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 212
    :pswitch_85
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 210
    :pswitch_8e
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 208
    :pswitch_97
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 206
    :pswitch_a0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_97
        :pswitch_8e
        :pswitch_85
        :pswitch_7c
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_5c
        :pswitch_53
        :pswitch_4a
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_21
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method
