.class public Landroid/renderscript/Mesh$AllocationBuilder;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllocationBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    }
.end annotation


# instance fields
.field greylist-max-o mIndexTypes:Ljava/util/Vector;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mVertexTypeCount:I

.field greylist-max-o mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 2

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 437
    const/4 p1, 0x0

    iput p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 438
    const/16 p1, 0x10

    new-array p1, p1, [Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 439
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 440
    return-void
.end method


# virtual methods
.method public greylist addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 4

    .line 493
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 494
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 495
    iput-object p2, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 496
    iget-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 497
    return-object p0
.end method

.method public greylist addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 4

    .line 510
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 511
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 512
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 513
    iget-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 514
    return-object p0
.end method

.method public greylist addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 471
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 475
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    aput-object v2, v0, v1

    .line 476
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 477
    iget p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 478
    return-object p0

    .line 472
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Max vertex types exceeded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist create()Landroid/renderscript/Mesh;
    .registers 12

    .line 524
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 526
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-array v0, v0, [J

    .line 527
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 528
    iget-object v2, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 530
    iget-object v3, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Landroid/renderscript/Allocation;

    .line 531
    iget-object v4, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Landroid/renderscript/Mesh$Primitive;

    .line 532
    iget v5, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    new-array v5, v5, [Landroid/renderscript/Allocation;

    .line 534
    const/4 v6, 0x0

    move v7, v6

    :goto_2f
    iget v8, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    if-ge v7, v8, :cond_48

    .line 535
    iget-object v8, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    aget-object v8, v8, v7

    .line 536
    iget-object v9, v8, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v9, v5, v7

    .line 537
    iget-object v8, v8, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iget-object v9, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v0, v7

    .line 534
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 540
    :cond_48
    nop

    :goto_49
    iget-object v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_7b

    .line 541
    iget-object v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 542
    iget-object v8, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    if-nez v8, :cond_60

    const-wide/16 v8, 0x0

    goto :goto_68

    :cond_60
    iget-object v8, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    iget-object v9, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    .line 543
    :goto_68
    iget-object v10, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    aput-object v10, v3, v6

    .line 544
    iget-object v10, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v10, v4, v6

    .line 546
    aput-wide v8, v1, v6

    .line 547
    iget-object v7, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    iget v7, v7, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v7, v2, v6

    .line 540
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 550
    :cond_7b
    iget-object v6, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v0, v1, v2}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    move-result-wide v0

    .line 551
    new-instance v2, Landroid/renderscript/Mesh;

    iget-object v6, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v6}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 552
    iput-object v5, v2, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 553
    iput-object v3, v2, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 554
    iput-object v4, v2, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 556
    return-object v2
.end method

.method public greylist-max-o getCurrentIndexSetIndex()I
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o getCurrentVertexTypeIndex()I
    .registers 2

    .line 448
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
