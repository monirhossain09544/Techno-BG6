.class public final Landroid/renderscript/ScriptIntrinsicLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicLUT.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mCache:[B

.field private greylist-max-o mDirty:Z

.field private final greylist-max-o mMatrix:Landroid/renderscript/Matrix4f;

.field private greylist-max-o mTables:Landroid/renderscript/Allocation;


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 31
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 33
    const/16 p1, 0x400

    new-array p2, p1, [B

    iput-object p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 34
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 38
    invoke-static {p3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    .line 39
    const/4 p1, 0x0

    move p2, p1

    :goto_1f
    const/16 p3, 0x100

    if-ge p2, p3, :cond_3d

    .line 40
    iget-object p3, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v0, p2

    aput-byte v0, p3, p2

    .line 41
    iget-object p3, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p2, 0x100

    aput-byte v0, p3, v1

    .line 42
    iget-object p3, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p2, 0x200

    aput-byte v0, p3, v1

    .line 43
    iget-object p3, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 v1, p2, 0x300

    aput-byte v0, p3, v1

    .line 39
    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    .line 45
    :cond_3d
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 46
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;
    .registers 5

    .line 59
    const/4 v0, 0x3

    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 60
    new-instance p1, Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicLUT;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object p1
.end method

.method private greylist-max-o validate(II)V
    .registers 4

    .line 70
    if-ltz p1, :cond_13

    const/16 v0, 0xff

    if-gt p1, v0, :cond_13

    .line 73
    if-ltz p2, :cond_b

    if-gt p2, v0, :cond_b

    .line 76
    return-void

    .line 74
    :cond_b
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Value out of range (0-255)."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_13
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Index out of range (0-255)."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist destroy()V
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 66
    invoke-super {p0}, Landroid/renderscript/ScriptIntrinsic;->destroy()V

    .line 67
    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 4

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 135
    return-void
.end method

.method public whitelist forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 12

    .line 146
    iget-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    if-eqz v0, :cond_e

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 148
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V

    .line 150
    :cond_e
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 151
    return-void
.end method

.method public whitelist getKernelID()Landroid/renderscript/Script$KernelID;
    .registers 4

    .line 159
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/ScriptIntrinsicLUT;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setAlpha(II)V
    .registers 4

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 122
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x300

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 123
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 124
    return-void
.end method

.method public whitelist setBlue(II)V
    .registers 4

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 110
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x200

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 111
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 112
    return-void
.end method

.method public whitelist setGreen(II)V
    .registers 4

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 98
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x100

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 99
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 100
    return-void
.end method

.method public whitelist setRed(II)V
    .registers 4

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 86
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 87
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 88
    return-void
.end method
