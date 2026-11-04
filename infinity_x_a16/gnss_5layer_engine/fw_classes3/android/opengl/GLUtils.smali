.class public final Landroid/opengl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static whitelist getEGLErrorString(I)Ljava/lang/String;
    .registers 3

    .line 228
    packed-switch p0, :pswitch_data_48

    .line 260
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

    .line 258
    :pswitch_1b
    const-string p0, "EGL_CONTEXT_LOST"

    return-object p0

    .line 256
    :pswitch_1e
    const-string p0, "EGL_BAD_SURFACE"

    return-object p0

    .line 254
    :pswitch_21
    const-string p0, "EGL_BAD_PARAMETER"

    return-object p0

    .line 252
    :pswitch_24
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    return-object p0

    .line 250
    :pswitch_27
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    return-object p0

    .line 248
    :pswitch_2a
    const-string p0, "EGL_BAD_MATCH"

    return-object p0

    .line 246
    :pswitch_2d
    const-string p0, "EGL_BAD_DISPLAY"

    return-object p0

    .line 244
    :pswitch_30
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    return-object p0

    .line 242
    :pswitch_33
    const-string p0, "EGL_BAD_CONTEXT"

    return-object p0

    .line 240
    :pswitch_36
    const-string p0, "EGL_BAD_CONFIG"

    return-object p0

    .line 238
    :pswitch_39
    const-string p0, "EGL_BAD_ATTRIBUTE"

    return-object p0

    .line 236
    :pswitch_3c
    const-string p0, "EGL_BAD_ALLOC"

    return-object p0

    .line 234
    :pswitch_3f
    const-string p0, "EGL_BAD_ACCESS"

    return-object p0

    .line 232
    :pswitch_42
    const-string p0, "EGL_NOT_INITIALIZED"

    return-object p0

    .line 230
    :pswitch_45
    const-string p0, "EGL_SUCCESS"

    return-object p0

    :pswitch_data_48
    .packed-switch 0x3000
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static whitelist getInternalFormat(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 41
    if-eqz p0, :cond_1f

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 47
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 48
    if-ltz p0, :cond_f

    .line 51
    return p0

    .line 49
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown internalformat"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmap is recycled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "getInternalFormat can\'t be used with a null Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getType(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 63
    if-eqz p0, :cond_1f

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 69
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getType(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 70
    if-ltz p0, :cond_f

    .line 73
    return p0

    .line 71
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmap is recycled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "getType can\'t be used with a null Bitmap"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native greylist-max-o native_getInternalFormat(Landroid/graphics/Bitmap;)I
.end method

.method private static native greylist-max-o native_getType(Landroid/graphics/Bitmap;)I
.end method

.method private static native greylist-max-o native_texImage2D(IIILandroid/graphics/Bitmap;II)I
.end method

.method private static native greylist-max-o native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I
.end method

.method public static whitelist texImage2D(IIILandroid/graphics/Bitmap;I)V
    .registers 12

    .line 100
    if-eqz p3, :cond_25

    .line 103
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 106
    const/4 v5, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result p0

    if-nez p0, :cond_15

    .line 109
    return-void

    .line 107
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid Bitmap format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap is recycled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist texImage2D(IIILandroid/graphics/Bitmap;II)V
    .registers 7

    .line 126
    if-eqz p3, :cond_1f

    .line 129
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 132
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result p0

    if-nez p0, :cond_f

    .line 135
    return-void

    .line 133
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid Bitmap format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap is recycled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist texImage2D(IILandroid/graphics/Bitmap;I)V
    .registers 11

    .line 148
    if-eqz p2, :cond_25

    .line 151
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 154
    const/4 v3, -0x1

    const/4 v5, -0x1

    move v1, p0

    move v2, p1

    move-object v4, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result p0

    if-nez p0, :cond_15

    .line 157
    return-void

    .line 155
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid Bitmap format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap is recycled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist texSubImage2D(IIIILandroid/graphics/Bitmap;)V
    .registers 13

    .line 183
    if-eqz p4, :cond_29

    .line 186
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_21

    .line 189
    invoke-static {p4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 190
    const/4 v6, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result p0

    if-nez p0, :cond_19

    .line 193
    return-void

    .line 191
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid Bitmap format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap is recycled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    .registers 8

    .line 208
    if-eqz p4, :cond_1f

    .line 211
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 214
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result p0

    if-nez p0, :cond_f

    .line 217
    return-void

    .line 215
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid Bitmap format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap is recycled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
