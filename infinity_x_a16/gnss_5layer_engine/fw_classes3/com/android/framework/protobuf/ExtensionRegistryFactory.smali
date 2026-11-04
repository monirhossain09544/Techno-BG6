.class final Lcom/android/framework/protobuf/ExtensionRegistryFactory;
.super Ljava/lang/Object;
.source "ExtensionRegistryFactory.java"


# static fields
.field static final blacklist EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist FULL_REGISTRY_CLASS_NAME:Ljava/lang/String; = "com.android.framework.protobuf.ExtensionRegistry"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->reflectExtensionRegistry()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 38
    const-string v0, "newInstance"

    invoke-static {v0}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    new-instance v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>()V

    :goto_e
    return-object v0
.end method

.method public static blacklist createEmpty()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 45
    const-string v0, "getEmptyRegistry"

    invoke-static {v0}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->invokeSubclassFactory(Ljava/lang/String;)Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    :goto_b
    return-object v0
.end method

.method private static final blacklist invokeSubclassFactory(Ljava/lang/String;)Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .registers 5

    .line 56
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 57
    return-object v1

    .line 61
    :cond_6
    :try_start_6
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 62
    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    .line 61
    return-object p0

    .line 63
    :catch_18
    move-exception p0

    .line 64
    return-object v1
.end method

.method static blacklist isFullRegistry(Lcom/android/framework/protobuf/ExtensionRegistryLite;)Z
    .registers 2

    .line 51
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->EXTENSION_REGISTRY_CLASS:Ljava/lang/Class;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 51
    :goto_13
    return p0
.end method

.method static blacklist reflectExtensionRegistry()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 28
    :try_start_0
    const-string v0, "com.android.framework.protobuf.ExtensionRegistry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 29
    :catch_7
    move-exception v0

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
