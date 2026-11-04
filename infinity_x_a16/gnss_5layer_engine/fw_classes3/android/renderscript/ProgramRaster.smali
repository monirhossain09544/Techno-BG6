.class public Landroid/renderscript/ProgramRaster;
.super Landroid/renderscript/BaseObj;
.source "ProgramRaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramRaster$CullMode;,
        Landroid/renderscript/ProgramRaster$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field greylist-max-o mPointSprite:Z


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 60
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    .line 61
    sget-object p1, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object p1, p0, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    .line 62
    return-void
.end method

.method public static greylist-max-o CULL_BACK(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    if-nez v0, :cond_14

    .line 88
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 89
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    .line 92
    :cond_14
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

    return-object p0
.end method

.method public static greylist-max-o CULL_FRONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .registers 3

    .line 99
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    if-nez v0, :cond_14

    .line 100
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 101
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->FRONT:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    .line 104
    :cond_14
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

    return-object p0
.end method

.method public static greylist-max-o CULL_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramRaster;
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    if-nez v0, :cond_14

    .line 112
    new-instance v0, Landroid/renderscript/ProgramRaster$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramRaster$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 113
    sget-object v1, Landroid/renderscript/ProgramRaster$CullMode;->NONE:Landroid/renderscript/ProgramRaster$CullMode;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramRaster$Builder;->setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/renderscript/ProgramRaster$Builder;->create()Landroid/renderscript/ProgramRaster;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    .line 116
    :cond_14
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

    return-object p0
.end method


# virtual methods
.method public greylist-max-o getCullMode()Landroid/renderscript/ProgramRaster$CullMode;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    return-object v0
.end method

.method public greylist-max-o isPointSpriteEnabled()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    return v0
.end method
