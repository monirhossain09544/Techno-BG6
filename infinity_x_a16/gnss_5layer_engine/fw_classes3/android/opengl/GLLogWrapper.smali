.class Landroid/opengl/GLLogWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLLogWrapper$PointerInfo;
    }
.end annotation


# static fields
.field private static final blacklist FORMAT_FIXED:I = 0x2

.field private static final blacklist FORMAT_FLOAT:I = 0x1

.field private static final blacklist FORMAT_INT:I


# instance fields
.field private blacklist mArgCount:I

.field blacklist mColorArrayEnabled:Z

.field private blacklist mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field private blacklist mLog:Ljava/io/Writer;

.field private blacklist mLogArgumentNames:Z

.field blacklist mNormalArrayEnabled:Z

.field private blacklist mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field blacklist mStringBuilder:Ljava/lang/StringBuilder;

.field private blacklist mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field blacklist mTextureCoordArrayEnabled:Z

.field blacklist mVertexArrayEnabled:Z

.field private blacklist mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoByteBuffer(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V
    .registers 4

    .line 44
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    .line 3949
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 3950
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 3951
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 3952
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 45
    iput-object p2, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 46
    iput-boolean p3, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    .line 47
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;F)V
    .registers 3

    .line 106
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;I)V
    .registers 3

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .registers 4

    .line 231
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .registers 5

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .registers 4

    .line 239
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;I[FI)V
    .registers 5

    .line 127
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;I[II)V
    .registers 6

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;I[SI)V
    .registers 5

    .line 123
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 75
    iget v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    if-lez v0, :cond_d

    .line 76
    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 78
    :cond_d
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_27

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 81
    :cond_27
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private blacklist arg(Ljava/lang/String;Z)V
    .registers 3

    .line 98
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private blacklist argPointer(IIILjava/nio/Buffer;)V
    .registers 6

    .line 243
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 244
    const-string/jumbo p1, "type"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo p1, "stride"

    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 246
    const-string/jumbo p1, "pointer"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private blacklist begin(Ljava/lang/String;)V
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 71
    const/4 p1, 0x0

    iput p1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    .line 72
    return-void
.end method

.method private blacklist bindArrays()V
    .registers 2

    .line 1142
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_9

    .line 1143
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1144
    :cond_9
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_12

    .line 1145
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1146
    :cond_12
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_1b

    .line 1147
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1148
    :cond_1b
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_24

    .line 1149
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1150
    :cond_24
    return-void
.end method

.method private blacklist checkError()V
    .registers 4

    .line 51
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_22

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 55
    :cond_22
    return-void
.end method

.method private blacklist doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V
    .registers 10

    .line 1062
    if-nez p2, :cond_3

    .line 1063
    return-void

    .line 1065
    :cond_3
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":{"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    if-eqz p4, :cond_ad

    iget-object p2, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_26

    goto/16 :goto_ad

    .line 1071
    :cond_26
    iget p2, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-gez p2, :cond_30

    .line 1072
    const-string p2, "invalid stride"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    return-void

    .line 1076
    :cond_30
    invoke-virtual {p4}, Landroid/opengl/GLLogWrapper$PointerInfo;->getStride()I

    move-result p2

    .line 1077
    iget-object p3, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 1078
    iget v0, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    .line 1079
    iget v1, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    .line 1080
    invoke-virtual {p4, v1}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result p4

    .line 1081
    mul-int/2addr p2, p5

    .line 1082
    const/4 p5, 0x0

    :goto_40
    if-ge p5, v0, :cond_a6

    .line 1083
    if-lez p5, :cond_49

    .line 1084
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_49
    sparse-switch v1, :sswitch_data_b4

    .line 1116
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1104
    :sswitch_52
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 1105
    div-int/lit8 v3, p2, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 1106
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    goto :goto_a2

    .line 1110
    :sswitch_64
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 1111
    div-int/lit8 v3, p2, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 1112
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    goto :goto_a2

    .line 1098
    :sswitch_76
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 1099
    div-int/lit8 v3, p2, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v2

    .line 1100
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    goto :goto_a2

    .line 1093
    :sswitch_88
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 1094
    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    goto :goto_a2

    .line 1088
    :sswitch_96
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 1089
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    nop

    .line 1119
    :goto_a2
    add-int/2addr p2, p4

    .line 1082
    add-int/lit8 p5, p5, 0x1

    goto :goto_40

    .line 1121
    :cond_a6
    const-string/jumbo p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    return-void

    .line 1068
    :cond_ad
    :goto_ad
    const-string/jumbo p2, "undefined }"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    return-void

    :sswitch_data_b4
    .sparse-switch
        0x1400 -> :sswitch_96
        0x1401 -> :sswitch_88
        0x1402 -> :sswitch_76
        0x1406 -> :sswitch_64
        0x140c -> :sswitch_52
    .end sparse-switch
.end method

.method private blacklist doElement(Ljava/lang/StringBuilder;II)V
    .registers 15

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "] ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    const-string/jumbo v3, "v"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1128
    move-object v6, v1

    move v10, v5

    move-object v5, v0

    iget-boolean v7, v5, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    const-string v8, "n"

    iget-object v9, v5, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1130
    iget-boolean v7, v5, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    const-string v8, "c"

    iget-object v9, v5, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1132
    iget-boolean v7, v5, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    const-string/jumbo v8, "t"

    iget-object v9, v5, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1134
    const-string p1, "\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    return-void
.end method

.method private blacklist end()V
    .registers 2

    .line 85
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    .line 87
    return-void
.end method

.method private blacklist endLogIndices()V
    .registers 2

    .line 1170
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->unbindArrays()V

    .line 1172
    return-void
.end method

.method private blacklist flush()V
    .registers 2

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 94
    goto :goto_a

    .line 92
    :catch_6
    move-exception v0

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 95
    :goto_a
    return-void
.end method

