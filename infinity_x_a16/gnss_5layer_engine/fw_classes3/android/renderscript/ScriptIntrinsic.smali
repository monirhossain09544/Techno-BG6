.class public abstract Landroid/renderscript/ScriptIntrinsic;
.super Landroid/renderscript/Script;
.source "ScriptIntrinsic.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 6

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 35
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_a

    .line 38
    return-void

    .line 36
    :cond_a
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptIntrinsic failed."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
