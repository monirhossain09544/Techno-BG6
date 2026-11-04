.class public final Landroid/renderscript/ScriptIntrinsicResize;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicResize.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mInput:Landroid/renderscript/Allocation;


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 32
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicResize;
    .registers 4

    .line 45
    const/16 v0, 0xc

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 46
    new-instance v2, Landroid/renderscript/ScriptIntrinsicResize;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicResize;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 47
    return-object v2
.end method


# virtual methods
.method public whitelist forEach_bicubic(Landroid/renderscript/Allocation;)V
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicResize;->mInput:Landroid/renderscript/Allocation;

    if-eq p1, v0, :cond_9

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 97
    return-void

    .line 94
    :cond_9
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Output cannot be same as Input."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist forEach_bicubic(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 9

    .line 109
    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, Landroid/renderscript/Allocation;

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/ScriptIntrinsicResize;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 110
    return-void
.end method

.method public whitelist getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .registers 3

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptIntrinsicResize;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKernelID_bicubic()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 118
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicResize;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setInput(Landroid/renderscript/Allocation;)V
    .registers 4

    .line 58
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    .line 59
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 60
    invoke-static {v1}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 61
    invoke-static {v1}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 62
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 64
    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 65
    invoke-static {v1}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_6d

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mRS:Landroid/renderscript/RenderScript;

    .line 66
    invoke-static {v1}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_6d

    .line 67
    :cond_65
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Unsupported element type."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_6d
    :goto_6d
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicResize;->mInput:Landroid/renderscript/Allocation;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/ScriptIntrinsicResize;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 72
    return-void
.end method