.method private blacklist formattedAppend(Ljava/lang/StringBuilder;II)V
    .registers 4

    .line 131
    packed-switch p3, :pswitch_data_1a

    goto :goto_18

    .line 139
    :pswitch_4
    int-to-float p2, p2

    const/high16 p3, 0x47800000    # 65536.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 136
    :pswitch_c
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 137
    goto :goto_18

    .line 133
    :pswitch_14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    nop

    .line 142
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method private blacklist getBeginMode(I)Ljava/lang/String;
    .registers 2

    .line 587
    packed-switch p1, :pswitch_data_1e

    .line 603
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 601
    :pswitch_8
    const-string p1, "GL_TRIANGLE_FAN"

    return-object p1

    .line 599
    :pswitch_b
    const-string p1, "GL_TRIANGLE_STRIP"

    return-object p1

    .line 597
    :pswitch_e
    const-string p1, "GL_TRIANGLES"

    return-object p1

    .line 595
    :pswitch_11
    const-string p1, "GL_LINE_STRIP"

    return-object p1

    .line 593
    :pswitch_14
    const-string p1, "GL_LINE_LOOP"

    return-object p1

    .line 591
    :pswitch_17
    const-string p1, "GL_LINES"

    return-object p1

    .line 589
    :pswitch_1a
    const-string p1, "GL_POINTS"

    return-object p1

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getCap(I)Ljava/lang/String;
    .registers 2

    .line 436
    sparse-switch p1, :sswitch_data_68

    .line 502
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 498
    :sswitch_8
    const-string p1, "GL_SAMPLE_COVERAGE"

    return-object p1

    .line 496
    :sswitch_b
    const-string p1, "GL_SAMPLE_ALPHA_TO_ONE"

    return-object p1

    .line 494
    :sswitch_e
    const-string p1, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    return-object p1

    .line 492
    :sswitch_11
    const-string p1, "GL_MULTISAMPLE"

    return-object p1

    .line 490
    :sswitch_14
    const-string p1, "GL_TEXTURE_COORD_ARRAY"

    return-object p1

    .line 488
    :sswitch_17
    const-string p1, "GL_COLOR_ARRAY"

    return-object p1

    .line 486
    :sswitch_1a
    const-string p1, "GL_NORMAL_ARRAY"

    return-object p1

    .line 484
    :sswitch_1d
    const-string p1, "GL_VERTEX_ARRAY"

    return-object p1

    .line 482
    :sswitch_20
    const-string p1, "GL_RESCALE_NORMAL"

    return-object p1

    .line 472
    :sswitch_23
    const-string p1, "GL_LIGHT7"

    return-object p1

    .line 470
    :sswitch_26
    const-string p1, "GL_LIGHT6"

    return-object p1

    .line 468
    :sswitch_29
    const-string p1, "GL_LIGHT5"

    return-object p1

    .line 466
    :sswitch_2c
    const-string p1, "GL_LIGHT4"

    return-object p1

    .line 464
    :sswitch_2f
    const-string p1, "GL_LIGHT3"

    return-object p1

    .line 462
    :sswitch_32
    const-string p1, "GL_LIGHT2"

    return-object p1

    .line 460
    :sswitch_35
    const-string p1, "GL_LIGHT1"

    return-object p1

    .line 458
    :sswitch_38
    const-string p1, "GL_LIGHT0"

    return-object p1

    .line 442
    :sswitch_3b
    const-string p1, "GL_TEXTURE_2D"

    return-object p1

    .line 500
    :sswitch_3e
    const-string p1, "GL_SCISSOR_TEST"

    return-object p1

    .line 450
    :sswitch_41
    const-string p1, "GL_COLOR_LOGIC_OP"

    return-object p1

    .line 448
    :sswitch_44
    const-string p1, "GL_BLEND"

    return-object p1

    .line 452
    :sswitch_47
    const-string p1, "GL_DITHER"

    return-object p1

    .line 446
    :sswitch_4a
    const-string p1, "GL_ALPHA_TEST"

    return-object p1

    .line 480
    :sswitch_4d
    const-string p1, "GL_NORMALIZE"

    return-object p1

    .line 454
    :sswitch_50
    const-string p1, "GL_STENCIL_TEST"

    return-object p1

    .line 456
    :sswitch_53
    const-string p1, "GL_DEPTH_TEST"

    return-object p1

    .line 438
    :sswitch_56
    const-string p1, "GL_FOG"

    return-object p1

    .line 478
    :sswitch_59
    const-string p1, "GL_COLOR_MATERIAL"

    return-object p1

    .line 440
    :sswitch_5c
    const-string p1, "GL_LIGHTING"

    return-object p1

    .line 444
    :sswitch_5f
    const-string p1, "GL_CULL_FACE"

    return-object p1

    .line 476
    :sswitch_62
    const-string p1, "GL_LINE_SMOOTH"

    return-object p1

    .line 474
    :sswitch_65
    const-string p1, "GL_POINT_SMOOTH"

    return-object p1

    :sswitch_data_68
    .sparse-switch
        0xb10 -> :sswitch_65
        0xb20 -> :sswitch_62
        0xb44 -> :sswitch_5f
        0xb50 -> :sswitch_5c
        0xb57 -> :sswitch_59
        0xb60 -> :sswitch_56
        0xb71 -> :sswitch_53
        0xb90 -> :sswitch_50
        0xba1 -> :sswitch_4d
        0xbc0 -> :sswitch_4a
        0xbd0 -> :sswitch_47
        0xbe2 -> :sswitch_44
        0xbf2 -> :sswitch_41
        0xc11 -> :sswitch_3e
        0xde1 -> :sswitch_3b
        0x4000 -> :sswitch_38
        0x4001 -> :sswitch_35
        0x4002 -> :sswitch_32
        0x4003 -> :sswitch_2f
        0x4004 -> :sswitch_2c
        0x4005 -> :sswitch_29
        0x4006 -> :sswitch_26
        0x4007 -> :sswitch_23
        0x803a -> :sswitch_20
        0x8074 -> :sswitch_1d
        0x8075 -> :sswitch_1a
        0x8076 -> :sswitch_17
        0x8078 -> :sswitch_14
        0x809d -> :sswitch_11
        0x809e -> :sswitch_e
        0x809f -> :sswitch_b
        0x80a0 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getClearBufferMask(I)Ljava/lang/String;
    .registers 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_10

    .line 277
    const-string v1, "GL_DEPTH_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    and-int/lit16 p1, p1, -0x101

    .line 280
    :cond_10
    and-int/lit16 v1, p1, 0x400

    const-string v2, " | "

    if-eqz v1, :cond_26

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1f
    const-string v1, "GL_STENCIL_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    and-int/lit16 p1, p1, -0x401

    .line 287
    :cond_26
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_3a

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_33
    const-string v1, "GL_COLOR_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    and-int/lit16 p1, p1, -0x4001

    .line 294
    :cond_3a
    if-eqz p1, :cond_4c

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_45

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_45
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getClientState(I)Ljava/lang/String;
    .registers 2

    .line 421
    packed-switch p1, :pswitch_data_14

    .line 431
    :pswitch_3
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 429
    :pswitch_8
    const-string p1, "GL_TEXTURE_COORD_ARRAY"

    return-object p1

    .line 423
    :pswitch_b
    const-string p1, "GL_COLOR_ARRAY"

    return-object p1

    .line 427
    :pswitch_e
    const-string p1, "GL_NORMAL_ARRAY"

    return-object p1

    .line 425
    :pswitch_11
    const-string p1, "GL_VERTEX_ARRAY"

    return-object p1

    :pswitch_data_14
    .packed-switch 0x8074
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist getErrorString(I)Ljava/lang/String;
    .registers 1

    .line 254
    sparse-switch p0, :sswitch_data_1e

    .line 270
    invoke-static {p0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :sswitch_8
    const-string p0, "GL_OUT_OF_MEMORY"

    return-object p0

    .line 266
    :sswitch_b
    const-string p0, "GL_STACK_UNDERFLOW"

    return-object p0

    .line 264
    :sswitch_e
    const-string p0, "GL_STACK_OVERFLOW"

    return-object p0

    .line 262
    :sswitch_11
    const-string p0, "GL_INVALID_OPERATION"

    return-object p0

    .line 260
    :sswitch_14
    const-string p0, "GL_INVALID_VALUE"

    return-object p0

    .line 258
    :sswitch_17
    const-string p0, "GL_INVALID_ENUM"

    return-object p0

    .line 256
    :sswitch_1a
    const-string p0, "GL_NO_ERROR"

    return-object p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x500 -> :sswitch_17
        0x501 -> :sswitch_14
        0x502 -> :sswitch_11
        0x503 -> :sswitch_e
        0x504 -> :sswitch_b
        0x505 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getFaceName(I)Ljava/lang/String;
    .registers 2

    .line 784
    packed-switch p1, :pswitch_data_c

    .line 788
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 786
    :pswitch_8
    const-string p1, "GL_FRONT_AND_BACK"

    return-object p1

    nop

    :pswitch_data_c
    .packed-switch 0x408
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getFactor(I)Ljava/lang/String;
    .registers 2

    .line 304
    sparse-switch p1, :sswitch_data_2a

    .line 329
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 326
    :sswitch_8
    const-string p1, "GL_SRC_ALPHA_SATURATE"

    return-object p1

    .line 316
    :sswitch_b
    const-string p1, "GL_ONE_MINUS_DST_COLOR"

    return-object p1

    .line 314
    :sswitch_e
    const-string p1, "GL_DST_COLOR"

    return-object p1

    .line 324
    :sswitch_11
    const-string p1, "GL_ONE_MINUS_DST_ALPHA"

    return-object p1

    .line 322
    :sswitch_14
    const-string p1, "GL_DST_ALPHA"

    return-object p1

    .line 320
    :sswitch_17
    const-string p1, "GL_ONE_MINUS_SRC_ALPHA"

    return-object p1

    .line 318
    :sswitch_1a
    const-string p1, "GL_SRC_ALPHA"

    return-object p1

    .line 312
    :sswitch_1d
    const-string p1, "GL_ONE_MINUS_SRC_COLOR"

    return-object p1

    .line 310
    :sswitch_20
    const-string p1, "GL_SRC_COLOR"

    return-object p1

    .line 308
    :sswitch_23
    const-string p1, "GL_ONE"

    return-object p1

    .line 306
    :sswitch_26
    const-string p1, "GL_ZERO"

    return-object p1

    nop

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_26
        0x1 -> :sswitch_23
        0x300 -> :sswitch_20
        0x301 -> :sswitch_1d
        0x302 -> :sswitch_1a
        0x303 -> :sswitch_17
        0x304 -> :sswitch_14
        0x305 -> :sswitch_11
        0x306 -> :sswitch_e
        0x307 -> :sswitch_b
        0x308 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getFogPName(I)Ljava/lang/String;
    .registers 2

    .line 553
    packed-switch p1, :pswitch_data_18

    .line 565
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 563
    :pswitch_8
    const-string p1, "GL_FOG_COLOR"

    return-object p1

    .line 561
    :pswitch_b
    const-string p1, "GL_FOG_MODE"

    return-object p1

    .line 559
    :pswitch_e
    const-string p1, "GL_FOG_END"

    return-object p1

    .line 557
    :pswitch_11
    const-string p1, "GL_FOG_START"

    return-object p1

    .line 555
    :pswitch_14
    const-string p1, "GL_FOG_DENSITY"

    return-object p1

    nop

    :pswitch_data_18
    .packed-switch 0xb62
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getFogParamCount(I)I
    .registers 3

    .line 570
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_c

    .line 582
    const/4 p1, 0x0

    return p1

    .line 580
    :pswitch_6
    const/4 p1, 0x4

    return p1

    .line 578
    :pswitch_8
    return v0

    .line 576
    :pswitch_9
    return v0

    .line 574
    :pswitch_a
    return v0

    .line 572
    :pswitch_b
    return v0

    :pswitch_data_c
    .packed-switch 0xb62
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist getHex(I)Ljava/lang/String;
    .registers 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getHintMode(I)Ljava/lang/String;
    .registers 2

    .line 771
    packed-switch p1, :pswitch_data_12

    .line 779
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 775
    :pswitch_8
    const-string p1, "GL_NICEST"

    return-object p1

    .line 773
    :pswitch_b
    const-string p1, "GL_FASTEST"

    return-object p1

    .line 777
    :pswitch_e
    const-string p1, "GL_DONT_CARE"

    return-object p1

    nop

    :pswitch_data_12
    .packed-switch 0x1100
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getHintTarget(I)Ljava/lang/String;
    .registers 2

    .line 752
    sparse-switch p1, :sswitch_data_1a

    .line 766
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 764
    :sswitch_8
    const-string p1, "GL_GENERATE_MIPMAP_HINT"

    return-object p1

    .line 754
    :sswitch_b
    const-string p1, "GL_FOG_HINT"

    return-object p1

    .line 762
    :sswitch_e
    const-string p1, "GL_POLYGON_SMOOTH_HINT"

    return-object p1

    .line 756
    :sswitch_11
    const-string p1, "GL_LINE_SMOOTH_HINT"

    return-object p1

    .line 760
    :sswitch_14
    const-string p1, "GL_POINT_SMOOTH_HINT"

    return-object p1

    .line 758
    :sswitch_17
    const-string p1, "GL_PERSPECTIVE_CORRECTION_HINT"

    return-object p1

    :sswitch_data_1a
    .sparse-switch
        0xc50 -> :sswitch_17
        0xc51 -> :sswitch_14
        0xc52 -> :sswitch_11
        0xc53 -> :sswitch_e
        0xc54 -> :sswitch_b
        0x8192 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getIndexType(I)Ljava/lang/String;
    .registers 2

    .line 608
    packed-switch p1, :pswitch_data_e

    .line 614
    :pswitch_3
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 610
    :pswitch_8
    const-string p1, "GL_UNSIGNED_SHORT"

    return-object p1

    .line 612
    :pswitch_b
    const-string p1, "GL_UNSIGNED_BYTE"

    return-object p1

    :pswitch_data_e
    .packed-switch 0x1401
        :pswitch_b
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getIntegerStateFormat(I)I
    .registers 2

    .line 740
    packed-switch p1, :pswitch_data_8

    .line 747
    const/4 p1, 0x0

    return p1

    .line 744
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_8
    .packed-switch 0x898d
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getIntegerStateName(I)Ljava/lang/String;
    .registers 2

    .line 619
    sparse-switch p1, :sswitch_data_54

    .line 673
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 670
    :sswitch_8
    const-string p1, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object p1

    .line 668
    :sswitch_b
    const-string p1, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object p1

    .line 666
    :sswitch_e
    const-string p1, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object p1

    .line 629
    :sswitch_11
    const-string p1, "GL_COMPRESSED_TEXTURE_FORMATS"

    return-object p1

    .line 653
    :sswitch_14
    const-string p1, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    return-object p1

    .line 651
    :sswitch_17
    const-string p1, "GL_MAX_TEXTURE_UNITS"

    return-object p1

    .line 623
    :sswitch_1a
    const-string p1, "GL_ALIASED_LINE_WIDTH_RANGE"

    return-object p1

    .line 625
    :sswitch_1d
    const-string p1, "GL_ALIASED_POINT_SIZE_RANGE"

    return-object p1

    .line 635
    :sswitch_20
    const-string p1, "GL_MAX_ELEMENTS_INDICES"

    return-object p1

    .line 637
    :sswitch_23
    const-string p1, "GL_MAX_ELEMENTS_VERTICES"

    return-object p1

    .line 661
    :sswitch_26
    const-string p1, "GL_STENCIL_BITS"

    return-object p1

    .line 631
    :sswitch_29
    const-string p1, "GL_DEPTH_BITS"

    return-object p1

    .line 621
    :sswitch_2c
    const-string p1, "GL_ALPHA_BITS"

    return-object p1

    .line 627
    :sswitch_2f
    const-string p1, "GL_BLUE_BITS"

    return-object p1

    .line 633
    :sswitch_32
    const-string p1, "GL_GREEN_BITS"

    return-object p1

    .line 655
    :sswitch_35
    const-string p1, "GL_RED_BITS"

    return-object p1

    .line 663
    :sswitch_38
    const-string p1, "GL_SUBPIXEL_BITS"

    return-object p1

    .line 643
    :sswitch_3b
    const-string p1, "GL_MAX_VIEWPORT_DIMS"

    return-object p1

    .line 649
    :sswitch_3e
    const-string p1, "GL_MAX_TEXTURE_STACK_DEPTH"

    return-object p1

    .line 647
    :sswitch_41
    const-string p1, "GL_MAX_PROJECTION_STACK_DEPTH"

    return-object p1

    .line 645
    :sswitch_44
    const-string p1, "GL_MAX_MODELVIEW_STACK_DEPTH"

    return-object p1

    .line 641
    :sswitch_47
    const-string p1, "GL_MAX_TEXTURE_SIZE"

    return-object p1

    .line 639
    :sswitch_4a
    const-string p1, "GL_MAX_LIGHTS"

    return-object p1

    .line 657
    :sswitch_4d
    const-string p1, "GL_SMOOTH_LINE_WIDTH_RANGE"

    return-object p1

    .line 659
    :sswitch_50
    const-string p1, "GL_SMOOTH_POINT_SIZE_RANGE"

    return-object p1

    nop

    :sswitch_data_54
    .sparse-switch
        0xb12 -> :sswitch_50
        0xb22 -> :sswitch_4d
        0xd31 -> :sswitch_4a
        0xd33 -> :sswitch_47
        0xd36 -> :sswitch_44
        0xd38 -> :sswitch_41
        0xd39 -> :sswitch_3e
        0xd3a -> :sswitch_3b
        0xd50 -> :sswitch_38
        0xd52 -> :sswitch_35
        0xd53 -> :sswitch_32
        0xd54 -> :sswitch_2f
        0xd55 -> :sswitch_2c
        0xd56 -> :sswitch_29
        0xd57 -> :sswitch_26
        0x80e8 -> :sswitch_23
        0x80e9 -> :sswitch_20
        0x846d -> :sswitch_1d
        0x846e -> :sswitch_1a
        0x84e2 -> :sswitch_17
        0x86a2 -> :sswitch_14
        0x86a3 -> :sswitch_11
        0x898d -> :sswitch_e
        0x898e -> :sswitch_b
        0x898f -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getIntegerStateSize(I)I
    .registers 5

    .line 678
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_2c

    .line 735
    return v0

    .line 732
    :sswitch_7
    const/16 p1, 0x10

    return p1

    .line 690
    :sswitch_a
    new-array p1, v2, [I

    .line 691
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x86a2

    invoke-interface {v1, v2, p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 692
    aget p1, p1, v0

    return p1

    .line 717
    :sswitch_17
    return v2

    .line 715
    :sswitch_18
    return v2

    .line 682
    :sswitch_19
    return v1

    .line 684
    :sswitch_1a
    return v1

    .line 699
    :sswitch_1b
    return v2

    .line 701
    :sswitch_1c
    return v2

    .line 725
    :sswitch_1d
    return v2

    .line 695
    :sswitch_1e
    return v2

    .line 680
    :sswitch_1f
    return v2

    .line 686
    :sswitch_20
    return v2

    .line 697
    :sswitch_21
    return v2

    .line 719
    :sswitch_22
    return v2

    .line 727
    :sswitch_23
    return v2

    .line 707
    :sswitch_24
    return v1

    .line 713
    :sswitch_25
    return v2

    .line 711
    :sswitch_26
    return v2

    .line 709
    :sswitch_27
    return v2

    .line 705
    :sswitch_28
    return v2

    .line 703
    :sswitch_29
    return v2

    .line 721
    :sswitch_2a
    return v1

    .line 723
    :sswitch_2b
    return v1

    :sswitch_data_2c
    .sparse-switch
        0xb12 -> :sswitch_2b
        0xb22 -> :sswitch_2a
        0xd31 -> :sswitch_29
        0xd33 -> :sswitch_28
        0xd36 -> :sswitch_27
        0xd38 -> :sswitch_26
        0xd39 -> :sswitch_25
        0xd3a -> :sswitch_24
        0xd50 -> :sswitch_23
        0xd52 -> :sswitch_22
        0xd53 -> :sswitch_21
        0xd54 -> :sswitch_20
        0xd55 -> :sswitch_1f
        0xd56 -> :sswitch_1e
        0xd57 -> :sswitch_1d
        0x80e8 -> :sswitch_1c
        0x80e9 -> :sswitch_1b
        0x846d -> :sswitch_1a
        0x846e -> :sswitch_19
        0x84e2 -> :sswitch_18
        0x86a2 -> :sswitch_17
        0x86a3 -> :sswitch_a
        0x898d -> :sswitch_7
        0x898e -> :sswitch_7
        0x898f -> :sswitch_7
    .end sparse-switch
.end method

.method private blacklist getLightModelPName(I)Ljava/lang/String;
    .registers 2

    .line 892
    packed-switch p1, :pswitch_data_e

    .line 898
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 894
    :pswitch_8
    const-string p1, "GL_LIGHT_MODEL_AMBIENT"

    return-object p1

    .line 896
    :pswitch_b
    const-string p1, "GL_LIGHT_MODEL_TWO_SIDE"

    return-object p1

    :pswitch_data_e
    .packed-switch 0xb52
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getLightModelParamCount(I)I
    .registers 2

    .line 903
    packed-switch p1, :pswitch_data_a

    .line 909
    const/4 p1, 0x0

    return p1

    .line 905
    :pswitch_5
    const/4 p1, 0x4

    return p1

    .line 907
    :pswitch_7
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_a
    .packed-switch 0xb52
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getLightName(I)Ljava/lang/String;
    .registers 4

    .line 831
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_20

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_20

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GL_LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 834
    :cond_20
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist getLightPName(I)Ljava/lang/String;
    .registers 2

    .line 838
    packed-switch p1, :pswitch_data_26

    .line 860
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 858
    :pswitch_8
    const-string p1, "GL_QUADRATIC_ATTENUATION"

    return-object p1

    .line 856
    :pswitch_b
    const-string p1, "GL_LINEAR_ATTENUATION"

    return-object p1

    .line 854
    :pswitch_e
    const-string p1, "GL_CONSTANT_ATTENUATION"

    return-object p1

    .line 852
    :pswitch_11
    const-string p1, "GL_SPOT_CUTOFF"

    return-object p1

    .line 850
    :pswitch_14
    const-string p1, "GL_SPOT_EXPONENT"

    return-object p1

    .line 848
    :pswitch_17
    const-string p1, "GL_SPOT_DIRECTION"

    return-object p1

    .line 846
    :pswitch_1a
    const-string p1, "GL_POSITION"

    return-object p1

    .line 844
    :pswitch_1d
    const-string p1, "GL_SPECULAR"

    return-object p1

    .line 842
    :pswitch_20
    const-string p1, "GL_DIFFUSE"

    return-object p1

    .line 840
    :pswitch_23
    const-string p1, "GL_AMBIENT"

    return-object p1

    :pswitch_data_26
    .packed-switch 0x1200
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getLightParamCount(I)I
    .registers 4

    .line 865
    const/4 v0, 0x4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_12

    .line 887
    const/4 p1, 0x0

    return p1

    .line 885
    :pswitch_7
    return v1

    .line 883
    :pswitch_8
    return v1

    .line 881
    :pswitch_9
    return v1

    .line 879
    :pswitch_a
    return v1

    .line 877
    :pswitch_b
    return v1

    .line 875
    :pswitch_c
    const/4 p1, 0x3

    return p1

    .line 873
    :pswitch_e
    return v0

    .line 871
    :pswitch_f
    return v0

    .line 869
    :pswitch_10
    return v0

    .line 867
    :pswitch_11
    return v0

    :pswitch_data_12
    .packed-switch 0x1200
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist getMaterialPName(I)Ljava/lang/String;
    .registers 2

    .line 793
    sparse-switch p1, :sswitch_data_1a

    .line 807
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 805
    :sswitch_8
    const-string p1, "GL_AMBIENT_AND_DIFFUSE"

    return-object p1

    .line 803
    :sswitch_b
    const-string p1, "GL_SHININESS"

    return-object p1

    .line 801
    :sswitch_e
    const-string p1, "GL_EMISSION"

    return-object p1

    .line 799
    :sswitch_11
    const-string p1, "GL_SPECULAR"

    return-object p1

    .line 797
    :sswitch_14
    const-string p1, "GL_DIFFUSE"

    return-object p1

    .line 795
    :sswitch_17
    const-string p1, "GL_AMBIENT"

    return-object p1

    :sswitch_data_1a
    .sparse-switch
        0x1200 -> :sswitch_17
        0x1201 -> :sswitch_14
        0x1202 -> :sswitch_11
        0x1600 -> :sswitch_e
        0x1601 -> :sswitch_b
        0x1602 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getMaterialParamCount(I)I
    .registers 3

    .line 812
    const/4 v0, 0x4

    sparse-switch p1, :sswitch_data_e

    .line 826
    const/4 p1, 0x0

    return p1

    .line 824
    :sswitch_6
    return v0

    .line 822
    :sswitch_7
    const/4 p1, 0x1

    return p1

    .line 820
    :sswitch_9
    return v0

    .line 818
    :sswitch_a
    return v0

    .line 816
    :sswitch_b
    return v0

    .line 814
    :sswitch_c
    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x1200 -> :sswitch_c
        0x1201 -> :sswitch_b
        0x1202 -> :sswitch_a
        0x1600 -> :sswitch_9
        0x1601 -> :sswitch_7
        0x1602 -> :sswitch_6
    .end sparse-switch
.end method

.method private blacklist getMatrixMode(I)Ljava/lang/String;
    .registers 2

    .line 408
    packed-switch p1, :pswitch_data_12

    .line 416
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 414
    :pswitch_8
    const-string p1, "GL_TEXTURE"

    return-object p1

    .line 412
    :pswitch_b
    const-string p1, "GL_PROJECTION"

    return-object p1

    .line 410
    :pswitch_e
    const-string p1, "GL_MODELVIEW"

    return-object p1

    nop

    :pswitch_data_12
    .packed-switch 0x1700
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getPointerTypeName(I)Ljava/lang/String;
    .registers 2

    .line 914
    sparse-switch p1, :sswitch_data_18

    .line 926
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 922
    :sswitch_8
    const-string p1, "GL_FIXED"

    return-object p1

    .line 924
    :sswitch_b
    const-string p1, "GL_FLOAT"

    return-object p1

    .line 920
    :sswitch_e
    const-string p1, "GL_SHORT"

    return-object p1

    .line 918
    :sswitch_11
    const-string p1, "GL_UNSIGNED_BYTE"

    return-object p1

    .line 916
    :sswitch_14
    const-string p1, "GL_BYTE"

    return-object p1

    nop

    :sswitch_data_18
    .sparse-switch
        0x1400 -> :sswitch_14
        0x1401 -> :sswitch_11
        0x1402 -> :sswitch_e
        0x1406 -> :sswitch_b
        0x140c -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getShadeModel(I)Ljava/lang/String;
    .registers 2

    .line 334
    packed-switch p1, :pswitch_data_e

    .line 340
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 338
    :pswitch_8
    const-string p1, "GL_SMOOTH"

    return-object p1

    .line 336
    :pswitch_b
    const-string p1, "GL_FLAT"

    return-object p1

    :pswitch_data_e
    .packed-switch 0x1d00
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getTextureEnvPName(I)Ljava/lang/String;
    .registers 2

    .line 363
    packed-switch p1, :pswitch_data_e

    .line 369
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 367
    :pswitch_8
    const-string p1, "GL_TEXTURE_ENV_COLOR"

    return-object p1

    .line 365
    :pswitch_b
    const-string p1, "GL_TEXTURE_ENV_MODE"

    return-object p1

    :pswitch_data_e
    .packed-switch 0x2200
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getTextureEnvParamCount(I)I
    .registers 2

    .line 374
    packed-switch p1, :pswitch_data_a

    .line 380
    const/4 p1, 0x0

    return p1

    .line 378
    :pswitch_5
    const/4 p1, 0x4

    return p1

    .line 376
    :pswitch_7
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_a
    .packed-switch 0x2200
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getTextureEnvParamName(F)Ljava/lang/String;
    .registers 4

    .line 385
    float-to-int v0, p1

    .line 386
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_20

    .line 387
    sparse-switch v0, :sswitch_data_26

    .line 401
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 399
    :sswitch_e
    const-string p1, "GL_COMBINE"

    return-object p1

    .line 393
    :sswitch_11
    const-string p1, "GL_DECAL"

    return-object p1

    .line 391
    :sswitch_14
    const-string p1, "GL_MODULATE"

    return-object p1

    .line 389
    :sswitch_17
    const-string p1, "GL_REPLACE"

    return-object p1

    .line 395
    :sswitch_1a
    const-string p1, "GL_BLEND"

    return-object p1

    .line 397
    :sswitch_1d
    const-string p1, "GL_ADD"

    return-object p1

    .line 404
    :cond_20
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_26
    .sparse-switch
        0x104 -> :sswitch_1d
        0xbe2 -> :sswitch_1a
        0x1e01 -> :sswitch_17
        0x2100 -> :sswitch_14
        0x2101 -> :sswitch_11
        0x8570 -> :sswitch_e
    .end sparse-switch
.end method

.method private blacklist getTextureEnvTarget(I)Ljava/lang/String;
    .registers 2

    .line 354
    packed-switch p1, :pswitch_data_c

    .line 358
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 356
    :pswitch_8
    const-string p1, "GL_TEXTURE_ENV"

    return-object p1

    nop

    :pswitch_data_c
    .packed-switch 0x2300
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist getTexturePName(I)Ljava/lang/String;
    .registers 2

    .line 507
    sparse-switch p1, :sswitch_data_1a

    .line 521
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 519
    :sswitch_8
    const-string p1, "GL_TEXTURE_CROP_RECT_OES"

    return-object p1

    .line 517
    :sswitch_b
    const-string p1, "GL_GENERATE_MIPMAP"

    return-object p1

    .line 515
    :sswitch_e
    const-string p1, "GL_TEXTURE_WRAP_T"

    return-object p1

    .line 513
    :sswitch_11
    const-string p1, "GL_TEXTURE_WRAP_S"

    return-object p1

    .line 511
    :sswitch_14
    const-string p1, "GL_TEXTURE_MIN_FILTER"

    return-object p1

    .line 509
    :sswitch_17
    const-string p1, "GL_TEXTURE_MAG_FILTER"

    return-object p1

    :sswitch_data_1a
    .sparse-switch
        0x2800 -> :sswitch_17
        0x2801 -> :sswitch_14
        0x2802 -> :sswitch_11
        0x2803 -> :sswitch_e
        0x8191 -> :sswitch_b
        0x8b9d -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist getTextureParamName(F)Ljava/lang/String;
    .registers 4

    .line 526
    float-to-int v0, p1

    .line 527
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_26

    .line 528
    sparse-switch v0, :sswitch_data_2c

    .line 546
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 530
    :sswitch_e
    const-string p1, "GL_CLAMP_TO_EDGE"

    return-object p1

    .line 532
    :sswitch_11
    const-string p1, "GL_REPEAT"

    return-object p1

    .line 544
    :sswitch_14
    const-string p1, "GL_LINEAR_MIPMAP_LINEAR"

    return-object p1

    .line 542
    :sswitch_17
    const-string p1, "GL_NEAREST_MIPMAP_LINEAR"

    return-object p1

    .line 540
    :sswitch_1a
    const-string p1, "GL_LINEAR_MIPMAP_NEAREST"

    return-object p1

    .line 538
    :sswitch_1d
    const-string p1, "GL_NEAREST_MIPMAP_NEAREST"

    return-object p1

    .line 536
    :sswitch_20
    const-string p1, "GL_LINEAR"

    return-object p1

    .line 534
    :sswitch_23
    const-string p1, "GL_NEAREST"

    return-object p1

    .line 549
    :cond_26
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_2c
    .sparse-switch
        0x2600 -> :sswitch_23
        0x2601 -> :sswitch_20
        0x2700 -> :sswitch_1d
        0x2701 -> :sswitch_1a
        0x2702 -> :sswitch_17
        0x2703 -> :sswitch_14
        0x2901 -> :sswitch_11
        0x812f -> :sswitch_e
    .end sparse-switch
.end method

.method private blacklist getTextureTarget(I)Ljava/lang/String;
    .registers 2

    .line 345
    packed-switch p1, :pswitch_data_c

    .line 349
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 347
    :pswitch_8
    const-string p1, "GL_TEXTURE_2D"

    return-object p1

    nop

    :pswitch_data_c
    .packed-switch 0xde1
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 66
    goto :goto_7

    .line 64
    :catch_6
    move-exception p1

    .line 67
    :goto_7
    return-void
.end method

.method private blacklist logLine(Ljava/lang/String;)V
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private blacklist returns(I)V
    .registers 2

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private blacklist returns(Ljava/lang/String;)V
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    .line 112
    return-void
.end method

.method private blacklist startLogIndices()V
    .registers 3

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1165
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->bindArrays()V

    .line 1167
    return-void
.end method

.method private blacklist toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .registers 9

    .line 931
    nop

    .line 932
    const/4 v0, 0x0

    if-gez p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    move v1, v0

    .line 933
    :goto_7
    instance-of v2, p2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_36

    .line 934
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 935
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 936
    if-eqz v1, :cond_18

    .line 937
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    .line 939
    :cond_18
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 940
    nop

    :goto_25
    if-ge v0, p1, :cond_31

    .line 941
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 940
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 943
    :cond_31
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 944
    goto/16 :goto_17d

    :cond_36
    instance-of v2, p2, Ljava/nio/CharBuffer;

    if-eqz v2, :cond_6d

    .line 945
    check-cast p2, Ljava/nio/CharBuffer;

    .line 946
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 947
    if-eqz v1, :cond_49

    .line 948
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    .line 950
    :cond_49
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 951
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    .line 952
    nop

    :goto_5a
    div-int/lit8 v4, p1, 0x2

    if-ge v0, v4, :cond_68

    .line 953
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 955
    :cond_68
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 956
    goto/16 :goto_17d

    :cond_6d
    instance-of v2, p2, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_a4

    .line 957
    check-cast p2, Ljava/nio/ShortBuffer;

    .line 958
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 959
    if-eqz v1, :cond_80

    .line 960
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    .line 962
    :cond_80
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 963
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 964
    nop

    :goto_91
    div-int/lit8 v4, p1, 0x2

    if-ge v0, v4, :cond_9f

    .line 965
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 967
    :cond_9f
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 968
    goto/16 :goto_17d

    :cond_a4
    instance-of v2, p2, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_db

    .line 969
    check-cast p2, Ljava/nio/IntBuffer;

    .line 970
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    .line 971
    if-eqz v1, :cond_b7

    .line 972
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x4

    .line 974
    :cond_b7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 975
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 976
    nop

    :goto_c8
    div-int/lit8 v4, p1, 0x4

    if-ge v0, v4, :cond_d6

    .line 977
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    .line 979
    :cond_d6
    invoke-virtual {p2, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 980
    goto/16 :goto_17d

    :cond_db
    instance-of v2, p2, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_111

    .line 981
    check-cast p2, Ljava/nio/FloatBuffer;

    .line 982
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    .line 983
    if-eqz v1, :cond_ee

    .line 984
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x4

    .line 986
    :cond_ee
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 987
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 988
    nop

    :goto_ff
    div-int/lit8 v4, p1, 0x4

    if-ge v0, v4, :cond_10d

    .line 989
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_ff

    .line 991
    :cond_10d
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 992
    goto :goto_17d

    :cond_111
    instance-of v2, p2, Ljava/nio/DoubleBuffer;

    if-eqz v2, :cond_147

    .line 993
    check-cast p2, Ljava/nio/DoubleBuffer;

    .line 994
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    .line 995
    if-eqz v1, :cond_124

    .line 996
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x8

    .line 998
    :cond_124
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 999
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    .line 1000
    nop

    :goto_135
    div-int/lit8 v4, p1, 0x8

    if-ge v0, v4, :cond_143

    .line 1001
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_135

    .line 1003
    :cond_143
    invoke-virtual {p2, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 1004
    goto :goto_17d

    :cond_147
    instance-of v2, p2, Ljava/nio/LongBuffer;

    if-eqz v2, :cond_188

    .line 1005
    check-cast p2, Ljava/nio/LongBuffer;

    .line 1006
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->position()I

    move-result v2

    .line 1007
    if-eqz v1, :cond_15a

    .line 1008
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x8

    .line 1010
    :cond_15a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 1012
    nop

    :goto_16b
    div-int/lit8 v4, p1, 0x8

    if-ge v0, v4, :cond_179

    .line 1013
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 1012
    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    .line 1015
    :cond_179
    invoke-virtual {p2, v2}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    .line 1016
    nop

    .line 1019
    :goto_17d
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1022
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1023
    return-object v1

    .line 1017
    :cond_188
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unimplemented Buffer subclass."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist toCharIndices(IILjava/nio/Buffer;)[C
    .registers 7

    .line 1027
    new-array v0, p1, [C

    .line 1028
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_44

    :pswitch_6
    goto :goto_42

    .line 1040
    :pswitch_7
    instance-of p2, p3, Ljava/nio/CharBuffer;

    if-eqz p2, :cond_e

    .line 1041
    check-cast p3, Ljava/nio/CharBuffer;

    goto :goto_18

    .line 1043
    :cond_e
    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1044
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p3

    .line 1046
    :goto_18
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    .line 1047
    invoke-virtual {p3, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1048
    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 1049
    invoke-virtual {p3, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1051
    goto :goto_42

    .line 1030
    :pswitch_26
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1031
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    .line 1032
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    .line 1033
    nop

    :goto_33
    if-ge v1, p1, :cond_41

    .line 1034
    add-int v2, p2, v1

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1037
    :cond_41
    nop

    .line 1057
    :goto_42
    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x1401
        :pswitch_26
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .registers 8

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_39

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    .line 214
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 216
    :cond_39
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist toString(II[II)Ljava/lang/String;
    .registers 11

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    array-length v1, p3

    .line 148
    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_46

    .line 149
    add-int v3, p4, v2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-ltz v3, :cond_38

    if-lt v3, v1, :cond_32

    goto :goto_38

    .line 154
    :cond_32
    aget v3, p3, v3

    invoke-direct {p0, v0, v3, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_3e

    .line 152
    :cond_38
    :goto_38
    const-string/jumbo v3, "out of bounds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :goto_3e
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 158
    :cond_46
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .registers 7

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_3b

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 204
    :cond_3b
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .registers 7

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_3b

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 226
    :cond_3b
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist toString(I[FI)Ljava/lang/String;
    .registers 10

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    array-length v1, p2

    .line 184
    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_46

    .line 185
    add-int v3, p3, v2

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    if-ltz v3, :cond_38

    if-lt v3, v1, :cond_32

    goto :goto_38

    .line 190
    :cond_32
    aget v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 188
    :cond_38
    :goto_38
    const-string/jumbo v3, "out of bounds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :goto_3e
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 194
    :cond_46
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist toString(I[SI)Ljava/lang/String;
    .registers 10

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v1, p2

    .line 166
    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_46

    .line 167
    add-int v3, p3, v2

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    if-ltz v3, :cond_38

    if-lt v3, v1, :cond_32

    goto :goto_38

    .line 172
    :cond_32
    aget-short v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 170
    :cond_38
    :goto_38
    const-string/jumbo v3, "out of bounds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_3e
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 176
    :cond_46
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist unbindArrays()V
    .registers 2

    .line 1153
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_9

    .line 1154
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1155
    :cond_9
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_12

    .line 1156
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1157
    :cond_12
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_1b

    .line 1158
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1159
    :cond_1b
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_24

    .line 1160
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1161
    :cond_24
    return-void
.end method


# virtual methods
.method public whitelist glActiveTexture(I)V
    .registers 3

    .line 1178
    const-string v0, "glActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1180
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1181
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 1182
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1183
    return-void
.end method

.method public whitelist glAlphaFunc(IF)V
    .registers 4

    .line 1186
    const-string v0, "glAlphaFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1187
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1188
    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1189
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1190
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 1191
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1192
    return-void
.end method

.method public whitelist glAlphaFuncx(II)V
    .registers 4

    .line 1195
    const-string v0, "glAlphaFuncx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1196
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1197
    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1198
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1199
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 1200
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1201
    return-void
.end method

.method public whitelist glBindBuffer(II)V
    .registers 4

    .line 2771
    const-string v0, "glBindBuffer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2772
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2773
    const-string v0, "buffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2774
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2775
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 2776
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2777
    return-void
.end method

.method public whitelist glBindFramebufferOES(II)V
    .registers 4

    .line 3452
    const-string v0, "glBindFramebufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3453
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3454
    const-string v0, "framebuffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3455
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3456
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 3457
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3458
    return-void
.end method

.method public whitelist glBindRenderbufferOES(II)V
    .registers 4

    .line 3462
    const-string v0, "glBindRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3463
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3464
    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3465
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3466
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    .line 3467
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3468
    return-void
.end method

.method public whitelist glBindTexture(II)V
    .registers 5

    .line 1204
    const-string v0, "glBindTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1207
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1208
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 1209
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1210
    return-void
.end method

.method public whitelist glBlendEquation(I)V
    .registers 3

    .line 3472
    const-string v0, "glBlendEquation"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3473
    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3474
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3475
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquation(I)V

    .line 3476
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3477
    return-void
.end method

.method public whitelist glBlendEquationSeparate(II)V
    .registers 4

    .line 3481
    const-string v0, "glBlendEquationSeparate"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3482
    const-string v0, "modeRGB"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3483
    const-string v0, "modeAlpha"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3484
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3485
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquationSeparate(II)V

    .line 3486
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3487
    return-void
.end method

.method public whitelist glBlendFunc(II)V
    .registers 5

    .line 1213
    const-string v0, "glBlendFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1214
    const-string/jumbo v0, "sfactor"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v0, "dfactor"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1218
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 1219
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1220
    return-void
.end method

.method public whitelist glBlendFuncSeparate(IIII)V
    .registers 6

    .line 3492
    const-string v0, "glBlendFuncSeparate"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3493
    const-string/jumbo v0, "srcRGB"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3494
    const-string v0, "dstRGB"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3495
    const-string/jumbo v0, "srcAlpha"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3496
    const-string v0, "dstAlpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3497
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3498
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendFuncSeparate(IIII)V

    .line 3499
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3500
    return-void
.end method

.method public whitelist glBufferData(IILjava/nio/Buffer;I)V
    .registers 7

    .line 2780
    const-string v0, "glBufferData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2781
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2782
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2783
    const-string v0, "data"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    const-string/jumbo v0, "usage"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2785
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2786
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 2787
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2788
    return-void
.end method

.method public whitelist glBufferSubData(IIILjava/nio/Buffer;)V
    .registers 7

    .line 2791
    const-string v0, "glBufferSubData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2792
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2793
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2794
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2795
    const-string v0, "data"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2797
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 2798
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2799
    return-void
.end method

.method public whitelist glCheckFramebufferStatusOES(I)I
    .registers 3

    .line 3504
    const-string v0, "glCheckFramebufferStatusOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3505
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3506
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3507
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result p1

    .line 3508
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3509
    return p1
.end method

.method public whitelist glClear(I)V
    .registers 4

    .line 1223
    const-string v0, "glClear"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1224
    const-string v0, "mask"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1227
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1228
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1229
    return-void
.end method

.method public whitelist glClearColor(FFFF)V
    .registers 6

    .line 1232
    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1233
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1234
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1235
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1236
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1237
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1239
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1240
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1241
    return-void
.end method

.method public whitelist glClearColorx(IIII)V
    .registers 6

    .line 1244
    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1245
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1246
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1247
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1248
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1249
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1251
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 1252
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1253
    return-void
.end method

.method public whitelist glClearDepthf(F)V
    .registers 3

    .line 1256
    const-string v0, "glClearDepthf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1257
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1258
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1260
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 1261
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1262
    return-void
.end method

.method public whitelist glClearDepthx(I)V
    .registers 3

    .line 1265
    const-string v0, "glClearDepthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1266
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1267
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1269
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 1270
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1271
    return-void
.end method

.method public whitelist glClearStencil(I)V
    .registers 3

    .line 1274
    const-string v0, "glClearStencil"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1275
    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1278
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 1279
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1280
    return-void
.end method

.method public whitelist glClientActiveTexture(I)V
    .registers 3

    .line 1283
    const-string v0, "glClientActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1285
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1287
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 1288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1289
    return-void
.end method

.method public whitelist glClipPlanef(ILjava/nio/FloatBuffer;)V
    .registers 5

    .line 2597
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2598
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2599
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2600
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2601
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 2602
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2603
    return-void
.end method

.method public whitelist glClipPlanef(I[FI)V
    .registers 6

    .line 2587
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2588
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2589
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2590
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2591
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2592
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 2593
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2594
    return-void
.end method

.method public whitelist glClipPlanex(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 2616
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2617
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2618
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2619
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2620
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 2621
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2622
    return-void
.end method

.method public whitelist glClipPlanex(I[II)V
    .registers 6

    .line 2606
    const-string v0, "glClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2607
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2608
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2609
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2610
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2611
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 2612
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2613
    return-void
.end method

.method public whitelist glColor4f(FFFF)V
    .registers 6

    .line 1292
    const-string v0, "glColor4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1294
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1295
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1296
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1297
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1299
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 1300
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1301
    return-void
.end method

.method public whitelist glColor4ub(BBBB)V
    .registers 6

    .line 2802
    const-string v0, "glColor4ub"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2803
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2804
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2805
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2806
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2807
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2808
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    .line 2809
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2810
    return-void
.end method

.method public whitelist glColor4x(IIII)V
    .registers 6

    .line 1304
    const-string v0, "glColor4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1305
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1306
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1307
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1308
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1309
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1311
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1312
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1313
    return-void
.end method

.method public whitelist glColorMask(ZZZZ)V
    .registers 6

    .line 1317
    const-string v0, "glColorMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1319
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1320
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1321
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1322
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1324
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 1325
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1326
    return-void
.end method

.method public whitelist glColorPointer(IIII)V
    .registers 6

    .line 3335
    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3336
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3337
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3338
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3339
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3340
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3341
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 3342
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3343
    return-void
.end method

.method public whitelist glColorPointer(IIILjava/nio/Buffer;)V
    .registers 12

    .line 1329
    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1330
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 1331
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1332
    new-instance v1, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v1, v2, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 1334
    iget-object p1, v2, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 1335
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1336
    return-void
.end method

.method public whitelist glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .registers 19

    .line 1341
    const-string v0, "glCompressedTexImage2D"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v0, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v0, "level"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1344
    const-string v0, "internalformat"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1345
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1346
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1347
    const-string v0, "border"

    move/from16 v7, p6

    invoke-direct {p0, v0, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1348
    const-string v0, "imageSize"

    move/from16 v8, p7

    invoke-direct {p0, v0, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1349
    const-string v0, "data"

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1352
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 1354
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1355
    return-void
.end method

.method public whitelist glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 21

    .line 1360
    const-string v0, "glCompressedTexSubImage2D"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1361
    const-string/jumbo v0, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v0, "level"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1363
    const-string/jumbo v0, "xoffset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1364
    const-string/jumbo v0, "yoffset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1365
    const-string/jumbo v0, "width"

    move/from16 v6, p5

    invoke-direct {p0, v0, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1366
    const-string v0, "height"

    move/from16 v7, p6

    invoke-direct {p0, v0, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1367
    const-string v0, "format"

    move/from16 v8, p7

    invoke-direct {p0, v0, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1368
    const-string v0, "imageSize"

    move/from16 v9, p8

    invoke-direct {p0, v0, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1369
    const-string v0, "data"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1372
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1374
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1375
    return-void
.end method

.method public whitelist glCopyTexImage2D(IIIIIIII)V
    .registers 19

    .line 1379
    const-string v0, "glCopyTexImage2D"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1380
    const-string/jumbo v0, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v0, "level"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1382
    const-string v0, "internalformat"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1383
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1384
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1385
    const-string/jumbo v0, "width"

    move/from16 v7, p6

    invoke-direct {p0, v0, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1386
    const-string v0, "height"

    move/from16 v8, p7

    invoke-direct {p0, v0, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1387
    const-string v0, "border"

    move/from16 v9, p8

    invoke-direct {p0, v0, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1388
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1390
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 1392
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1393
    return-void
.end method

.method public whitelist glCopyTexSubImage2D(IIIIIIII)V
    .registers 19

    .line 1397
    const-string v0, "glCopyTexSubImage2D"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1398
    const-string/jumbo v0, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v0, "level"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1400
    const-string/jumbo v0, "xoffset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1401
    const-string/jumbo v0, "yoffset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1402
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1403
    const-string/jumbo v0, "y"

    move/from16 v7, p6

    invoke-direct {p0, v0, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1404
    const-string/jumbo v0, "width"

    move/from16 v8, p7

    invoke-direct {p0, v0, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1405
    const-string v0, "height"

    move/from16 v9, p8

    invoke-direct {p0, v0, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1406
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1408
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 1410
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1411
    return-void
.end method

.method public whitelist glCullFace(I)V
    .registers 3

    .line 1414
    const-string v0, "glCullFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1415
    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1416
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1418
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 1419
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1420
    return-void
.end method

.method public whitelist glCurrentPaletteMatrixOES(I)V
    .registers 3

    .line 3395
    const-string v0, "glCurrentPaletteMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3396
    const-string v0, "matrixpaletteindex"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3397
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3398
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    .line 3399
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3400
    return-void
.end method

.method public whitelist glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 2823
    const-string v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2824
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2825
    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2827
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 2828
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2829
    return-void
.end method

.method public whitelist glDeleteBuffers(I[II)V
    .registers 6

    .line 2813
    const-string v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2814
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2815
    const-string v0, "buffers"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2817
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2818
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 2819
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2820
    return-void
.end method

.method public whitelist glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 3525
    const-string v0, "glDeleteFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3526
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3527
    const-string v0, "framebuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3529
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 3530
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3531
    return-void
.end method

.method public whitelist glDeleteFramebuffersOES(I[II)V
    .registers 6

    .line 3514
    const-string v0, "glDeleteFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3515
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3516
    const-string v0, "framebuffers"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3518
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3519
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 3520
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3521
    return-void
.end method

.method public whitelist glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 3546
    const-string v0, "glDeleteRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3547
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3548
    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3550
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 3551
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3552
    return-void
.end method

.method public whitelist glDeleteRenderbuffersOES(I[II)V
    .registers 6

    .line 3535
    const-string v0, "glDeleteRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3536
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3537
    const-string/jumbo v0, "renderbuffers"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3539
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3540
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(I[II)V

    .line 3541
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3542
    return-void
.end method

.method public whitelist glDeleteTextures(ILjava/nio/IntBuffer;)V
    .registers 4

    .line 1434
    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1435
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1436
    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1437
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1439
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 1440
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1441
    return-void
.end method

.method public whitelist glDeleteTextures(I[II)V
    .registers 5

    .line 1423
    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1424
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1425
    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1426
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1427
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1429
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 1430
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1431
    return-void
.end method

.method public whitelist glDepthFunc(I)V
    .registers 3

    .line 1444
    const-string v0, "glDepthFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1445
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1446
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1448
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 1449
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1450
    return-void
.end method

.method public whitelist glDepthMask(Z)V
    .registers 3

    .line 1453
    const-string v0, "glDepthMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1454
    const-string v0, "flag"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1455
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1457
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 1458
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1459
    return-void
.end method

.method public whitelist glDepthRangef(FF)V
    .registers 4

    .line 1462
    const-string v0, "glDepthRangef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1463
    const-string v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1464
    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1465
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1467
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 1468
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1469
    return-void
.end method

.method public whitelist glDepthRangex(II)V
    .registers 4

    .line 1472
    const-string v0, "glDepthRangex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1473
    const-string v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1474
    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1475
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1477
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 1478
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1479
    return-void
.end method

.method public whitelist glDisable(I)V
    .registers 4

    .line 1482
    const-string v0, "glDisable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1483
    const-string v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1486
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1487
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1488
    return-void
.end method

.method public whitelist glDisableClientState(I)V
    .registers 4

    .line 1491
    const-string v0, "glDisableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1492
    const-string v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1495
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2a

    :pswitch_15
    goto :goto_21

    .line 1503
    :pswitch_16
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    .line 1504
    goto :goto_21

    .line 1497
    :pswitch_19
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    .line 1498
    goto :goto_21

    .line 1500
    :pswitch_1c
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    .line 1501
    goto :goto_21

    .line 1506
    :pswitch_1f
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 1509
    :goto_21
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 1510
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1511
    return-void

    :pswitch_data_2a
    .packed-switch 0x8074
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public whitelist glDrawArrays(III)V
    .registers 7

    .line 1514
    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1515
    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1516
    const-string v0, "first"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1517
    const-string v0, "count"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1518
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    .line 1519
    const/4 v0, 0x0

    :goto_18
    if-ge v0, p3, :cond_24

    .line 1520
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-direct {p0, v1, v0, v2}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    .line 1519
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1522
    :cond_24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    .line 1523
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1525
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1526
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1527
    return-void
.end method

.method public whitelist glDrawElements(IIII)V
    .registers 6

    .line 3346
    const-string v0, "glDrawElements"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3347
    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3348
    const-string v0, "count"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3349
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3350
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3351
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3352
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 3353
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3354
    return-void
.end method

.method public whitelist glDrawElements(IIILjava/nio/Buffer;)V
    .registers 10

    .line 1530
    const-string v0, "glDrawElements"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1531
    const-string v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string v0, "count"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1533
    const-string/jumbo v0, "type"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    move-result-object v0

    .line 1535
    array-length v1, v0

    .line 1536
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    .line 1537
    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_32

    .line 1538
    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    aget-char v4, v0, v2

    invoke-direct {p0, v3, v2, v4}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    .line 1537
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1540
    :cond_32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    .line 1541
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1543
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1544
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1545
    return-void
.end method

.method public whitelist glDrawTexfOES(FFFFF)V
    .registers 13

    .line 2628
    const-string v0, "glDrawTexfOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2629
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2630
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2631
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2632
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2633
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2634
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2635
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 2636
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2637
    return-void
.end method

.method public whitelist glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .registers 4

    .line 2649
    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2650
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2651
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2652
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 2653
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2654
    return-void
.end method

.method public whitelist glDrawTexfvOES([FI)V
    .registers 5

    .line 2640
    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2641
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2642
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2643
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2644
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 2645
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2646
    return-void
.end method

.method public whitelist glDrawTexiOES(IIIII)V
    .registers 13

    .line 2657
    const-string v0, "glDrawTexiOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2658
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2659
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2660
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2661
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2662
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2663
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2664
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 2665
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2666
    return-void
.end method

.method public whitelist glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .registers 4

    .line 2678
    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2679
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2680
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2681
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 2682
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2683
    return-void
.end method

.method public whitelist glDrawTexivOES([II)V
    .registers 5

    .line 2669
    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2670
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2671
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2672
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2673
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 2674
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2675
    return-void
.end method

.method public whitelist glDrawTexsOES(SSSSS)V
    .registers 13

    .line 2687
    const-string v0, "glDrawTexsOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2688
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2689
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2690
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2691
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2692
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2694
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 2695
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2696
    return-void
.end method

.method public whitelist glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .registers 4

    .line 2708
    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2709
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    .line 2710
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2711
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 2712
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2713
    return-void
.end method

.method public whitelist glDrawTexsvOES([SI)V
    .registers 5

    .line 2699
    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2700
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    .line 2701
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2702
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2703
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 2704
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2705
    return-void
.end method

.method public whitelist glDrawTexxOES(IIIII)V
    .registers 13

    .line 2716
    const-string v0, "glDrawTexxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2717
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2718
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2719
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2720
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2721
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2722
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2723
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 2724
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2725
    return-void
.end method

.method public whitelist glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .registers 4

    .line 2737
    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2738
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2739
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2740
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 2741
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2742
    return-void
.end method

.method public whitelist glDrawTexxvOES([II)V
    .registers 5

    .line 2728
    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2729
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2730
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2731
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2732
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 2733
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2734
    return-void
.end method

.method public whitelist glEnable(I)V
    .registers 4

    .line 1548
    const-string v0, "glEnable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1549
    const-string v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1552
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1553
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1554
    return-void
.end method

.method public whitelist glEnableClientState(I)V
    .registers 4

    .line 1557
    const-string v0, "glEnableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1558
    const-string v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1561
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_2a

    :pswitch_15
    goto :goto_21

    .line 1569
    :pswitch_16
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    .line 1570
    goto :goto_21

    .line 1563
    :pswitch_19
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    .line 1564
    goto :goto_21

    .line 1566
    :pswitch_1c
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    .line 1567
    goto :goto_21

    .line 1572
    :pswitch_1f
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 1575
    :goto_21
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1576
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1577
    return-void

    :pswitch_data_2a
    .packed-switch 0x8074
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public whitelist glFinish()V
    .registers 2

    .line 1580
    const-string v0, "glFinish"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1581
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1583
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 1584
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1585
    return-void
.end method

.method public whitelist glFlush()V
    .registers 2

    .line 1588
    const-string v0, "glFlush"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1589
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1591
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 1592
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1593
    return-void
.end method

.method public whitelist glFogf(IF)V
    .registers 4

    .line 1596
    const-string v0, "glFogf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1597
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1598
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1599
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1601
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 1602
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1603
    return-void
.end method

.method public whitelist glFogfv(ILjava/nio/FloatBuffer;)V
    .registers 5

    .line 1617
    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1618
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1620
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1622
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 1623
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1624
    return-void
.end method

.method public whitelist glFogfv(I[FI)V
    .registers 6

    .line 1606
    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1607
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1609
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1610
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1612
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 1613
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1614
    return-void
.end method

.method public whitelist glFogx(II)V
    .registers 5

    .line 1627
    const-string v0, "glFogx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1628
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1630
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1632
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 1633
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1634
    return-void
.end method

.method public whitelist glFogxv(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 1648
    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1649
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1651
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1653
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 1654
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1655
    return-void
.end method

.method public whitelist glFogxv(I[II)V
    .registers 6

    .line 1637
    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1640
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1641
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1643
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 1644
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1645
    return-void
.end method

.method public whitelist glFramebufferRenderbufferOES(IIII)V
    .registers 6

    .line 3557
    const-string v0, "glFramebufferRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3558
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3559
    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3560
    const-string/jumbo v0, "renderbuffertarget"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3561
    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3562
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3563
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    .line 3564
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3565
    return-void
.end method

.method public whitelist glFramebufferTexture2DOES(IIIII)V
    .registers 13

    .line 3570
    const-string v0, "glFramebufferTexture2DOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3571
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3572
    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3573
    const-string/jumbo v0, "textarget"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3574
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3575
    const-string v0, "level"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3576
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3577
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 3578
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3579
    return-void
.end method

.method public whitelist glFrontFace(I)V
    .registers 3

    .line 1658
    const-string v0, "glFrontFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1659
    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1660
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1662
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 1663
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1664
    return-void
.end method

.method public whitelist glFrustumf(FFFFFF)V
    .registers 15

    .line 1668
    const-string v0, "glFrustumf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1669
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1670
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1671
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1672
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1673
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1674
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1675
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1677
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 1678
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1679
    return-void
.end method

.method public whitelist glFrustumx(IIIIII)V
    .registers 15

    .line 1683
    const-string v0, "glFrustumx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1684
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1685
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1686
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1687
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1688
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1689
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1690
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1692
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 1693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1694
    return-void
.end method

.method public whitelist glGenBuffers(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 2842
    const-string v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2843
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2844
    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2846
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 2847
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2848
    return-void
.end method

.method public whitelist glGenBuffers(I[II)V
    .registers 6

    .line 2832
    const-string v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2833
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2834
    const-string v0, "buffers"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2836
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2837
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 2838
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2839
    return-void
.end method

.method public whitelist glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 3603
    const-string v0, "glGenFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3604
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3605
    const-string v0, "framebuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3607
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 3608
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3609
    return-void
.end method

.method public whitelist glGenFramebuffersOES(I[II)V
    .registers 6

    .line 3592
    const-string v0, "glGenFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3593
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3594
    const-string v0, "framebuffers"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3596
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3597
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    .line 3598
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3599
    return-void
.end method

.method public whitelist glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 3624
    const-string v0, "glGenRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3625
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3626
    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3627
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3628
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 3629
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3630
    return-void
.end method

.method public whitelist glGenRenderbuffersOES(I[II)V
    .registers 6

    .line 3613
    const-string v0, "glGenRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3614
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3615
    const-string/jumbo v0, "renderbuffers"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3617
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3618
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    .line 3619
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3620
    return-void
.end method

.method public whitelist glGenTextures(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 1710
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1711
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1712
    const-string/jumbo v0, "textures"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 1716
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1718
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1719
    return-void
.end method

.method public whitelist glGenTextures(I[II)V
    .registers 6

    .line 1697
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1698
    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1699
    const-string/jumbo v0, "textures"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1702
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 1704
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1706
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1707
    return-void
.end method

.method public whitelist glGenerateMipmapOES(I)V
    .registers 3

    .line 3583
    const-string v0, "glGenerateMipmapOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3584
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3585
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3586
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    .line 3587
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3588
    return-void
.end method

.method public whitelist glGetBooleanv(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 2861
    const-string v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2862
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2863
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2865
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 2866
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2867
    return-void
.end method

.method public whitelist glGetBooleanv(I[ZI)V
    .registers 6

    .line 2851
    const-string v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2852
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2853
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2855
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2856
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    .line 2857
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2858
    return-void
.end method

.method public whitelist glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 2882
    const-string v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2883
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2884
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2885
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2887
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 2888
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2889
    return-void
.end method

.method public whitelist glGetBufferParameteriv(II[II)V
    .registers 7

    .line 2871
    const-string v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2872
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2873
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2874
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2876
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2877
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    .line 2878
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2879
    return-void
.end method

.method public whitelist glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .registers 5

    .line 2902
    const-string v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2903
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2904
    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2906
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 2907
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2908
    return-void
.end method

.method public whitelist glGetClipPlanef(I[FI)V
    .registers 6

    .line 2892
    const-string v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2893
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2894
    const-string v0, "eqn"

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2896
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2897
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    .line 2898
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2899
    return-void
.end method

.method public whitelist glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 2920
    const-string v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2921
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2922
    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2924
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    .line 2925
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2926
    return-void
.end method

.method public whitelist glGetClipPlanex(I[II)V
    .registers 6

    .line 2911
    const-string v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2912
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2913
    const-string v0, "eqn"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2915
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2916
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    .line 2917
    return-void
.end method

.method public whitelist glGetError()I
    .registers 2

    .line 1722
    const-string v0, "glGetError"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 1726
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(I)V

    .line 1728
    return v0
.end method

.method public whitelist glGetFixedv(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 2938
    const-string v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2939
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2940
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2942
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    .line 2943
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2944
    return-void
.end method

.method public whitelist glGetFixedv(I[II)V
    .registers 6

    .line 2929
    const-string v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2930
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2931
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2933
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2934
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    .line 2935
    return-void
.end method

.method public whitelist glGetFloatv(ILjava/nio/FloatBuffer;)V
    .registers 5

    .line 2956
    const-string v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2957
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2958
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2960
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 2961
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2962
    return-void
.end method

.method public whitelist glGetFloatv(I[FI)V
    .registers 6

    .line 2947
    const-string v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2948
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2949
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2951
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2952
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    .line 2953
    return-void
.end method

.method public whitelist glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .registers 7

    .line 3649
    const-string v0, "glGetFramebufferAttachmentParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3650
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3651
    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3652
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3653
    const-string/jumbo v0, "params"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3655
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    .line 3656
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3657
    return-void
.end method

.method public whitelist glGetFramebufferAttachmentParameterivOES(III[II)V
    .registers 13

    .line 3635
    const-string v0, "glGetFramebufferAttachmentParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3636
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3637
    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3638
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3639
    const-string/jumbo v0, "params"

    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3641
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3642
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(III[II)V

    .line 3643
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3644
    return-void
.end method

.method public whitelist glGetIntegerv(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 1746
    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1747
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1752
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    .line 1753
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result p1

    .line 1752
    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1755
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1756
    return-void
.end method

.method public whitelist glGetIntegerv(I[II)V
    .registers 6

    .line 1732
    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1733
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1737
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 1739
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    .line 1740
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result p1

    .line 1739
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1742
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1743
    return-void
.end method

.method public whitelist glGetLightfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 2976
    const-string v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2977
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2978
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2979
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2981
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 2982
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2983
    return-void
.end method

.method public whitelist glGetLightfv(II[FI)V
    .registers 7

    .line 2965
    const-string v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2966
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2967
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2968
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2970
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2971
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    .line 2972
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2973
    return-void
.end method

.method public whitelist glGetLightxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 2997
    const-string v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2998
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2999
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3000
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3002
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    .line 3003
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3004
    return-void
.end method

.method public whitelist glGetLightxv(II[II)V
    .registers 7

    .line 2986
    const-string v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2987
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2988
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2989
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2991
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2992
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    .line 2993
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2994
    return-void
.end method

.method public whitelist glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 3019
    const-string v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3020
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3021
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3022
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3024
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 3025
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3026
    return-void
.end method

.method public whitelist glGetMaterialfv(II[FI)V
    .registers 7

    .line 3008
    const-string v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3009
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3010
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3011
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3013
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3014
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    .line 3015
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3016
    return-void
.end method

.method public whitelist glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3040
    const-string v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3041
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3042
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3043
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3045
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    .line 3046
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3047
    return-void
.end method

.method public whitelist glGetMaterialxv(II[II)V
    .registers 7

    .line 3029
    const-string v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3030
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3031
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3032
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3034
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3035
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    .line 3036
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3037
    return-void
.end method

.method public whitelist glGetPointerv(I[Ljava/nio/Buffer;)V
    .registers 5

    .line 3357
    const-string v0, "glGetPointerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3358
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3359
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3361
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 3362
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3363
    return-void
.end method

.method public whitelist glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3675
    const-string v0, "glGetRenderbufferParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3676
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3677
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3678
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3679
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3680
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    .line 3681
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3682
    return-void
.end method

.method public whitelist glGetRenderbufferParameterivOES(II[II)V
    .registers 7

    .line 3662
    const-string v0, "glGetRenderbufferParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3663
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3664
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3665
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3666
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3667
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3668
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(II[II)V

    .line 3669
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3670
    return-void
.end method

.method public whitelist glGetString(I)Ljava/lang/String;
    .registers 3

    .line 1759
    const-string v0, "glGetString"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1760
    const-string v0, "name"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1762
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1764
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1766
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1767
    return-object p1
.end method

.method public whitelist glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3061
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3062
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3063
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3064
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3066
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 3067
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3068
    return-void
.end method

.method public whitelist glGetTexEnviv(II[II)V
    .registers 7

    .line 3050
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3051
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3052
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3053
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3055
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3056
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 3057
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3058
    return-void
.end method

.method public whitelist glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3082
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3083
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3084
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3085
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3087
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 3088
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3089
    return-void
.end method

.method public whitelist glGetTexEnvxv(II[II)V
    .registers 7

    .line 3071
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3072
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3073
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3074
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3076
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3077
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 3078
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3079
    return-void
.end method

.method public whitelist glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 3698
    const-string v0, "glGetTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3699
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3700
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3701
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3702
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3703
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 3704
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3705
    return-void
.end method

.method public whitelist glGetTexGenfv(II[FI)V
    .registers 7

    .line 3686
    const-string v0, "glGetTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3687
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3688
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3689
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3691
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3692
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(II[FI)V

    .line 3693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3694
    return-void
.end method

.method public whitelist glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3721
    const-string v0, "glGetTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3722
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3723
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3724
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3726
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    .line 3727
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3728
    return-void
.end method

.method public whitelist glGetTexGeniv(II[II)V
    .registers 7

    .line 3709
    const-string v0, "glGetTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3710
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3711
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3712
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3713
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3714
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3715
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(II[II)V

    .line 3716
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3717
    return-void
.end method

.method public whitelist glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3744
    const-string v0, "glGetTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3745
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3746
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3747
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3749
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    .line 3750
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3751
    return-void
.end method

.method public whitelist glGetTexGenxv(II[II)V
    .registers 7

    .line 3732
    const-string v0, "glGetTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3733
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3734
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3735
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3736
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3737
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3738
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(II[II)V

    .line 3739
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3740
    return-void
.end method

.method public whitelist glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 3103
    const-string v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3104
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3105
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3106
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3108
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 3109
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3110
    return-void
.end method

.method public whitelist glGetTexParameterfv(II[FI)V
    .registers 7

    .line 3092
    const-string v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3093
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3094
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3095
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3097
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3098
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    .line 3099
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3100
    return-void
.end method

.method public whitelist glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3124
    const-string v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3125
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3126
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3127
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3129
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 3130
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3131
    return-void
.end method

.method public whitelist glGetTexParameteriv(II[II)V
    .registers 7

    .line 3113
    const-string v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3114
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3115
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3116
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3118
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3119
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 3120
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3121
    return-void
.end method

.method public whitelist glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3146
    const-string v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3147
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3148
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3149
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3151
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 3152
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3153
    return-void
.end method

.method public whitelist glGetTexParameterxv(II[II)V
    .registers 7

    .line 3135
    const-string v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3136
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3137
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3138
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3140
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3141
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    .line 3142
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3143
    return-void
.end method

.method public whitelist glHint(II)V
    .registers 5

    .line 1771
    const-string v0, "glHint"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1772
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string v0, "mode"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1776
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 1777
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1778
    return-void
.end method

.method public whitelist glIsBuffer(I)Z
    .registers 3

    .line 3156
    const-string v0, "glIsBuffer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3157
    const-string v0, "buffer"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3158
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3159
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result p1

    .line 3160
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3161
    return p1
.end method

.method public whitelist glIsEnabled(I)Z
    .registers 3

    .line 3165
    const-string v0, "glIsEnabled"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3166
    const-string v0, "cap"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3167
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3168
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result p1

    .line 3169
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3170
    return p1
.end method

.method public whitelist glIsFramebufferOES(I)Z
    .registers 3

    .line 3755
    const-string v0, "glIsFramebufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3756
    const-string v0, "framebuffer"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3757
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3758
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsFramebufferOES(I)Z

    move-result p1

    .line 3759
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3760
    return p1
.end method

.method public whitelist glIsRenderbufferOES(I)Z
    .registers 3

    .line 3765
    const-string v0, "glIsRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3766
    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3767
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3768
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsRenderbufferOES(I)Z

    .line 3769
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3770
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist glIsTexture(I)Z
    .registers 3

    .line 3174
    const-string v0, "glIsTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3175
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3176
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3177
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result p1

    .line 3178
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3179
    return p1
.end method

.method public whitelist glLightModelf(IF)V
    .registers 5

    .line 1781
    const-string v0, "glLightModelf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1782
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1784
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1786
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 1787
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1788
    return-void
.end method

.method public whitelist glLightModelfv(ILjava/nio/FloatBuffer;)V
    .registers 5

    .line 1802
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1803
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1805
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1807
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 1808
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1809
    return-void
.end method

.method public whitelist glLightModelfv(I[FI)V
    .registers 6

    .line 1791
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1792
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1794
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1795
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1797
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 1798
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1799
    return-void
.end method

.method public whitelist glLightModelx(II)V
    .registers 5

    .line 1812
    const-string v0, "glLightModelx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1813
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1815
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1817
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 1818
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1819
    return-void
.end method

.method public whitelist glLightModelxv(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 1833
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1834
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1836
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1838
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 1839
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1840
    return-void
.end method

.method public whitelist glLightModelxv(I[II)V
    .registers 6

    .line 1822
    const-string v0, "glLightModelxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1823
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1825
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1828
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 1829
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1830
    return-void
.end method

.method public whitelist glLightf(IIF)V
    .registers 6

    .line 1843
    const-string v0, "glLightf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1844
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1847
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1849
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 1850
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1851
    return-void
.end method

.method public whitelist glLightfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 1866
    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1867
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1870
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1872
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 1873
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1874
    return-void
.end method

.method public whitelist glLightfv(II[FI)V
    .registers 7

    .line 1854
    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1855
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1858
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1859
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1861
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 1862
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1863
    return-void
.end method

.method public whitelist glLightx(III)V
    .registers 6

    .line 1877
    const-string v0, "glLightx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1878
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1881
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1883
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 1884
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1885
    return-void
.end method

.method public whitelist glLightxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 1900
    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1901
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1904
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1906
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 1907
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1908
    return-void
.end method

.method public whitelist glLightxv(II[II)V
    .registers 7

    .line 1888
    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1889
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1892
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1893
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1895
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 1896
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1897
    return-void
.end method

.method public whitelist glLineWidth(F)V
    .registers 3

    .line 1911
    const-string v0, "glLineWidth"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1912
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1913
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1915
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 1916
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1917
    return-void
.end method

.method public whitelist glLineWidthx(I)V
    .registers 3

    .line 1920
    const-string v0, "glLineWidthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1921
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1922
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1924
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 1925
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1926
    return-void
.end method

.method public whitelist glLoadIdentity()V
    .registers 2

    .line 1929
    const-string v0, "glLoadIdentity"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1932
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1933
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1934
    return-void
.end method

.method public whitelist glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .registers 4

    .line 1947
    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1948
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1949
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1951
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 1952
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1953
    return-void
.end method

.method public whitelist glLoadMatrixf([FI)V
    .registers 5

    .line 1937
    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1938
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1939
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1940
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1942
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 1943
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1944
    return-void
.end method

.method public whitelist glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .registers 4

    .line 1966
    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1967
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1968
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1970
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 1971
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1972
    return-void
.end method

.method public whitelist glLoadMatrixx([II)V
    .registers 5

    .line 1956
    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1957
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1958
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1959
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1961
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 1962
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1963
    return-void
.end method

.method public whitelist glLoadPaletteFromModelViewMatrixOES()V
    .registers 2

    .line 3403
    const-string v0, "glLoadPaletteFromModelViewMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3404
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3405
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    .line 3406
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3407
    return-void
.end method

.method public whitelist glLogicOp(I)V
    .registers 3

    .line 1975
    const-string v0, "glLogicOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1976
    const-string/jumbo v0, "opcode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1977
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1979
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 1980
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1981
    return-void
.end method

.method public whitelist glMaterialf(IIF)V
    .registers 6

    .line 1984
    const-string v0, "glMaterialf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1985
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1988
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1990
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 1991
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1992
    return-void
.end method

.method public whitelist glMaterialfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 2007
    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2008
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2011
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2013
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 2014
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2015
    return-void
.end method

.method public whitelist glMaterialfv(II[FI)V
    .registers 7

    .line 1995
    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1996
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1999
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2000
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2002
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 2003
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2004
    return-void
.end method

.method public whitelist glMaterialx(III)V
    .registers 6

    .line 2018
    const-string v0, "glMaterialx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2019
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2022
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2024
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 2025
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2026
    return-void
.end method

.method public whitelist glMaterialxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 2041
    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2042
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2045
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2047
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 2048
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2049
    return-void
.end method

.method public whitelist glMaterialxv(II[II)V
    .registers 7

    .line 2029
    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2030
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2033
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2034
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2036
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 2037
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2038
    return-void
.end method

.method public whitelist glMatrixIndexPointerOES(IIII)V
    .registers 6

    .line 3420
    const-string v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3421
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3422
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3423
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3424
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3425
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3426
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    .line 3427
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3428
    return-void
.end method

.method public whitelist glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .registers 6

    .line 3411
    const-string v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3412
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3413
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3414
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    .line 3415
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3416
    return-void
.end method

.method public whitelist glMatrixMode(I)V
    .registers 4

    .line 2052
    const-string v0, "glMatrixMode"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2053
    const-string v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2056
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2057
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2058
    return-void
.end method

.method public whitelist glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .registers 4

    .line 2071
    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2072
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2073
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2075
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 2076
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2077
    return-void
.end method

.method public whitelist glMultMatrixf([FI)V
    .registers 5

    .line 2061
    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2062
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2063
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2064
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2066
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 2067
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2068
    return-void
.end method

.method public whitelist glMultMatrixx(Ljava/nio/IntBuffer;)V
    .registers 4

    .line 2090
    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2091
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2092
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2094
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 2095
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2096
    return-void
.end method

.method public whitelist glMultMatrixx([II)V
    .registers 5

    .line 2080
    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2081
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2082
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2083
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2085
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 2086
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2087
    return-void
.end method

.method public whitelist glMultiTexCoord4f(IFFFF)V
    .registers 13

    .line 2099
    const-string v0, "glMultiTexCoord4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2100
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2101
    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2102
    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2103
    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2104
    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2105
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2107
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 2108
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2109
    return-void
.end method

.method public whitelist glMultiTexCoord4x(IIIII)V
    .registers 13

    .line 2112
    const-string v0, "glMultiTexCoord4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2113
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2114
    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2115
    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2116
    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2117
    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2118
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2120
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 2121
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2122
    return-void
.end method

.method public whitelist glNormal3f(FFF)V
    .registers 5

    .line 2125
    const-string v0, "glNormal3f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2126
    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2127
    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2128
    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2129
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2131
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 2132
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2133
    return-void
.end method

.method public whitelist glNormal3x(III)V
    .registers 5

    .line 2136
    const-string v0, "glNormal3x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2137
    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2138
    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2139
    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2140
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2142
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 2143
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2144
    return-void
.end method

.method public whitelist glNormalPointer(III)V
    .registers 5

    .line 3366
    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3367
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3368
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3369
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3370
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3371
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 3372
    return-void
.end method

.method public whitelist glNormalPointer(IILjava/nio/Buffer;)V
    .registers 12

    .line 2147
    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2148
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2149
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2150
    const-string/jumbo v0, "pointer"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2152
    new-instance v2, Landroid/opengl/GLLogWrapper$PointerInfo;

    const/4 v4, 0x3

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v2, v3, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 2154
    iget-object p1, v3, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 2155
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2156
    return-void
.end method

.method public whitelist glOrthof(FFFFFF)V
    .registers 15

    .line 2160
    const-string v0, "glOrthof"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2161
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2162
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2163
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2164
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2165
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2166
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2167
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2169
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 2170
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2171
    return-void
.end method

.method public whitelist glOrthox(IIIIII)V
    .registers 15

    .line 2175
    const-string v0, "glOrthox"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2176
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2177
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2178
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2179
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2180
    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2181
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2182
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2184
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 2185
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2186
    return-void
.end method

.method public whitelist glPixelStorei(II)V
    .registers 4

    .line 2189
    const-string v0, "glPixelStorei"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2190
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2191
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2192
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2194
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 2195
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2196
    return-void
.end method

.method public whitelist glPointParameterf(IF)V
    .registers 4

    .line 3183
    const-string v0, "glPointParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3184
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3185
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 3186
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3187
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    .line 3188
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3189
    return-void
.end method

.method public whitelist glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .registers 5

    .line 3202
    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3203
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3204
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3206
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 3207
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3208
    return-void
.end method

.method public whitelist glPointParameterfv(I[FI)V
    .registers 6

    .line 3192
    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3193
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3194
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3196
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3197
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    .line 3198
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3199
    return-void
.end method

.method public whitelist glPointParameterx(II)V
    .registers 4

    .line 3211
    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3212
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3213
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3214
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3215
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    .line 3216
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3217
    return-void
.end method

.method public whitelist glPointParameterxv(ILjava/nio/IntBuffer;)V
    .registers 5

    .line 3230
    const-string v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3231
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3232
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3234
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    .line 3235
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3236
    return-void
.end method

.method public whitelist glPointParameterxv(I[II)V
    .registers 6

    .line 3220
    const-string v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3221
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3222
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3224
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3225
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    .line 3226
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3227
    return-void
.end method

.method public whitelist glPointSize(F)V
    .registers 3

    .line 2199
    const-string v0, "glPointSize"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2200
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2201
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2203
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 2204
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2205
    return-void
.end method

.method public whitelist glPointSizePointerOES(IILjava/nio/Buffer;)V
    .registers 6

    .line 3239
    const-string v0, "glPointSizePointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3240
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3241
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3242
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3244
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 3245
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3246
    return-void
.end method

.method public whitelist glPointSizex(I)V
    .registers 3

    .line 2208
    const-string v0, "glPointSizex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2209
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2210
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2212
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 2213
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2214
    return-void
.end method

.method public whitelist glPolygonOffset(FF)V
    .registers 4

    .line 2217
    const-string v0, "glPolygonOffset"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2218
    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2219
    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2220
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2221
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 2222
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2223
    return-void
.end method

.method public whitelist glPolygonOffsetx(II)V
    .registers 4

    .line 2226
    const-string v0, "glPolygonOffsetx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2227
    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2228
    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2229
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2231
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 2232
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2233
    return-void
.end method

.method public whitelist glPopMatrix()V
    .registers 2

    .line 2236
    const-string v0, "glPopMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2237
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2239
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2240
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2241
    return-void
.end method

.method public whitelist glPushMatrix()V
    .registers 2

    .line 2244
    const-string v0, "glPushMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2247
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2248
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2249
    return-void
.end method

.method public whitelist glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .registers 6

    .line 2759
    const-string v0, "glQueryMatrixxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2760
    const-string v0, "mantissa"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const-string v0, "exponent"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2763
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    .line 2764
    const/4 v1, 0x2

    const/16 v2, 0x10

    invoke-direct {p0, v2, v1, p1}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2765
    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2766
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2767
    return v0
.end method

.method public whitelist glQueryMatrixxOES([II[II)I
    .registers 8

    .line 2746
    const-string v0, "glQueryMatrixxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2747
    const-string v0, "mantissa"

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    const-string v0, "exponent"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2750
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    .line 2752
    const/4 v1, 0x2

    const/16 v2, 0x10

    invoke-direct {p0, v2, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2753
    const/4 p1, 0x0

    invoke-direct {p0, v2, p1, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2754
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2755
    return v0
.end method

.method public whitelist glReadPixels(IIIIIILjava/nio/Buffer;)V
    .registers 17

    .line 2253
    const-string v0, "glReadPixels"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2254
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2255
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2256
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2257
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2258
    const-string v0, "format"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2259
    const-string/jumbo v0, "type"

    move v7, p6

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2260
    const-string/jumbo v0, "pixels"

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2263
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 2264
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2265
    return-void
.end method

.method public whitelist glRenderbufferStorageOES(IIII)V
    .registers 6

    .line 3776
    const-string v0, "glRenderbufferStorageOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3777
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3778
    const-string v0, "internalformat"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3779
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3780
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3781
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3782
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    .line 3783
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3784
    return-void
.end method

.method public whitelist glRotatef(FFFF)V
    .registers 6

    .line 2268
    const-string v0, "glRotatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2269
    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2270
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2271
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2272
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2273
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2275
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2277
    return-void
.end method

.method public whitelist glRotatex(IIII)V
    .registers 6

    .line 2280
    const-string v0, "glRotatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2281
    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2282
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2283
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2284
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2285
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2287
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 2288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2289
    return-void
.end method

.method public whitelist glSampleCoverage(FZ)V
    .registers 4

    .line 2292
    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2293
    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2294
    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 2295
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2297
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 2298
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2299
    return-void
.end method

.method public whitelist glSampleCoveragex(IZ)V
    .registers 4

    .line 2302
    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2303
    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2304
    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 2305
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2307
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 2308
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2309
    return-void
.end method

.method public whitelist glScalef(FFF)V
    .registers 5

    .line 2312
    const-string v0, "glScalef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2313
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2314
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2315
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2316
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2318
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 2319
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2320
    return-void
.end method

.method public whitelist glScalex(III)V
    .registers 5

    .line 2323
    const-string v0, "glScalex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2324
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2325
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2326
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2327
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2329
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 2330
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2331
    return-void
.end method

.method public whitelist glScissor(IIII)V
    .registers 6

    .line 2334
    const-string v0, "glScissor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2335
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2336
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2337
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2338
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2339
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2341
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 2342
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2343
    return-void
.end method

.method public whitelist glShadeModel(I)V
    .registers 4

    .line 2346
    const-string v0, "glShadeModel"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2347
    const-string v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2350
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 2351
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2352
    return-void
.end method

.method public whitelist glStencilFunc(III)V
    .registers 5

    .line 2355
    const-string v0, "glStencilFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2356
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2357
    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2358
    const-string v0, "mask"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2359
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2361
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 2362
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2363
    return-void
.end method

.method public whitelist glStencilMask(I)V
    .registers 3

    .line 2366
    const-string v0, "glStencilMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2367
    const-string v0, "mask"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2368
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2370
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 2371
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2372
    return-void
.end method

.method public whitelist glStencilOp(III)V
    .registers 5

    .line 2375
    const-string v0, "glStencilOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2376
    const-string v0, "fail"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2377
    const-string/jumbo v0, "zfail"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2378
    const-string/jumbo v0, "zpass"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2379
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2381
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 2382
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2383
    return-void
.end method

.method public whitelist glTexCoordPointer(IIII)V
    .registers 6

    .line 3375
    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3376
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3377
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3378
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3379
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3380
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3381
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 3382
    return-void
.end method

.method public whitelist glTexCoordPointer(IIILjava/nio/Buffer;)V
    .registers 12

    .line 2386
    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2387
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 2388
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2389
    new-instance v1, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v1, v2, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 2391
    iget-object p1, v2, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 2392
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2393
    return-void
.end method

.method public whitelist glTexEnvf(IIF)V
    .registers 6

    .line 2396
    const-string v0, "glTexEnvf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2397
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2402
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2403
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2404
    return-void
.end method

.method public whitelist glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 2419
    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2420
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2423
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2425
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 2426
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2427
    return-void
.end method

.method public whitelist glTexEnvfv(II[FI)V
    .registers 7

    .line 2407
    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2408
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2411
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2412
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2414
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 2415
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2416
    return-void
.end method

.method public whitelist glTexEnvi(III)V
    .registers 5

    .line 3249
    const-string v0, "glTexEnvi"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3250
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3251
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3252
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3253
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3254
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    .line 3255
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3256
    return-void
.end method

.method public whitelist glTexEnviv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3270
    const-string v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3271
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3272
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3273
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3275
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 3276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3277
    return-void
.end method

.method public whitelist glTexEnviv(II[II)V
    .registers 7

    .line 3259
    const-string v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3260
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3261
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3262
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3264
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3265
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    .line 3266
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3267
    return-void
.end method

.method public whitelist glTexEnvx(III)V
    .registers 6

    .line 2430
    const-string v0, "glTexEnvx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2431
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2434
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2436
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 2437
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2438
    return-void
.end method

.method public whitelist glTexEnvxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 2453
    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2454
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2457
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2459
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 2460
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2461
    return-void
.end method

.method public whitelist glTexEnvxv(II[II)V
    .registers 7

    .line 2441
    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2442
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2445
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2446
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2448
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 2449
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2450
    return-void
.end method

.method public whitelist glTexGenf(IIF)V
    .registers 5

    .line 3788
    const-string v0, "glTexGenf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3789
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3790
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3791
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 3792
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3793
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenf(IIF)V

    .line 3794
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3795
    return-void
.end method

.method public whitelist glTexGenfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 3811
    const-string v0, "glTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3812
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3813
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3814
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3816
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 3817
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3818
    return-void
.end method

.method public whitelist glTexGenfv(II[FI)V
    .registers 7

    .line 3799
    const-string v0, "glTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3800
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3801
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3802
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3804
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3805
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(II[FI)V

    .line 3806
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3807
    return-void
.end method

.method public whitelist glTexGeni(III)V
    .registers 5

    .line 3822
    const-string v0, "glTexGeni"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3823
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3824
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3825
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3827
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    .line 3828
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3829
    return-void
.end method

.method public whitelist glTexGeniv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3845
    const-string v0, "glTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3846
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3847
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3848
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3849
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3850
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(IILjava/nio/IntBuffer;)V

    .line 3851
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3852
    return-void
.end method

.method public whitelist glTexGeniv(II[II)V
    .registers 7

    .line 3833
    const-string v0, "glTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3834
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3835
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3836
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3837
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3838
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3839
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(II[II)V

    .line 3840
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3841
    return-void
.end method

.method public whitelist glTexGenx(III)V
    .registers 5

    .line 3856
    const-string v0, "glTexGenx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3857
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3858
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3859
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3860
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3861
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenx(III)V

    .line 3862
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3863
    return-void
.end method

.method public whitelist glTexGenxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3879
    const-string v0, "glTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3880
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3881
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3882
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3884
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(IILjava/nio/IntBuffer;)V

    .line 3885
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3886
    return-void
.end method

.method public whitelist glTexGenxv(II[II)V
    .registers 7

    .line 3867
    const-string v0, "glTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3868
    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3869
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3870
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3871
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3872
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3873
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(II[II)V

    .line 3874
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3875
    return-void
.end method

.method public whitelist glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 21

    .line 2466
    const-string v0, "glTexImage2D"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2467
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2468
    const-string v0, "level"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2469
    const-string v0, "internalformat"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2470
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2471
    const-string v0, "height"

    move/from16 v6, p5

    invoke-direct {p0, v0, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2472
    const-string v0, "border"

    move/from16 v7, p6

    invoke-direct {p0, v0, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2473
    const-string v0, "format"

    move/from16 v8, p7

    invoke-direct {p0, v0, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2474
    const-string/jumbo v0, "type"

    move/from16 v9, p8

    invoke-direct {p0, v0, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2475
    const-string/jumbo v0, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2478
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 2480
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2481
    return-void
.end method

.method public whitelist glTexParameterf(IIF)V
    .registers 6

    .line 2484
    const-string v0, "glTexParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2485
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2490
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 2491
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2492
    return-void
.end method

.method public whitelist glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    .line 3292
    const-string v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3293
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3294
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3295
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3297
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 3298
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3299
    return-void
.end method

.method public whitelist glTexParameterfv(II[FI)V
    .registers 7

    .line 3281
    const-string v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3282
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3283
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3284
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3286
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3287
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 3288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3289
    return-void
.end method

.method public whitelist glTexParameteri(III)V
    .registers 5

    .line 3302
    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3303
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3304
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3305
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3306
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3307
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 3308
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3309
    return-void
.end method

.method public whitelist glTexParameteriv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 2517
    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2518
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2521
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2523
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 2524
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2525
    return-void
.end method

.method public whitelist glTexParameteriv(II[II)V
    .registers 7

    .line 2506
    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2507
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2510
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2512
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 2513
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2514
    return-void
.end method

.method public whitelist glTexParameterx(III)V
    .registers 6

    .line 2495
    const-string v0, "glTexParameterx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2496
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2499
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2501
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 2502
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2503
    return-void
.end method

.method public whitelist glTexParameterxv(IILjava/nio/IntBuffer;)V
    .registers 6

    .line 3324
    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3325
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3326
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3327
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3329
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 3330
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3331
    return-void
.end method

.method public whitelist glTexParameterxv(II[II)V
    .registers 7

    .line 3313
    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3314
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3315
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3316
    const-string/jumbo v0, "params"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3318
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3319
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    .line 3320
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3321
    return-void
.end method

.method public whitelist glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 21

    .line 2530
    const-string v0, "glTexSubImage2D"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2531
    const-string/jumbo v0, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    const-string v0, "level"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2533
    const-string/jumbo v0, "xoffset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2534
    const-string/jumbo v0, "yoffset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2535
    const-string/jumbo v0, "width"

    move/from16 v6, p5

    invoke-direct {p0, v0, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2536
    const-string v0, "height"

    move/from16 v7, p6

    invoke-direct {p0, v0, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2537
    const-string v0, "format"

    move/from16 v8, p7

    invoke-direct {p0, v0, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2538
    const-string/jumbo v0, "type"

    move/from16 v9, p8

    invoke-direct {p0, v0, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2539
    const-string/jumbo v0, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2541
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 2543
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2544
    return-void
.end method

.method public whitelist glTranslatef(FFF)V
    .registers 5

    .line 2547
    const-string v0, "glTranslatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2548
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2549
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2550
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2551
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2552
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 2553
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2554
    return-void
.end method

.method public whitelist glTranslatex(III)V
    .registers 5

    .line 2557
    const-string v0, "glTranslatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2558
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2559
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2560
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2561
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2562
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 2563
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2564
    return-void
.end method

.method public whitelist glVertexPointer(IIII)V
    .registers 6

    .line 3385
    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3386
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3387
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3388
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3389
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3390
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3391
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 3392
    return-void
.end method

.method public whitelist glVertexPointer(IIILjava/nio/Buffer;)V
    .registers 12

    .line 2567
    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2568
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 2569
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2570
    new-instance v1, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v1, v2, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 2571
    iget-object p1, v2, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 2572
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2573
    return-void
.end method

.method public whitelist glViewport(IIII)V
    .registers 6

    .line 2576
    const-string v0, "glViewport"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2577
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2578
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2579
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2580
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2581
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2582
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 2583
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2584
    return-void
.end method

.method public whitelist glWeightPointerOES(IIII)V
    .registers 6

    .line 3440
    const-string v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3441
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3442
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3443
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3444
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3445
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3446
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    .line 3447
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3448
    return-void
.end method

.method public whitelist glWeightPointerOES(IIILjava/nio/Buffer;)V
    .registers 6

    .line 3432
    const-string v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3433
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3434
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3435
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    .line 3436
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3437
    return-void
.end method
