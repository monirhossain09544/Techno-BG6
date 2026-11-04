.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;,
        Landroid/renderscript/Type$CubemapFace;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o mMaxArrays:I = 0x4


# instance fields
.field greylist-max-o mArrays:[I

.field greylist-max-o mDimFaces:Z

.field greylist-max-o mDimMipmaps:Z

.field greylist-max-o mDimX:I

.field greylist-max-o mDimY:I

.field greylist-max-o mDimYuv:I

.field greylist-max-o mDimZ:I

.field greylist-max-o mElement:Landroid/renderscript/Element;

.field greylist-max-o mElementCount:I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 235
    return-void
.end method

.method public static whitelist createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .registers 13

    .line 269
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1f

    .line 273
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v2

    .line 274
    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, v2, v3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 275
    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 276
    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    .line 277
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 278
    return-object p0

    .line 270
    :cond_1f
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;
    .registers 14

    .line 293
    const/4 v0, 0x1

    if-lt p2, v0, :cond_23

    if-lt p3, v0, :cond_23

    .line 297
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide p2

    .line 298
    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, p2, p3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 299
    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 300
    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    .line 301
    iput v5, p0, Landroid/renderscript/Type;->mDimY:I

    .line 302
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 303
    return-object p0

    .line 294
    :cond_23
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createXYZ(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;III)Landroid/renderscript/Type;
    .registers 15

    .line 319
    const/4 v0, 0x1

    if-lt p2, v0, :cond_27

    if-lt p3, v0, :cond_27

    if-lt p4, v0, :cond_27

    .line 323
    invoke-virtual {p1, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide p2

    .line 324
    new-instance p0, Landroid/renderscript/Type;

    invoke-direct {p0, p2, p3, v1}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 325
    iput-object p1, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 326
    iput v4, p0, Landroid/renderscript/Type;->mDimX:I

    .line 327
    iput v5, p0, Landroid/renderscript/Type;->mDimY:I

    .line 328
    iput v6, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 329
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 330
    return-object p0

    .line 320
    :cond_27
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method greylist-max-o calcElementCount()V
    .registers 9

    .line 189
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    .line 190
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 191
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 192
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v3

    .line 193
    nop

    .line 194
    invoke-virtual {p0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1a

    .line 195
    const/4 v4, 0x6

    goto :goto_1b

    .line 194
    :cond_1a
    move v4, v5

    .line 197
    :goto_1b
    if-nez v1, :cond_1e

    .line 198
    move v1, v5

    .line 200
    :cond_1e
    if-nez v2, :cond_21

    .line 201
    move v2, v5

    .line 203
    :cond_21
    if-nez v3, :cond_24

    .line 204
    move v3, v5

    .line 207
    :cond_24
    mul-int v6, v1, v2

    mul-int/2addr v6, v3

    mul-int/2addr v6, v4

    .line 209
    :goto_28
    if-eqz v0, :cond_42

    if-gt v1, v5, :cond_30

    if-gt v2, v5, :cond_30

    if-le v3, v5, :cond_42

    .line 210
    :cond_30
    if-le v1, v5, :cond_34

    .line 211
    shr-int/lit8 v1, v1, 0x1

    .line 213
    :cond_34
    if-le v2, v5, :cond_38

    .line 214
    shr-int/lit8 v2, v2, 0x1

    .line 216
    :cond_38
    if-le v3, v5, :cond_3c

    .line 217
    shr-int/lit8 v3, v3, 0x1

    .line 220
    :cond_3c
    mul-int v7, v1, v2

    mul-int/2addr v7, v3

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_28

    .line 223
    :cond_42
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_54

    .line 224
    const/4 v0, 0x0

    :goto_47
    iget-object v1, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_54

    .line 225
    iget-object v1, p0, Landroid/renderscript/Type;->mArrays:[I

    aget v1, v1, v0

    mul-int/2addr v6, v1

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 229
    :cond_54
    iput v6, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 230
    return-void
.end method

.method public greylist-max-o getArray(I)I
    .registers 3

    .line 165
    if-ltz p1, :cond_16

    const/4 v0, 0x4

    if-ge p1, v0, :cond_16

    .line 169
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v0, v0

    if-lt p1, v0, :cond_f

    goto :goto_14

    .line 174
    :cond_f
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    aget p1, v0, p1

    return p1

    .line 171
    :cond_14
    :goto_14
    const/4 p1, 0x0

    return p1

    .line 166
    :cond_16
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Array dimension out of range."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getArrayCount()I
    .registers 2

    .line 184
    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/renderscript/Type;->mArrays:[I

    array-length v0, v0

    return v0

    .line 185
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 154
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public whitelist getElement()Landroid/renderscript/Element;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public whitelist getX()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public whitelist getY()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public whitelist getYuv()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public whitelist getZ()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public whitelist hasFaces()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public whitelist hasMipmaps()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method

.method greylist-max-o updateFromNative()V
    .registers 8

    .line 241
    const/4 v0, 0x6

    new-array v0, v0, [J

    .line 242
    iget-object v1, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nTypeGetNativeData(J[J)V

    .line 244
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v2, v2

    iput v2, p0, Landroid/renderscript/Type;->mDimX:I

    .line 245
    const/4 v2, 0x1

    aget-wide v3, v0, v2

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimY:I

    .line 246
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    long-to-int v3, v3

    iput v3, p0, Landroid/renderscript/Type;->mDimZ:I

    .line 247
    const/4 v3, 0x3

    aget-wide v3, v0, v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    move v3, v2

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    iput-boolean v3, p0, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 248
    const/4 v3, 0x4

    aget-wide v3, v0, v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_36

    move v1, v2

    :cond_36
    iput-boolean v1, p0, Landroid/renderscript/Type;->mDimFaces:Z

    .line 250
    const/4 v1, 0x5

    aget-wide v0, v0, v1

    .line 251
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4f

    .line 252
    new-instance v2, Landroid/renderscript/Element;

    iget-object v3, p0, Landroid/renderscript/Type;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 253
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->updateFromNative()V

    .line 255
    :cond_4f
    invoke-virtual {p0}, Landroid/renderscript/Type;->calcElementCount()V

    .line 256
    return-void
.end method
