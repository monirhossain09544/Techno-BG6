.class public abstract Lcom/android/internal/globalactions/ToggleAction;
.super Ljava/lang/Object;
.source "ToggleAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/globalactions/ToggleAction$State;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ToggleAction"


# instance fields
.field protected blacklist mDisabledIconResid:I

.field protected blacklist mDisabledStatusMessageResId:I

.field protected blacklist mEnabledIconResId:I

.field protected blacklist mEnabledStatusMessageResId:I

.field protected blacklist mMessageResId:I

.field protected blacklist mState:Lcom/android/internal/globalactions/ToggleAction$State;


# direct methods
.method public constructor blacklist <init>(IIIII)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 72
    iput p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    .line 73
    iput p2, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    .line 74
    iput p3, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    .line 75
    iput p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    .line 76
    iput p5, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    .line 77
    return-void
.end method


# virtual methods
.method protected blacklist changeStateFromPress(Z)V
    .registers 2

    .line 147
    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_7
    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 148
    return-void
.end method

.method public blacklist create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 9

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->willCreate()V

    .line 94
    const p2, 0x1090088

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    const p3, 0x1020006

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 97
    const p4, 0x102000b

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 98
    const v1, 0x1020560

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->isEnabled()Z

    move-result v2

    .line 101
    if-eqz p4, :cond_34

    .line 102
    iget v3, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    :cond_34
    iget-object p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v3, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq p4, v3, :cond_43

    iget-object p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v3, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    if-ne p4, v3, :cond_41

    goto :goto_43

    :cond_41
    move p4, v0

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p4, 0x1

    .line 107
    :goto_44
    if-eqz p3, :cond_58

    .line 108
    nop

    .line 109
    if-eqz p4, :cond_4c

    iget v3, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    goto :goto_4e

    :cond_4c
    iget v3, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    .line 108
    :goto_4e
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 113
    :cond_58
    if-eqz v1, :cond_6a

    .line 114
    if-eqz p4, :cond_5f

    iget p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    goto :goto_61

    :cond_5f
    iget p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    :goto_61
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    :cond_6a
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    return-object p2
.end method

.method public blacklist getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    .line 86
    iget v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final blacklist onPress()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 126
    const-string v0, "ToggleAction"

    const-string v1, "shouldn\'t be able to toggle when in transition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_10
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 131
    :goto_19
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->onToggle(Z)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->changeStateFromPress(Z)V

    .line 133
    return-void
.end method

.method public abstract blacklist onToggle(Z)V
.end method

.method public blacklist updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 154
    return-void
.end method

.method blacklist willCreate()V
    .registers 1

    .line 82
    return-void
.end method
