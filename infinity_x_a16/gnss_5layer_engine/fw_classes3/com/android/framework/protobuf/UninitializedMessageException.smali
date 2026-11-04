.class public Lcom/android/framework/protobuf/UninitializedMessageException;
.super Ljava/lang/RuntimeException;
.source "UninitializedMessageException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x679fdd3b29a24eb3L


# instance fields
.field private final blacklist missingFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 2

    .line 28
    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/UninitializedMessageException;->missingFields:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/android/framework/protobuf/UninitializedMessageException;->buildDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/android/framework/protobuf/UninitializedMessageException;->missingFields:Ljava/util/List;

    .line 37
    return-void
.end method

.method private static blacklist buildDescription(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message missing required fields: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    nop

    .line 63
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    if-eqz v1, :cond_1d

    .line 65
    const/4 v1, 0x0

    goto :goto_22

    .line 67
    :cond_1d
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    goto :goto_d

    .line 71
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .registers 3

    .line 56
    new-instance v0, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/UninitializedMessageException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getMissingFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/framework/protobuf/UninitializedMessageException;->missingFields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
