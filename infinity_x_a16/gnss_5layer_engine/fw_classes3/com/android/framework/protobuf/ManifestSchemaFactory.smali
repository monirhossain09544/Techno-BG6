.class final Lcom/android/framework/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/android/framework/protobuf/SchemaFactory;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_FACTORY:Lcom/android/framework/protobuf/MessageInfoFactory;


# instance fields
.field private final blacklist messageInfoFactory:Lcom/android/framework/protobuf/MessageInfoFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    new-instance v0, Lcom/android/framework/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/android/framework/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-static {}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory;-><init>(Lcom/android/framework/protobuf/MessageInfoFactory;)V

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/MessageInfoFactory;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/MessageInfoFactory;

    iput-object p1, p0, Lcom/android/framework/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/android/framework/protobuf/MessageInfoFactory;

    .line 27
    return-void
.end method

.method private static blacklist allowExtensions(Lcom/android/framework/protobuf/MessageInfo;)Z
    .registers 2

    .line 92
    sget-object v0, Lcom/android/framework/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtoSyntax;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_14

    .line 96
    const/4 p0, 0x1

    return p0

    .line 94
    :pswitch_11
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method

.method private static blacklist getDefaultMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;
    .registers 4

    .line 101
    new-instance v0, Lcom/android/framework/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/framework/protobuf/MessageInfoFactory;

    .line 102
    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/android/framework/protobuf/MessageInfoFactory;)V

    .line 101
    return-object v0
.end method

.method private static blacklist getDescriptorMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;
    .registers 4

    .line 149
    :try_start_0
    const-string v0, "com.android.framework.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageInfoFactory;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 151
    :catch_19
    move-exception v0

    .line 152
    sget-object v0, Lcom/android/framework/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/android/framework/protobuf/MessageInfoFactory;

    return-object v0
.end method

.method private static blacklist newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;)Lcom/android/framework/protobuf/Schema;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/MessageInfo;",
            ")",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 53
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 54
    invoke-static {p1}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->allowExtensions(Lcom/android/framework/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 55
    nop

    .line 58
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->lite()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 59
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->lite()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 61
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->lite()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v6

    .line 62
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->lite()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v7

    .line 55
    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    goto :goto_41

    .line 63
    :cond_2a
    move-object v0, p0

    move-object v1, p1

    .line 66
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->lite()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 67
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->lite()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v3

    .line 68
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 70
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->lite()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v6

    .line 63
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    .line 54
    :goto_41
    return-object p0

    .line 72
    :cond_42
    move-object v0, p0

    move-object v1, p1

    invoke-static {v1}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->allowExtensions(Lcom/android/framework/protobuf/MessageInfo;)Z

    move-result p0

    if-eqz p0, :cond_64

    .line 73
    nop

    .line 76
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->full()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 77
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->full()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v3

    .line 78
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetFullSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 79
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->full()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v5

    .line 80
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->full()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v6

    .line 73
    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    goto :goto_7a

    .line 81
    :cond_64
    nop

    .line 84
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->full()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->full()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v3

    .line 86
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetFullSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 88
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->full()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v6

    .line 81
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    .line 72
    :goto_7a
    return-object p0
.end method


# virtual methods
.method public blacklist createSchema(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 33
    iget-object v0, p0, Lcom/android/framework/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/android/framework/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/MessageInfo;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 37
    const-class v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 39
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->lite()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v1

    .line 41
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    .line 38
    invoke-static {p1, v1, v0}, Lcom/android/framework/protobuf/MessageSetSchema;->newSchema(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 44
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetFullSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object p1

    .line 45
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->full()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v1

    .line 46
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    .line 43
    invoke-static {p1, v1, v0}, Lcom/android/framework/protobuf/MessageSetSchema;->newSchema(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageSetSchema;

    move-result-object p1

    return-object p1

    .line 49
    :cond_39
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method
