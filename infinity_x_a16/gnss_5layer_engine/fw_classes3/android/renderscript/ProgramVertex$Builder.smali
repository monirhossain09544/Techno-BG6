.class public Landroid/renderscript/ProgramVertex$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 2

    .line 97
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 98
    return-void
.end method


# virtual methods
.method public greylist addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 111
    iget v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1f

    .line 114
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-nez v0, :cond_17

    .line 117
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    aput-object p1, v0, v1

    .line 118
    return-object p0

    .line 115
    :cond_17
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Complex elements not allowed."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1f
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Max input count exceeded."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist create()Landroid/renderscript/ProgramVertex;
    .registers 9

    .line 129
    iget-object v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 130
    iget v0, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    .line 131
    iget v1, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    new-array v1, v1, [Ljava/lang/String;

    .line 132
    nop

    .line 134
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1c
    iget v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputCount:I

    if-ge v3, v5, :cond_3a

    .line 135
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 136
    add-int/lit8 v4, v5, 0x1

    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 138
    :cond_3a
    move v3, v2

    :goto_3b
    iget v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputCount:I

    if-ge v3, v5, :cond_59

    .line 139
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 140
    add-int/lit8 v4, v5, 0x1

    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 142
    :cond_59
    move v3, v2

    :goto_5a
    iget v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstantCount:I

    if-ge v3, v5, :cond_78

    .line 143
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v6, v6

    aput-wide v6, v0, v4

    .line 144
    add-int/lit8 v4, v5, 0x1

    iget-object v6, p0, Landroid/renderscript/ProgramVertex$Builder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v3

    iget-object v7, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 146
    :cond_78
    nop

    :goto_79
    iget v3, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureCount:I

    if-ge v2, v3, :cond_9a

    .line 147
    add-int/lit8 v3, v4, 0x1

    sget-object v5, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v5, v5, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v4

    .line 148
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v5, v5

    aput-wide v5, v0, v3

    .line 149
    iget-object v3, p0, Landroid/renderscript/ProgramVertex$Builder;->mTextureNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 152
    :cond_9a
    iget-object v2, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/ProgramVertex$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v0

    .line 153
    new-instance v2, Landroid/renderscript/ProgramVertex;

    iget-object v3, p0, Landroid/renderscript/ProgramVertex$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramVertex;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 154
    invoke-virtual {p0, v2}, Landroid/renderscript/ProgramVertex$Builder;->initProgram(Landroid/renderscript/Program;)V

    .line 155
    return-object v2
.end method
