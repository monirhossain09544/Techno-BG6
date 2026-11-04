.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public greylist-max-o size:I

.field public greylist-max-o value:J


# direct methods
.method public constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .registers 5

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    instance-of v0, p2, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_13

    .line 306
    check-cast p2, Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 309
    const/4 p1, -0x1

    iput p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_70

    .line 310
    :cond_13
    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x4

    if-eqz p1, :cond_2a

    .line 311
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_23

    const-wide/16 p1, 0x1

    goto :goto_25

    :cond_23
    const-wide/16 p1, 0x0

    :goto_25
    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 312
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_70

    .line 313
    :cond_2a
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_39

    .line 314
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 315
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_70

    .line 316
    :cond_39
    instance-of p1, p2, Ljava/lang/Long;

    const/16 v1, 0x8

    if-eqz p1, :cond_4a

    .line 317
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 318
    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_70

    .line 319
    :cond_4a
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_5e

    .line 320
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 321
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_70

    .line 322
    :cond_5e
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_70

    .line 323
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 324
    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 326
    :cond_70
    :goto_70
    return-void
.end method
