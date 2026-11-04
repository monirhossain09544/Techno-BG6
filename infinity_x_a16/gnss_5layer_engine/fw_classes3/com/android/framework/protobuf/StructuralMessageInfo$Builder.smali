.class public final Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist checkInitialized:[I

.field private blacklist defaultInstance:Ljava/lang/Object;

.field private final blacklist fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist messageSetWireFormat:Z

.field private blacklist syntax:Lcom/android/framework/protobuf/ProtoSyntax;

.field private blacklist wasBuilt:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    .line 103
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/framework/protobuf/StructuralMessageInfo;
    .registers 8

    .line 129
    iget-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_32

    .line 132
    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    if-eqz v0, :cond_2a

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    .line 136
    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 137
    new-instance v1, Lcom/android/framework/protobuf/StructuralMessageInfo;

    iget-object v2, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    iget-boolean v3, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    iget-object v4, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/framework/protobuf/FieldInfo;

    .line 141
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lcom/android/framework/protobuf/FieldInfo;

    iget-object v6, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/StructuralMessageInfo;-><init>(Lcom/android/framework/protobuf/ProtoSyntax;Z[I[Lcom/android/framework/protobuf/FieldInfo;Ljava/lang/Object;)V

    .line 137
    return-object v1

    .line 133
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify a proto syntax"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can only build once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist withCheckInitialized([I)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->checkInitialized:[I

    .line 119
    return-void
.end method

.method public blacklist withDefaultInstance(Ljava/lang/Object;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->defaultInstance:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public blacklist withField(Lcom/android/framework/protobuf/FieldInfo;)V
    .registers 3

    .line 122
    iget-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->wasBuilt:Z

    if-nez v0, :cond_a

    .line 125
    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void

    .line 123
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Builder can only build once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist withMessageSetWireFormat(Z)V
    .registers 2

    .line 114
    iput-boolean p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->messageSetWireFormat:Z

    .line 115
    return-void
.end method

.method public blacklist withSyntax(Lcom/android/framework/protobuf/ProtoSyntax;)V
    .registers 3

    .line 110
    const-string/jumbo v0, "syntax"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/ProtoSyntax;

    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    .line 111
    return-void
.end method
