.class public Landroid/renderscript/ProgramVertex;
.super Landroid/renderscript/Program;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramVertex$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Program;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 56
    return-void
.end method


# virtual methods
.method public greylist-max-o getInput(I)Landroid/renderscript/Element;
    .registers 3

    .line 72
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 75
    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    aget-object p1, v0, p1

    return-object p1

    .line 73
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Slot ID out of range."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getInputCount()I
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/renderscript/ProgramVertex;->mInputs:[Landroid/renderscript/Element;

    array-length v0, v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
