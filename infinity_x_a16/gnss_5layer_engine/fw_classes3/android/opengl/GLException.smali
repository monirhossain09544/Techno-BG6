.class public Landroid/opengl/GLException;
.super Ljava/lang/RuntimeException;
.source "GLException.java"


# instance fields
.field private final greylist-max-o mError:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3

    .line 26
    invoke-static {p1}, Landroid/opengl/GLException;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    iput p1, p0, Landroid/opengl/GLException;->mError:I

    .line 28
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Landroid/opengl/GLException;->mError:I

    .line 33
    return-void
.end method

.method private static greylist-max-o getErrorString(I)Ljava/lang/String;
    .registers 3

    .line 36
    invoke-static {p0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1d

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_1d
    return-object v0
.end method


# virtual methods
.method greylist-max-o getError()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/opengl/GLException;->mError:I

    return v0
.end method
