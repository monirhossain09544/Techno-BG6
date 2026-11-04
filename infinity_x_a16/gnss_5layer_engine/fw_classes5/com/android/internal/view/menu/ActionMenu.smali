.class public Lcom/android/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsQwerty:Z

.field private blacklist mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private blacklist findItemIndex(I)I
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_19

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 136
    return v2

    .line 134
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 140
    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 13

    .line 166
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 167
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 169
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result p2

    .line 170
    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_3f

    .line 171
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 172
    if-eqz v0, :cond_1d

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_21

    .line 173
    :cond_1d
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    move-result v6

    .line 175
    :goto_21
    if-eqz v0, :cond_28

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticModifiers()I

    move-result v7

    goto :goto_2c

    :cond_28
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericModifiers()I

    move-result v7

    .line 176
    :goto_2c
    const v8, 0x1100f

    and-int v9, p2, v8

    and-int/2addr v7, v8

    if-ne v9, v7, :cond_36

    const/4 v7, 0x1

    goto :goto_37

    :cond_36
    move v7, v3

    .line 178
    :goto_37
    if-ne p1, v6, :cond_3c

    if-eqz v7, :cond_3c

    .line 179
    return-object v5

    .line 170
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 182
    :cond_3f
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public whitelist add(I)Landroid/view/MenuItem;
    .registers 3

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 12

    .line 67
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 70
    return-object v0
.end method

.method public whitelist add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 76
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    nop

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    .line 79
    if-eqz p4, :cond_13

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_14

    :cond_13
    move v2, v1

    .line 81
    :goto_14
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1b

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->removeGroup(I)V

    .line 85
    :cond_1b
    nop

    :goto_1c
    if-ge v1, v2, :cond_66

    .line 86
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 87
    new-instance v3, Landroid/content/Intent;

    .line 88
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2c

    move-object v4, p6

    goto :goto_30

    :cond_2c
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_30
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 89
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 93
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 94
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    .line 95
    if-eqz p8, :cond_63

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_63

    .line 96
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    .line 85
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 100
    :cond_66
    return v2
.end method

.method public whitelist addSubMenu(I)Landroid/view/SubMenu;
    .registers 2

    .line 110
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 5

    .line 121
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 116
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 2

    .line 105
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist clear()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    return-void
.end method

.method public whitelist close()V
    .registers 1

    .line 129
    return-void
.end method

.method public whitelist findItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public whitelist hasVisibleItems()Z
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 155
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_1b

    .line 156
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 157
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 161
    :cond_1b
    return v2
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public whitelist performIdentifierAction(II)Z
    .registers 3

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result p1

    .line 191
    if-gez p1, :cond_8

    .line 192
    const/4 p1, 0x0

    return p1

    .line 195
    :cond_8
    iget-object p2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result p1

    return p1
.end method

.method public whitelist performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object p1

    .line 200
    if-nez p1, :cond_8

    .line 201
    const/4 p1, 0x0

    return p1

    .line 204
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result p1

    return p1
.end method

.method public whitelist removeGroup(I)V
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 210
    const/4 v2, 0x0

    .line 211
    :goto_7
    if-ge v2, v1, :cond_1e

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1b

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 216
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 219
    :cond_1e
    return-void
.end method

.method public whitelist removeItem(I)V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public whitelist setGroupCheckable(IZZ)V
    .registers 9

    .line 227
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1e

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 232
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1b

    .line 233
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 234
    invoke-virtual {v3, p3}, Lcom/android/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;

    .line 230
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 237
    :cond_1e
    return-void
.end method

.method public whitelist setGroupEnabled(IZ)V
    .registers 8

    .line 240
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 243
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 245
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    .line 246
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 243
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 249
    :cond_1b
    return-void
.end method

.method public whitelist setGroupVisible(IZ)V
    .registers 8

    .line 252
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 257
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    .line 258
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 261
    :cond_1b
    return-void
.end method

.method public whitelist setQwertyMode(Z)V
    .registers 2

    .line 264
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 265
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
