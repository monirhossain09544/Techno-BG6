.class public final Landroid/renderscript/ScriptGroup$Closure;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private greylist-max-o mArgs:[Ljava/lang/Object;

.field private greylist-max-o mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFP:Landroid/renderscript/FieldPacker;

.field private greylist-max-o mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Landroid/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

.field private greylist-max-o mReturnValue:Landroid/renderscript/Allocation;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 118
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 162
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 163
    invoke-static/range {p3 .. p3}, Landroid/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    .line 165
    move-object/from16 v1, p3

    iput-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 166
    move-object/from16 v1, p4

    iput-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 169
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    .line 171
    new-array v9, v2, [J

    .line 172
    new-array v5, v2, [J

    .line 173
    new-array v6, v2, [I

    .line 174
    new-array v7, v2, [J

    .line 175
    new-array v8, v2, [J

    .line 177
    nop

    .line 178
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v1, 0x0

    move v2, v1

    :goto_33
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/renderscript/Script$FieldID;

    .line 181
    invoke-virtual {v3, p1}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    aput-wide v11, v9, v2

    .line 182
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 184
    move-object v1, v7

    add-int/lit8 v2, v2, 0x1

    .line 185
    goto :goto_33

    .line 187
    :cond_59
    move-object v1, p2

    invoke-virtual {p2, p1}, Landroid/renderscript/Script$InvokeID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    invoke-virtual {v3}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    move-object v0, p1

    move-object v4, v9

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v0

    .line 190
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 192
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 122
    move-object/from16 v9, p4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v10, v11, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 124
    iput-object v9, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 125
    move-object/from16 v2, p3

    invoke-static {p1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 126
    move-object/from16 v12, p5

    iput-object v12, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 129
    array-length v2, v9

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 131
    new-array v13, v2, [J

    .line 132
    new-array v5, v2, [J

    .line 133
    new-array v6, v2, [I

    .line 134
    new-array v7, v2, [J

    .line 135
    new-array v8, v2, [J

    .line 138
    const/4 v2, 0x0

    :goto_2d
    array-length v3, v9

    if-ge v2, v3, :cond_3d

    .line 139
    aput-wide v10, v13, v2

    .line 140
    const/4 v3, 0x0

    aget-object v4, v9, v2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 143
    :cond_3d
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_45
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/renderscript/Script$FieldID;

    .line 146
    invoke-virtual {v3, p1}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    aput-wide v10, v13, v2

    .line 147
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    goto :goto_45

    .line 152
    :cond_6a
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    move-object v0, p1

    move-wide v1, v2

    move-object v9, v8

    move-wide v3, v11

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v0

    .line 155
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 157
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private greylist-max-o retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .registers 14

    .line 218
    instance-of v0, p4, Landroid/renderscript/ScriptGroup$Future;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_26

    .line 219
    check-cast p4, Landroid/renderscript/ScriptGroup$Future;

    .line 220
    invoke-virtual {p4}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-virtual {p4}, Landroid/renderscript/ScriptGroup$Future;->getClosure()Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, p7, p2

    .line 222
    invoke-virtual {p4}, Landroid/renderscript/ScriptGroup$Future;->getFieldID()Landroid/renderscript/Script$FieldID;

    move-result-object p4

    .line 223
    if-eqz p4, :cond_21

    invoke-virtual {p4, p1}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    goto :goto_22

    :cond_21
    move-wide v3, v1

    :goto_22
    aput-wide v3, p8, p2

    .line 224
    move-object p4, v0

    goto :goto_2a

    .line 225
    :cond_26
    aput-wide v1, p7, p2

    .line 226
    aput-wide v1, p8, p2

    .line 229
    :goto_2a
    instance-of p7, p4, Landroid/renderscript/ScriptGroup$Input;

    if-eqz p7, :cond_42

    .line 230
    check-cast p4, Landroid/renderscript/ScriptGroup$Input;

    .line 231
    iget-object p1, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    array-length p1, p1

    if-ge p2, p1, :cond_39

    .line 232
    invoke-virtual {p4, p0, p2}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;I)V

    goto :goto_3c

    .line 234
    :cond_39
    invoke-virtual {p4, p0, p3}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V

    .line 236
    :goto_3c
    aput-wide v1, p5, p2

    .line 237
    const/4 p1, 0x0

    aput p1, p6, p2

    .line 238
    goto :goto_4f

    .line 239
    :cond_42
    new-instance p3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    invoke-direct {p3, p1, p4}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 240
    iget-wide p7, p3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    aput-wide p7, p5, p2

    .line 241
    iget p1, p3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    aput p1, p6, p2

    .line 243
    :goto_4f
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 2

    .line 199
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 200
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_c

    .line 201
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 203
    :cond_c
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 209
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 210
    return-void
.end method

.method public whitelist getGlobal(Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Future;
    .registers 4

    .line 267
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 269
    if-nez v0, :cond_25

    .line 274
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    instance-of v1, v0, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v1, :cond_1a

    .line 276
    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 278
    :cond_1a
    new-instance v1, Landroid/renderscript/ScriptGroup$Future;

    invoke-direct {v1, p0, p1, v0}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 282
    :cond_25
    return-object v0
.end method

.method public whitelist getReturn()Landroid/renderscript/ScriptGroup$Future;
    .registers 4

    .line 252
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_e

    .line 253
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-direct {v0, p0, v1, v2}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    .line 256
    :cond_e
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    return-object v0
.end method

.method greylist-max-o setArg(ILjava/lang/Object;)V
    .registers 12

    .line 286
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_a

    .line 287
    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 289
    :cond_a
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 290
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 291
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object p2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-wide v6, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v8, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 292
    return-void
.end method

.method greylist-max-o setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .registers 13

    .line 295
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_a

    .line 296
    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 298
    :cond_a
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object p2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object p2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, p2}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-wide v7, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v9, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    invoke-virtual/range {v2 .. v9}, Landroid/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 301
    return-void
.end method
