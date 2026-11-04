.class public Landroid/renderscript/ProgramFragment$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 59
    return-void
.end method


# virtual methods
.method public greylist create()Landroid/renderscript/ProgramFragment;
    .registers 9

    .line 69
    iget-object v0, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 70
    iget v0, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputCount:I

    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstantCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    .line 71
    iget v1, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    new-array v1, v1, [Ljava/lang/String;

    .line 72
    nop

    .line 74
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1c
    iget v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputCount:I

    if-ge v3, v5, :cond_3a

    .line 75
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 76
    add-int/lit8 v4, v5, 0x1

    iget-object v6, p0, Landroid/renderscript/ProgramFragment$Builder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 78
    :cond_3a
    move v3, v2

    :goto_3b
    iget v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputCount:I

    if-ge v3, v5, :cond_59

    .line 79
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 80
    add-int/lit8 v4, v5, 0x1

    iget-object v6, p0, Landroid/renderscript/ProgramFragment$Builder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 82
    :cond_59
    move v3, v2

    :goto_5a
    iget v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstantCount:I

    if-ge v3, v5, :cond_78

    .line 83
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 84
    add-int/lit8 v4, v5, 0x1

    iget-object v6, p0, Landroid/renderscript/ProgramFragment$Builder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 86
    :cond_78
    nop

    :goto_79
    iget v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureCount:I

    if-ge v2, v3, :cond_9a

    .line 87
    add-int/lit8 v3, v4, 0x1

    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v4

    .line 88
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v3

    .line 89
    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mTextureNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 92
    :cond_9a
    iget-object v2, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v0

    .line 93
    new-instance v2, Landroid/renderscript/ProgramFragment;

    iget-object v3, p0, Landroid/renderscript/ProgramFragment$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramFragment;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 94
    invoke-virtual {p0, v2}, Landroid/renderscript/ProgramFragment$Builder;->initProgram(Landroid/renderscript/Program;)V

    .line 95
    return-object v2
.end method
