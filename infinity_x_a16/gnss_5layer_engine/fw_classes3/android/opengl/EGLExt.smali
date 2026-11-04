.class public Landroid/opengl/EGLExt;
.super Ljava/lang/Object;
.source "EGLExt.java"


# static fields
.field public static final whitelist EGL_CONTEXT_FLAGS_KHR:I = 0x30fc

.field public static final whitelist EGL_CONTEXT_MAJOR_VERSION_KHR:I = 0x3098

.field public static final whitelist EGL_CONTEXT_MINOR_VERSION_KHR:I = 0x30fb

.field public static final whitelist EGL_NO_NATIVE_FENCE_FD_ANDROID:I = -0x1

.field public static final whitelist EGL_OPENGL_ES3_BIT_KHR:I = 0x40

.field public static final whitelist EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final whitelist EGL_SYNC_NATIVE_FENCE_ANDROID:I = 0x3144

.field public static final whitelist EGL_SYNC_NATIVE_FENCE_FD_ANDROID:I = 0x3145

.field public static final whitelist EGL_SYNC_NATIVE_FENCE_SIGNALED_ANDROID:I = 0x3146


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 46
    invoke-static {}, Landroid/opengl/EGLExt;->_nativeClassInit()V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native greylist-max-o _nativeClassInit()V
.end method

.method public static whitelist eglDupNativeFenceFDANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)Landroid/hardware/SyncFence;
    .registers 3

    .line 68
    invoke-static {p0, p1}, Landroid/opengl/EGLExt;->eglDupNativeFenceFDANDROIDImpl(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)I

    move-result p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eglDupNativeFence returned "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EGL"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-ltz p0, :cond_27

    .line 71
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/SyncFence;->create(Landroid/os/ParcelFileDescriptor;)Landroid/hardware/SyncFence;

    move-result-object p0

    return-object p0

    .line 73
    :cond_27
    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object p0

    return-object p0
.end method

.method private static native blacklist eglDupNativeFenceFDANDROIDImpl(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)I
.end method

.method public static native whitelist eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z
.end method
