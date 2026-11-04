.class public final Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "RoundedCornerProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 36
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getChangingConfigurations()I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 40
    new-instance v0, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->onLevelChange(I)Z

    .line 46
    return-void
.end method

.method public whitelist onLayoutDirectionChanged(I)Z
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->onLevelChange(I)Z

    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onLayoutDirectionChanged(I)Z

    move-result p1

    return p1
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 8

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    if-nez v0, :cond_8

    .line 57
    const/4 v0, 0x0

    goto :goto_c

    .line 59
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 61
    :goto_c
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x2710

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 64
    if-eqz p1, :cond_43

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    add-int/2addr v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    :cond_43
    invoke-super {p0, v2}, Landroid/graphics/drawable/InsetDrawable;->onLevelChange(I)Z

    move-result p1

    return p1
.end method
