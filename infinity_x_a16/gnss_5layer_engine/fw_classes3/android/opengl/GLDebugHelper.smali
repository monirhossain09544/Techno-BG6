.class public Landroid/opengl/GLDebugHelper;
.super Ljava/lang/Object;
.source "GLDebugHelper.java"


# static fields
.field public static final whitelist CONFIG_CHECK_GL_ERROR:I = 0x1

.field public static final whitelist CONFIG_CHECK_THREAD:I = 0x2

.field public static final whitelist CONFIG_LOG_ARGUMENT_NAMES:I = 0x4

.field public static final whitelist ERROR_WRONG_THREAD:I = 0x7000


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;
    .registers 4

    .line 101
    if-eqz p2, :cond_8

    .line 102
    new-instance v0, Landroid/opengl/EGLLogWrapper;

    invoke-direct {v0, p0, p1, p2}, Landroid/opengl/EGLLogWrapper;-><init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V

    move-object p0, v0

    .line 104
    :cond_8
    return-object p0
.end method

.method public static whitelist wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;
    .registers 4

    .line 80
    if-eqz p1, :cond_8

    .line 81
    new-instance v0, Landroid/opengl/GLErrorWrapper;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLErrorWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;I)V

    move-object p0, v0

    .line 83
    :cond_8
    if-eqz p2, :cond_17

    .line 84
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 86
    :goto_11
    new-instance v0, Landroid/opengl/GLLogWrapper;

    invoke-direct {v0, p0, p2, p1}, Landroid/opengl/GLLogWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V

    move-object p0, v0

    .line 88
    :cond_17
    return-object p0
.end method
