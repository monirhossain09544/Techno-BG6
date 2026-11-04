.class public Lcom/android/internal/view/menu/ContextMenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "ContextMenuBuilder.java"

# interfaces
.implements Landroid/view/ContextMenu;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist setHeaderIcon(I)Landroid/view/ContextMenu;
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public whitelist setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public whitelist setHeaderTitle(I)Landroid/view/ContextMenu;
    .registers 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public whitelist setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public whitelist setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu;

    return-object p1
.end method

.method public blacklist showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .registers 4

    .line 80
    if-eqz p1, :cond_5

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 86
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1f

    .line 87
    const p1, 0xc351

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 89
    new-instance p1, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {p1, p0}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 90
    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 92
    return-object p1

    .line 95
    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;
    .registers 12

    .line 99
    if-eqz p2, :cond_5

    .line 102
    invoke-virtual {p2, p0}, Landroid/view/View;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 105
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 106
    const v0, 0xc351

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 111
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper;

    const/4 v5, 0x0

    const v6, 0x1010501

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 117
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->show(II)V

    .line 118
    return-object v1

    .line 121
    :cond_34
    const/4 p1, 0x0

    return-object p1
.end method
