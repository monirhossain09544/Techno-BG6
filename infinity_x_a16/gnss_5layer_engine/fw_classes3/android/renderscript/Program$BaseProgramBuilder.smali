.class public Landroid/renderscript/Program$BaseProgramBuilder;
.super Ljava/lang/Object;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseProgramBuilder"
.end annotation


# instance fields
.field greylist mConstantCount:I

.field greylist mConstants:[Landroid/renderscript/Type;

.field greylist mInputCount:I

.field greylist mInputs:[Landroid/renderscript/Element;

.field greylist mOutputCount:I

.field greylist mOutputs:[Landroid/renderscript/Element;

.field greylist mRS:Landroid/renderscript/RenderScript;

.field greylist mShader:Ljava/lang/String;

.field greylist mTextureCount:I

.field greylist-max-o mTextureNames:[Ljava/lang/String;

.field greylist-max-o mTextureTypes:[Landroid/renderscript/Program$TextureType;

.field greylist-max-o mTextures:[Landroid/renderscript/Type;


# direct methods
.method protected constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 234
    const/16 p1, 0x8

    new-array v0, p1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    .line 235
    new-array v0, p1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    .line 236
    new-array v0, p1, [Landroid/renderscript/Type;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    .line 238
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    .line 239
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 240
    iput v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 241
    new-array v0, p1, [Landroid/renderscript/Program$TextureType;

    iput-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    .line 242
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    .line 243
    return-void
.end method


# virtual methods
.method public greylist-max-o addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 327
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_25

    .line 330
    invoke-virtual {p1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 333
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    aput-object p1, v0, v1

    .line 334
    iget p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    .line 335
    return-object p0

    .line 331
    :cond_1d
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Complex elements not allowed."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_25
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Max input count exceeded."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 347
    return-object p0
.end method

.method public greylist-max-o addTexture(Landroid/renderscript/Program$TextureType;Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 361
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_19

    .line 364
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p1, v0, v1

    .line 365
    iget-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    aput-object p2, p1, v0

    .line 366
    iget p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    .line 367
    return-object p0

    .line 362
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max texture count exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getCurrentConstantIndex()I
    .registers 2

    .line 307
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o getCurrentTextureIndex()I
    .registers 2

    .line 315
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected greylist-max-o initProgram(Landroid/renderscript/Program;)V
    .registers 6

    .line 371
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    .line 372
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mInputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    new-array v0, v0, [Landroid/renderscript/Element;

    iput-object v0, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    .line 374
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    iget-object v1, p1, Landroid/renderscript/Program;->mOutputs:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    new-array v0, v0, [Landroid/renderscript/Type;

    iput-object v0, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    .line 376
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    iget-object v1, p1, Landroid/renderscript/Program;->mConstants:[Landroid/renderscript/Type;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    iput v0, p1, Landroid/renderscript/Program;->mTextureCount:I

    .line 378
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Landroid/renderscript/Program$TextureType;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    .line 379
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    iget-object v1, p1, Landroid/renderscript/Program;->mTextures:[Landroid/renderscript/Program$TextureType;

    iget v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    .line 381
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureNames:[Ljava/lang/String;

    iget-object p1, p1, Landroid/renderscript/Program;->mTextureNames:[Ljava/lang/String;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    return-void
.end method

.method public greylist-max-o setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 8

    .line 267
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 270
    const/16 p2, 0x400

    :try_start_6
    new-array p2, p2, [B

    .line 271
    const/4 v0, 0x0

    move v1, v0

    .line 273
    :goto_a
    array-length v2, p2

    sub-int/2addr v2, v1

    .line 274
    if-nez v2, :cond_1a

    .line 275
    array-length v2, p2

    mul-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    .line 276
    array-length v4, p2

    invoke-static {p2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    nop

    .line 278
    sub-int/2addr v2, v1

    move-object p2, v3

    .line 280
    :cond_1a
    invoke-virtual {p1, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3b

    .line 281
    if-gtz v2, :cond_39

    .line 282
    nop

    .line 287
    :try_start_21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_40

    .line 288
    nop

    .line 291
    nop

    .line 294
    :try_start_26
    new-instance p1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p1, p2, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 297
    goto :goto_38

    .line 295
    :catch_30
    move-exception p1

    .line 296
    const-string p1, "RenderScript shader creation"

    const-string p2, "Could not decode shader string"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_38
    return-object p0

    .line 284
    :cond_39
    add-int/2addr v1, v2

    .line 285
    goto :goto_a

    .line 287
    :catchall_3b
    move-exception p2

    :try_start_3c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 288
    throw p2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_40} :catch_40

    .line 289
    :catch_40
    move-exception p1

    .line 290
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p1
.end method

.method public greylist-max-o setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;
    .registers 2

    .line 252
    iput-object p1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    .line 253
    return-object p0
.end method
