.class public Landroid/opengl/EGLSync;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLSync.java"


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 31
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 32
    :cond_4
    instance-of v1, p1, Landroid/opengl/EGLSync;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 34
    :cond_a
    check-cast p1, Landroid/opengl/EGLSync;

    .line 35
    invoke-virtual {p0}, Landroid/opengl/EGLSync;->getNativeHandle()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/opengl/EGLSync;->getNativeHandle()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0
.end method
