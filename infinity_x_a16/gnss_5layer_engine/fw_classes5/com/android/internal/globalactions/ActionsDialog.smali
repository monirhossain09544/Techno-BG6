.class public final Lcom/android/internal/globalactions/ActionsDialog;
.super Landroid/app/Dialog;
.source "ActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private final blacklist mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

.field private final blacklist mAlert:Lcom/android/internal/app/AlertController;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V
    .registers 4

    .line 35
    invoke-static {p1}, Lcom/android/internal/globalactions/ActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mContext:Landroid/content/Context;

    .line 37
    iget-object p1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 38
    iget-object p1, p2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast p1, Lcom/android/internal/globalactions/ActionsAdapter;

    iput-object p1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 39
    iget-object p1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, p1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 40
    return-void
.end method

.method private static blacklist getDialogTheme(Landroid/content/Context;)I
    .registers 4

    .line 43
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1010309

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 46
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 67
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2b

    .line 68
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 69
    iget-object v1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/globalactions/ActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/globalactions/Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_28

    .line 72
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 76
    :cond_2b
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public blacklist getListView()Landroid/widget/ListView;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p1}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 63
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    const/4 p1, 0x1

    return p1

    .line 84
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/internal/globalactions/ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    const/4 p1, 0x1

    return p1

    .line 92
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected whitelist onStart()V
    .registers 2

    .line 51
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 53
    return-void
.end method
