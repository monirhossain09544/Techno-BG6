.class Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.super Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected greylist-max-o mAlphaSize:I

.field protected greylist-max-o mBlueSize:I

.field protected greylist-max-o mDepthSize:I

.field protected greylist-max-o mGreenSize:I

.field protected greylist-max-o mRedSize:I

.field protected greylist-max-o mStencilSize:I

.field private greylist-max-o mValue:[I


# direct methods
.method public constructor blacklist <init>(Landroid/opengl/GLSurfaceView;IIIIII)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 938
    const/16 v10, 0x3026

    const/16 v12, 0x3038

    const/16 v0, 0x3024

    const/16 v2, 0x3023

    const/16 v4, 0x3022

    const/16 v6, 0x3021

    const/16 v8, 0x3025

    move v1, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v11, p7

    filled-new-array/range {v0 .. v12}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;[I)V

    .line 946
    const/4 p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 947
    iput p2, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 948
    iput v3, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 949
    iput v5, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 950
    iput v7, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 951
    iput v9, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 952
    iput v11, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 953
    return-void
.end method

.method private greylist-max-o findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 7

    .line 984
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 985
    iget-object p1, p0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    .line 987
    :cond_e
    return p5
.end method


# virtual methods
.method public greylist-max-o chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 13

    .line 958
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4e

    aget-object v5, p3, v1

    .line 959
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    .line 961
    const/16 v6, 0x3026

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    .line 963
    iget v6, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt p1, v6, :cond_49

    iget p1, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt p2, p1, :cond_49

    .line 964
    const/16 v6, 0x3024

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p1

    .line 966
    const/16 v6, 0x3023

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p2

    .line 968
    const/16 v6, 0x3022

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 970
    const/16 v6, 0x3021

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 972
    iget v7, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    if-ne p1, v7, :cond_49

    iget p1, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    if-ne p2, p1, :cond_49

    iget p1, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    if-ne v8, p1, :cond_49

    iget p1, v2, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v6, p1, :cond_49

    .line 974
    return-object v5

    .line 958
    :cond_49
    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_2

    .line 978
    :cond_4e
    const/4 p1, 0x0

    return-object p1
.end method
