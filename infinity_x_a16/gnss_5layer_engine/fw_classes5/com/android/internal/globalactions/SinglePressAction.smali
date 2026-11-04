.class public abstract Lcom/android/internal/globalactions/SinglePressAction;
.super Ljava/lang/Object;
.source "SinglePressAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# instance fields
.field private final blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mIconResId:I

.field private final blacklist mMessage:Ljava/lang/CharSequence;

.field private final blacklist mMessageResId:I


# direct methods
.method protected constructor blacklist <init>(II)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    .line 37
    iput p2, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    .line 38
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 39
    iput-object p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    return-void
.end method

.method protected constructor blacklist <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    .line 44
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    .line 45
    iput-object p3, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 46
    iput-object p2, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 8

    .line 73
    const p2, 0x1090088

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 75
    const p3, 0x1020006

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 76
    const p4, 0x102000b

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 78
    const v0, 0x1020560

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/globalactions/SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 80
    if-eqz v0, :cond_38

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 84
    :cond_33
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_38
    :goto_38
    if-eqz p3, :cond_56

    .line 88
    iget-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_49

    .line 89
    iget-object p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_56

    .line 91
    :cond_49
    iget v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    if-eqz v0, :cond_56

    .line 92
    iget v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_56
    :goto_56
    if-eqz p4, :cond_67

    .line 96
    iget-object p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz p1, :cond_62

    .line 97
    iget-object p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 99
    :cond_62
    iget p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :cond_67
    :goto_67
    return-object p2
.end method

.method public blacklist getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 64
    iget-object p1, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object p1

    .line 66
    :cond_7
    iget v0, p0, Lcom/android/internal/globalactions/SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getStatus()Ljava/lang/String;
    .registers 2

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public abstract blacklist onPress()V
.end method
