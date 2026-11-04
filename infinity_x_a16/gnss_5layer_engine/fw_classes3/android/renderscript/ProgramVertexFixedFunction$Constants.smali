.class public Landroid/renderscript/ProgramVertexFixedFunction$Constants;
.super Ljava/lang/Object;
.source "ProgramVertexFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field static final greylist-max-o MODELVIEW_OFFSET:I = 0x0

.field static final greylist-max-o PROJECTION_OFFSET:I = 0x10

.field static final greylist-max-o TEXTURE_OFFSET:I = 0x20


# instance fields
.field greylist-max-o mAlloc:Landroid/renderscript/Allocation;

.field private greylist-max-o mIOBuffer:Landroid/renderscript/FieldPacker;

.field greylist-max-o mModel:Landroid/renderscript/Matrix4f;

.field greylist-max-o mProjection:Landroid/renderscript/Matrix4f;

.field greylist-max-o mTexture:Landroid/renderscript/Matrix4f;


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-static {p1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    move-result-object v0

    .line 227
    invoke-static {p1, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    .line 228
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result p1

    .line 229
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    mul-int/2addr p1, v0

    .line 230
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-direct {v0, p1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 231
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    .line 232
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    .line 233
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    .line 234
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setModelview(Landroid/renderscript/Matrix4f;)V

    .line 235
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 236
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setTexture(Landroid/renderscript/Matrix4f;)V

    .line 237
    return-void
.end method

.method private greylist-max-o addToBuffer(ILandroid/renderscript/Matrix4f;)V
    .registers 6

    .line 251
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 252
    const/4 p1, 0x0

    move v0, p1

    :goto_7
    const/16 v1, 0x10

    if-ge v0, v1, :cond_17

    .line 253
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p2, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 257
    :cond_17
    iget-object p2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 258
    iget-object p2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {p2, p1, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 259
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    .line 248
    return-void
.end method

.method greylist-max-o getAllocation()Landroid/renderscript/Allocation;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public greylist-max-o setModelview(Landroid/renderscript/Matrix4f;)V
    .registers 3

    .line 268
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    .line 270
    return-void
.end method

.method public greylist setProjection(Landroid/renderscript/Matrix4f;)V
    .registers 3

    .line 280
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 281
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    .line 282
    return-void
.end method

.method public greylist-max-o setTexture(Landroid/renderscript/Matrix4f;)V
    .registers 3

    .line 294
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 295
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    .line 296
    return-void
.end method
