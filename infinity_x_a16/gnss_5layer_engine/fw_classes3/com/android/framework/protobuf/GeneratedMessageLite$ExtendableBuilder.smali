.class public abstract Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;",
        "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1013
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    .line 1014
    return-void
.end method

.method private blacklist ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 1032
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1033
    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->clone()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object v0, v1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 1036
    :cond_16
    return-object v0
.end method

.method private blacklist verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 1050
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 1056
    return-void

    .line 1052
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final blacklist addExtension(Lcom/android/framework/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1113
    # invokes: Lcom/android/framework/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1117
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1118
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1119
    return-object p0
.end method

.method public final blacklist buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->isMutable()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1042
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0

    .line 1045
    :cond_f
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldSet;->makeImmutable()V

    .line 1046
    invoke-super {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite;
    .registers 2

    .line 1006
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist buildPartial()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 1006
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist clearExtension(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 1124
    # invokes: Lcom/android/framework/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 1126
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1127
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1128
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    iget-object p1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/FieldSet;->clearField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 1129
    return-object p0
.end method

.method protected blacklist copyOnWriteInternal()V
    .registers 3

    .line 1024
    invoke-super {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;->copyOnWriteInternal()V

    .line 1025
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-static {}, Lcom/android/framework/protobuf/FieldSet;->emptySet()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1

    if-eq v0, v1, :cond_1f

    .line 1026
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldSet;->clone()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 1028
    :cond_1f
    return-void
.end method

.method public final blacklist getExtension(Lcom/android/framework/protobuf/ExtensionLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/android/framework/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist getExtension(Lcom/android/framework/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/android/framework/protobuf/ExtensionLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final blacklist getExtensionCount(Lcom/android/framework/protobuf/ExtensionLite;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtensionCount(Lcom/android/framework/protobuf/ExtensionLite;)I

    move-result p1

    return p1
.end method

.method public final blacklist hasExtension(Lcom/android/framework/protobuf/ExtensionLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->hasExtension(Lcom/android/framework/protobuf/ExtensionLite;)Z

    move-result p1

    return p1
.end method

.method blacklist internalSetExtensionSet(Lcom/android/framework/protobuf/FieldSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet<",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1018
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1019
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p1, v0, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 1020
    return-void
.end method

.method public final blacklist setExtension(Lcom/android/framework/protobuf/ExtensionLite;ILjava/lang/Object;)Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 1100
    # invokes: Lcom/android/framework/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 1102
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1104
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1106
    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1105
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/framework/protobuf/FieldSet;->setRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 1107
    return-object p0
.end method

.method public final blacklist setExtension(Lcom/android/framework/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/ExtensionLite<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 1088
    # invokes: Lcom/android/framework/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;
    invoke-static {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->access$000(Lcom/android/framework/protobuf/ExtensionLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 1092
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableBuilder;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    iget-object v1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1093
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1094
    return-object p0
.end method
