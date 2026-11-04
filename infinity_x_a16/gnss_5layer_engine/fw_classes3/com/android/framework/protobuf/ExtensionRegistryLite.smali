.class public Lcom/android/framework/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;,
        Lcom/android/framework/protobuf/ExtensionRegistryLite$ExtensionClassHolder;
    }
.end annotation


# static fields
.field static final blacklist EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

.field static final blacklist EXTENSION_CLASS_NAME:Ljava/lang/String; = "com.android.framework.protobuf.Extension"

.field private static blacklist doFullRuntimeInheritanceCheck:Z

.field private static volatile blacklist eagerlyParseMessageSets:Z

.field private static volatile blacklist emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;


# instance fields
.field private final blacklist extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    .line 172
    new-instance v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 170
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_e

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_16

    .line 178
    :cond_e
    iget-object p1, p1, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 180
    :goto_16
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 187
    return-void
.end method

.method public static blacklist getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 103
    sget-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-nez v0, :cond_7

    .line 104
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    return-object v0

    .line 106
    :cond_7
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 107
    if-nez v0, :cond_1d

    .line 108
    const-class v1, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    monitor-enter v1

    .line 109
    :try_start_e
    sget-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 110
    if-nez v0, :cond_18

    .line 111
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->createEmpty()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 113
    :cond_18
    monitor-exit v1

    goto :goto_1d

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    .line 115
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static blacklist isEagerlyParseMessageSets()Z
    .registers 1

    .line 77
    sget-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return v0
.end method

.method public static blacklist newInstance()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 91
    sget-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_9

    .line 92
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->create()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    goto :goto_e

    .line 93
    :cond_9
    new-instance v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>()V

    .line 91
    :goto_e
    return-object v0
.end method

.method public static blacklist setEagerlyParseMessageSets(Z)V
    .registers 1

    .line 81
    sput-boolean p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 82
    return-void
.end method


# virtual methods
.method public final blacklist add(Lcom/android/framework/protobuf/ExtensionLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "**>;)V"
        }
    .end annotation

    .line 148
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 149
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->add(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 151
    :cond_12
    sget-boolean v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->doFullRuntimeInheritanceCheck:Z

    if-eqz v0, :cond_47

    invoke-static {p0}, Lcom/android/framework/protobuf/ExtensionRegistryFactory;->isFullRegistry(Lcom/android/framework/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 153
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "add"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Lcom/android/framework/protobuf/ExtensionRegistryLite$ExtensionClassHolder;->INSTANCE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_35} :catch_36

    .line 157
    goto :goto_47

    .line 154
    :catch_36
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 156
    const-string v2, "Could not invoke ExtensionRegistry#add for %s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 159
    :cond_47
    :goto_47
    return-void
.end method

.method public final blacklist add(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 139
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 138
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public blacklist findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/framework/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/android/framework/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 132
    return-object p1
.end method

.method public blacklist getUnmodifiable()Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 120
    new-instance v0, Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method
