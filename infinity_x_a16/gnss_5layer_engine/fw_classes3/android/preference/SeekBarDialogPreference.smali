.class public Landroid/preference/SeekBarDialogPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarDialogPreference.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 60
    const v0, 0x11200ec

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-virtual {p0}, Landroid/preference/SeekBarDialogPreference;->createActionButtons()V

    .line 49
    invoke-virtual {p0}, Landroid/preference/SeekBarDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/preference/SeekBarDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method protected static greylist-max-o getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .registers 2

    .line 86
    const v0, 0x102050b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method public greylist-max-o createActionButtons()V
    .registers 2

    .line 69
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarDialogPreference;->setPositiveButtonText(I)V

    .line 70
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarDialogPreference;->setNegativeButtonText(I)V

    .line 71
    return-void
.end method

.method protected whitelist onBindDialogView(Landroid/view/View;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 79
    iget-object v0, p0, Landroid/preference/SeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    .line 81
    :cond_16
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :goto_1b
    return-void
.end method
