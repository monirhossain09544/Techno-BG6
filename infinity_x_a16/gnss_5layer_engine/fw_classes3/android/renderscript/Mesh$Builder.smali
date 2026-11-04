.class public Landroid/renderscript/Mesh$Builder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Builder$Entry;
    }
.end annotation


# instance fields
.field greylist-max-o mIndexTypes:Ljava/util/Vector;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mUsage:I

.field greylist-max-o mVertexTypeCount:I

.field greylist-max-o mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;I)V
    .registers 3

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 223
    iput p2, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 224
    const/4 p1, 0x0

    iput p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 225
    const/16 p1, 0x10

    new-array p1, p1, [Landroid/renderscript/Mesh$Builder$Entry;

    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    .line 226
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 227
    return-void
.end method


# virtual methods
.method public greylist-max-o addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .registers 6

    .line 337
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 338
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 339
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 340
    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 341
    iput-object p3, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 342
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 343
    return-object p0
.end method

.method public greylist-max-o addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .registers 4

    .line 317
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 318
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 319
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 320
    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 321
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 322
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 323
    return-object p0
.end method

.method public greylist-max-o addIndexSetType(Landroid/renderscript/Type;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .registers 4

    .line 299
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 300
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 301
    const/4 p1, 0x0

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 302
    const/4 p1, 0x0

    iput p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 303
    iput-object p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 304
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 305
    return-object p0
.end method

.method public greylist-max-o addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 277
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 281
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    .line 282
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 283
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 284
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object p1, p1, v0

    iput p2, p1, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 285
    iget p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 286
    return-object p0

    .line 278
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Max vertex types exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o addVertexType(Landroid/renderscript/Type;)Landroid/renderscript/Mesh$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 256
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 260
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v0, v1

    .line 261
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 262
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 263
    iget p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 264
    return-object p0

    .line 257
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Max vertex types exceeded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o create()Landroid/renderscript/Mesh;
    .registers 14

    .line 358
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 359
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v0, v0, [J

    .line 360
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 361
    iget-object v2, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 363
    iget v3, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v3, v3, [Landroid/renderscript/Allocation;

    .line 364
    iget-object v4, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Landroid/renderscript/Allocation;

    .line 365
    iget-object v5, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Landroid/renderscript/Mesh$Primitive;

    .line 367
    const/4 v6, 0x0

    move v7, v6

    :goto_2f
    iget v8, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    const-string v9, "Builder corrupt, no valid element in entry."

    if-ge v7, v8, :cond_6c

    .line 368
    nop

    .line 369
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    aget-object v8, v8, v7

    .line 370
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v10, :cond_49

    .line 371
    iget-object v9, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, v8, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget v10, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v9, v8, v10}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v8

    goto :goto_59

    .line 372
    :cond_49
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v10, :cond_66

    .line 373
    iget-object v9, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget v8, v8, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iget v11, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v9, v10, v8, v11}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v8

    .line 378
    :goto_59
    aput-object v8, v3, v7

    .line 379
    iget-object v9, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v0, v7

    .line 367
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 376
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_6c
    nop

    :goto_6d
    iget-object v7, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_bf

    .line 383
    nop

    .line 384
    iget-object v7, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Mesh$Builder$Entry;

    .line 385
    iget-object v8, v7, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v8, :cond_8d

    .line 386
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v10, v7, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget v11, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v8, v10, v11}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v8

    goto :goto_9d

    .line 387
    :cond_8d
    iget-object v8, v7, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v8, :cond_b9

    .line 388
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v10, v7, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget v11, v7, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iget v12, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v8, v10, v11, v12}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v8

    .line 393
    :goto_9d
    if-nez v8, :cond_a2

    const-wide/16 v10, 0x0

    goto :goto_a8

    :cond_a2
    iget-object v10, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    .line 394
    :goto_a8
    aput-object v8, v4, v6

    .line 395
    iget-object v8, v7, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v8, v5, v6

    .line 397
    aput-wide v10, v1, v6

    .line 398
    iget-object v7, v7, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v7, v7, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v7, v2, v6

    .line 382
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    .line 391
    :cond_b9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_bf
    iget-object v6, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v0, v1, v2}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    move-result-wide v0

    .line 402
    new-instance v2, Landroid/renderscript/Mesh;

    iget-object v6, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v6}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 403
    iput-object v3, v2, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 404
    iput-object v4, v2, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 405
    iput-object v5, v2, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 407
    return-object v2
.end method

.method public greylist-max-o getCurrentIndexSetIndex()I
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o getCurrentVertexTypeIndex()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method greylist-max-o newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .registers 5

    .line 347
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 348
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 349
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p1

    return-object p1
.end method
