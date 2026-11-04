.class final Lcom/android/framework/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "Protobuf.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/framework/protobuf/Protobuf;


# instance fields
.field private final blacklist schemaCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/android/framework/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/android/framework/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/Protobuf;->INSTANCE:Lcom/android/framework/protobuf/Protobuf;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 116
    new-instance v0, Lcom/android/framework/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;

    .line 117
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/framework/protobuf/Protobuf;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/framework/protobuf/Protobuf;->INSTANCE:Lcom/android/framework/protobuf/Protobuf;

    return-object v0
.end method


# virtual methods
.method blacklist getTotalSchemaSize()I
    .registers 5

    .line 120
    nop

    .line 121
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/Schema;

    .line 122
    instance-of v3, v2, Lcom/android/framework/protobuf/MessageSchema;

    if-eqz v3, :cond_23

    .line 123
    check-cast v2, Lcom/android/framework/protobuf/MessageSchema;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/MessageSchema;->getSchemaSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 125
    :cond_23
    goto :goto_c

    .line 126
    :cond_24
    return v1
.end method

.method blacklist isInitialized(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/Protobuf;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 44
    return-void
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
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

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 50
    return-void
.end method

.method public blacklist registerSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    .line 94
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "schema"

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/Schema;

    return-object p1
.end method

.method public blacklist registerSchemaOverride(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;"
        }
    .end annotation

    .line 110
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v0, "schema"

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/Schema;

    return-object p1
.end method

.method public blacklist schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;
    .registers 3
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

    .line 64
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Schema;

    .line 67
    if-nez v0, :cond_1c

    .line 68
    iget-object v0, p0, Lcom/android/framework/protobuf/Protobuf;->schemaFactory:Lcom/android/framework/protobuf/SchemaFactory;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/SchemaFactory;->createSchema(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/Schema;)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    .line 71
    if-eqz p1, :cond_1c

    .line 73
    move-object v0, p1

    .line 76
    :cond_1c
    return-object v0
.end method

.method public blacklist schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 39
    return-void
.end method
