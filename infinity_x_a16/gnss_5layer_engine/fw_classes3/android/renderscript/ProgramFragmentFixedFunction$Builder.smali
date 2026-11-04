.class public Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.super Ljava/lang/Object;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;
    }
.end annotation


# static fields
.field public static final greylist-max-o MAX_TEXTURE:I = 0x2


# instance fields
.field greylist-max-o mNumTextures:I

.field greylist-max-o mPointSpriteEnable:Z

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mShader:Ljava/lang/String;

.field greylist-max-o mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

.field greylist-max-o mVaryingColorEnable:Z


# direct methods
.method public constructor greylist <init>(Landroid/renderscript/RenderScript;)V
    .registers 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 242
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 243
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    .line 244
    return-void
.end method

.method private greylist-max-o buildShaderString()V
    .registers 5

    .line 170
    const-string v0, "//rs_shader_internal\n"

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "varying lowp vec4 varColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "varying vec2 varTex0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 175
    iget-boolean v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-eqz v0, :cond_68

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  lowp vec4 col = varColor;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_7f

    .line 178
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  lowp vec4 col = UNI_Color;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 181
    :goto_7f
    iget v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-eqz v0, :cond_b6

    .line 182
    iget-boolean v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    if-eqz v0, :cond_9f

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vec2 t0 = gl_PointCoord;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_b6

    .line 185
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  vec2 t0 = varTex0.xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 189
    :cond_b6
    :goto_b6
    const/4 v0, 0x0

    :goto_b7
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-ge v0, v1, :cond_1c1

    .line 190
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1f2

    goto/16 :goto_1bd

    .line 224
    :pswitch_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  col = texture2D(UNI_Tex0, t0);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_1bd

    .line 208
    :pswitch_e3
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    const-string v2, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    packed-switch v1, :pswitch_data_1fc

    goto :goto_14f

    .line 219
    :pswitch_f3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_14f

    .line 216
    :pswitch_109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  col.rgb *= texture2D(UNI_Tex0, t0).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 217
    goto :goto_14f

    .line 213
    :pswitch_121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 214
    goto :goto_14f

    .line 210
    :pswitch_137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  col.a *= texture2D(UNI_Tex0, t0).a;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 211
    nop

    .line 222
    :goto_14f
    goto :goto_1bd

    .line 192
    :pswitch_150
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    const-string v2, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    packed-switch v1, :pswitch_data_208

    goto :goto_1bc

    .line 203
    :pswitch_160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_1bc

    .line 200
    :pswitch_176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  col.rgb = texture2D(UNI_Tex0, t0).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 201
    goto :goto_1bc

    .line 197
    :pswitch_18e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 198
    goto :goto_1bc

    .line 194
    :pswitch_1a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  col.a = texture2D(UNI_Tex0, t0).a;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 195
    nop

    .line 206
    :goto_1bc
    nop

    .line 189
    :goto_1bd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b7

    .line 229
    :cond_1c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_FragColor = col;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 231
    return-void

    nop

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_150
        :pswitch_e3
        :pswitch_ca
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_137
        :pswitch_121
        :pswitch_109
        :pswitch_f3
    .end packed-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_1a4
        :pswitch_18e
        :pswitch_176
        :pswitch_160
    .end packed-switch
.end method


# virtual methods
.method public greylist create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .registers 8

    .line 304
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;

    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 305
    const/4 v1, 0x0

    iput v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 306
    move v2, v1

    :goto_b
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1d

    .line 307
    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1a

    .line 308
    iget v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 306
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 311
    :cond_1d
    invoke-direct {p0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->buildShaderString()V

    .line 312
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 314
    nop

    .line 315
    iget-boolean v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-nez v2, :cond_52

    .line 316
    new-instance v2, Landroid/renderscript/Element$Builder;

    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v5}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 317
    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    const-string v6, "Color"

    invoke-virtual {v2, v5, v6}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 318
    new-instance v5, Landroid/renderscript/Type$Builder;

    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 319
    invoke-virtual {v5, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 320
    invoke-virtual {v5}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 321
    invoke-virtual {v0, v2}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    goto :goto_53

    .line 315
    :cond_52
    const/4 v2, 0x0

    .line 323
    :goto_53
    move v4, v1

    :goto_54
    iget v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-ge v4, v5, :cond_60

    .line 324
    sget-object v5, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 327
    :cond_60
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v0

    .line 328
    iput v3, v0, Landroid/renderscript/ProgramFragmentFixedFunction;->mTextureCount:I

    .line 329
    iget-boolean v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-nez v3, :cond_87

    .line 330
    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 331
    new-instance v3, Landroid/renderscript/FieldPacker;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 332
    new-instance v4, Landroid/renderscript/Float4;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/renderscript/Float4;-><init>(FFFF)V

    .line 333
    invoke-virtual {v3, v4}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 334
    invoke-virtual {v2, v1, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 335
    invoke-virtual {v0, v2, v1}, Landroid/renderscript/ProgramFragmentFixedFunction;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 337
    :cond_87
    return-object v0
.end method

.method public greylist-max-o setPointSpriteTexCoordinateReplacement(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .registers 2

    .line 278
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    .line 279
    return-object p0
.end method

.method public greylist setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 263
    if-ltz p3, :cond_f

    const/4 v0, 0x2

    if-ge p3, v0, :cond_f

    .line 266
    iget-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    invoke-direct {v1, p0, p1, p2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;-><init>(Landroid/renderscript/ProgramFragmentFixedFunction$Builder;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;)V

    aput-object v1, v0, p3

    .line 267
    return-object p0

    .line 264
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MAX_TEXTURE exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .registers 2

    .line 292
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    .line 293
    return-object p0
.end method
