.class final Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RoundedCornerProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoundedCornerState"
.end annotation


# instance fields
.field private final blacklist mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist getChangingConfigurations()I
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable$RoundedCornerState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 87
    new-instance p2, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;

    check-cast p1, Landroid/graphics/drawable/DrawableWrapper;

    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/internal/graphics/drawable/RoundedCornerProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
