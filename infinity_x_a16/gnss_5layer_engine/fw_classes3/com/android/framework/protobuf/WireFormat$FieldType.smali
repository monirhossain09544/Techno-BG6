.class public enum Lcom/android/framework/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist BOOL:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist BYTES:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist DOUBLE:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist FIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist FIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist FLOAT:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist INT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist INT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist MESSAGE:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SFIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SFIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist SINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist STRING:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist UINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

.field public static final enum blacklist UINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;


# instance fields
.field private final blacklist javaType:Lcom/android/framework/protobuf/WireFormat$JavaType;

.field private final blacklist wireType:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/framework/protobuf/WireFormat$FieldType;
    .registers 19

    .line 88
    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$FieldType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v3, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v4, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v5, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v6, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v7, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/android/framework/protobuf/WireFormat$FieldType;->BOOL:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v9, Lcom/android/framework/protobuf/WireFormat$FieldType;->STRING:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v10, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v11, Lcom/android/framework/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v12, Lcom/android/framework/protobuf/WireFormat$FieldType;->BYTES:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v13, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v14, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v16, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v17, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v18, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    filled-new-array/range {v1 .. v18}, [Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 89
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 90
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v2, "FLOAT"

    const/4 v5, 0x5

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->FLOAT:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 91
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v2, "INT64"

    const/4 v6, 0x2

    invoke-direct {v0, v2, v6, v1, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 92
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v2, "UINT64"

    const/4 v7, 0x3

    invoke-direct {v0, v2, v7, v1, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 93
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x4

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v8, "INT32"

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->INT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 94
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 95
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x6

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v8, "FIXED32"

    invoke-direct {v0, v8, v1, v2, v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->FIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 96
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v1, 0x7

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v8, "BOOL"

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->BOOL:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 97
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType$1;

    const/16 v1, 0x8

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v8, "STRING"

    invoke-direct {v0, v8, v1, v2, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->STRING:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 103
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType$2;

    const/16 v1, 0x9

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v8, "GROUP"

    invoke-direct {v0, v8, v1, v2, v7}, Lcom/android/framework/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 109
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType$3;

    const/16 v1, 0xa

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v7, "MESSAGE"

    invoke-direct {v0, v7, v1, v2, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 115
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType$4;

    const/16 v1, 0xb

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v7, "BYTES"

    invoke-direct {v0, v7, v1, v2, v6}, Lcom/android/framework/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->BYTES:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 121
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/16 v1, 0xc

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v6, "UINT32"

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->UINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 122
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/16 v1, 0xd

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->ENUM:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v6, "ENUM"

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 123
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/16 v1, 0xe

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v6, "SFIXED32"

    invoke-direct {v0, v6, v1, v2, v5}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 124
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/16 v1, 0xf

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v5, "SFIXED64"

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 125
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/16 v1, 0x10

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->INT:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v4, "SINT32"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT32:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 126
    new-instance v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/16 v1, 0x11

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->LONG:Lcom/android/framework/protobuf/WireFormat$JavaType;

    const-string v4, "SINT64"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->SINT64:Lcom/android/framework/protobuf/WireFormat$FieldType;

    .line 88
    invoke-static {}, Lcom/android/framework/protobuf/WireFormat$FieldType;->$values()[Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/android/framework/protobuf/WireFormat$FieldType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->javaType:Lcom/android/framework/protobuf/WireFormat$JavaType;

    .line 130
    iput p4, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->wireType:I

    .line 131
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;ILcom/android/framework/protobuf/WireFormat$1;)V
    .registers 6

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/WireFormat$FieldType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 88
    const-class v0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/WireFormat$FieldType;
    .registers 1

    .line 88
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public blacklist getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->javaType:Lcom/android/framework/protobuf/WireFormat$JavaType;

    return-object v0
.end method

.method public blacklist getWireType()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/framework/protobuf/WireFormat$FieldType;->wireType:I

    return v0
.end method

.method public blacklist isPackable()Z
    .registers 2

    .line 145
    const/4 v0, 0x1

    return v0
.end method
