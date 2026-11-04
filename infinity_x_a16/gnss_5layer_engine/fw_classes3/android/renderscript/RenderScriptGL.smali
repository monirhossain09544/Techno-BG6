.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mHeight:I

.field greylist-max-o mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field greylist-max-o mWidth:I


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .registers 22

    .line 178
    move-object/from16 v2, p0

    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v0, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 183
    const/4 v0, 0x0

    iput v0, v2, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 184
    iput v0, v2, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 185
    invoke-virtual {v2}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()J

    move-result-wide v3

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 187
    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v7, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v8, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v9, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v10, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v11, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v12, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v13, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v14, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v15, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    iget-object v1, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v1, v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    iget-object v5, v2, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v5, v5, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    move/from16 v17, v5

    const/4 v5, 0x0

    move/from16 v18, v0

    move/from16 v16, v1

    invoke-virtual/range {v2 .. v18}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(JIIIIIIIIIIIIFI)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/renderscript/RenderScriptGL;->mContext:J

    .line 194
    iget-wide v0, v2, Landroid/renderscript/RenderScriptGL;->mContext:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_75

    .line 197
    new-instance v0, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v0, v2}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, v2, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 198
    iget-object v0, v2, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 199
    return-void

    .line 195
    :cond_75
    new-instance v0, Landroid/renderscript/RSDriverException;

    const-string v1, "Failed to create RS context."

    invoke-direct {v0, v1}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .registers 4

    .line 317
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 318
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(J)V

    .line 319
    return-void
.end method

.method public greylist bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .registers 4

    .line 330
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 331
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(J)V

    .line 332
    return-void
.end method

.method public greylist bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .registers 4

    .line 305
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 306
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(J)V

    .line 307
    return-void
.end method

.method public greylist bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .registers 4

    .line 343
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 344
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(J)V

    .line 345
    return-void
.end method

.method public greylist bindRootScript(Landroid/renderscript/Script;)V
    .registers 4

    .line 292
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 293
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(J)V

    .line 294
    return-void
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 250
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    return v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 260
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    return v0
.end method

.method public greylist-max-o pause()V
    .registers 1

    .line 269
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 270
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    .line 271
    return-void
.end method

.method public greylist-max-o resume()V
    .registers 1

    .line 279
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 280
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    .line 281
    return-void
.end method

.method public greylist setSurface(Landroid/view/SurfaceHolder;II)V
    .registers 4

    .line 212
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 213
    nop

    .line 214
    if-eqz p1, :cond_b

    .line 215
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_c

    .line 214
    :cond_b
    const/4 p1, 0x0

    .line 217
    :goto_c
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 218
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 219
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 220
    return-void
.end method

.method public greylist-max-o setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .line 231
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    .line 234
    nop

    .line 235
    if-eqz p1, :cond_c

    .line 236
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_d

    .line 235
    :cond_c
    const/4 v0, 0x0

    .line 238
    :goto_d
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    .line 239
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    .line 240
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    .line 241
    return-void
.end method
