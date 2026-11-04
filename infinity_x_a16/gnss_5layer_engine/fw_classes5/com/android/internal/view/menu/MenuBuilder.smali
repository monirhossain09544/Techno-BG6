.class public Lcom/android/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuBuilder$Callback;,
        Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final greylist-max-o EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final greylist-max-o PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final greylist-max-o sCategoryToOrder:[I


# instance fields
.field private greylist-max-o mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private final greylist mContext:Landroid/content/Context;

.field private greylist-max-o mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private greylist-max-o mDefaultShowAsAction:I

.field private greylist-max-o mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field private greylist-max-o mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mGroupDividerEnabled:Z

.field greylist-max-o mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mHeaderTitle:Ljava/lang/CharSequence;

.field greylist-max-o mHeaderView:Landroid/view/View;

.field private greylist-max-o mIsActionItemsStale:Z

.field private greylist-max-o mIsClosing:Z

.field private greylist-max-o mIsVisibleItemsStale:Z

.field private greylist-max-o mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mItemsChangedWhileDispatchPrevented:Z

.field private greylist-max-o mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mOptionalIconsVisible:Z

.field private greylist-max-o mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreventDispatchingItemsChanged:Z

.field private greylist-max-o mQwertyMode:Z

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private greylist-max-o mShortcutsVisible:Z

.field private greylist-max-o mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 4

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 147
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 156
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 167
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 200
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 202
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 205
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 209
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 212
    return-void
.end method

.method private greylist-max-o addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 12

    .line 423
    invoke-static {p3}, Lcom/android/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v4

    .line 425
    iget v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p1

    .line 428
    iget-object p2, v0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p2, :cond_18

    .line 430
    iget-object p2, v0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 433
    :cond_18
    iget-object p2, v0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object p3, v0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {p3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 434
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 436
    return-object p1
.end method

.method private greylist-max-o createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 15

    .line 442
    new-instance v0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/view/menu/MenuItemImpl;-><init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method private greylist-max-o dispatchPresenterUpdate(Z)V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 267
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 268
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 269
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 270
    if-nez v2, :cond_2c

    .line 271
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 273
    :cond_2c
    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    .line 275
    :goto_2f
    goto :goto_12

    .line 276
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 277
    return-void
.end method

.method private greylist-max-o dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 325
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 327
    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_44

    .line 329
    :cond_11
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 330
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 331
    if-nez v2, :cond_31

    .line 332
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    .line 334
    :cond_31
    invoke-interface {v2}, Lcom/android/internal/view/menu/MenuPresenter;->getId()I

    move-result v1

    .line 335
    if-lez v1, :cond_42

    .line 336
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 337
    if-eqz v1, :cond_42

    .line 338
    invoke-interface {v2, v1}, Lcom/android/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 342
    :cond_42
    :goto_42
    goto :goto_17

    .line 343
    :cond_43
    return-void

    .line 327
    :cond_44
    :goto_44
    return-void
.end method

.method private greylist-max-o dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 304
    :cond_9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 307
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuPresenter;

    .line 308
    if-nez v3, :cond_2e

    .line 309
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 311
    :cond_2e
    invoke-interface {v3}, Lcom/android/internal/view/menu/MenuPresenter;->getId()I

    move-result v2

    .line 312
    if-lez v2, :cond_3d

    .line 313
    invoke-interface {v3}, Lcom/android/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_3d

    .line 315
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    :cond_3d
    :goto_3d
    goto :goto_14

    .line 321
    :cond_3e
    const-string v1, "android:menu:presenters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 322
    return-void
.end method

.method private greylist-max-o dispatchSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Lcom/android/internal/view/menu/MenuPresenter;)Z
    .registers 6

    .line 281
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 283
    :cond_a
    nop

    .line 286
    if-eqz p2, :cond_11

    .line 287
    invoke-interface {p2, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v1

    .line 290
    :cond_11
    iget-object p2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 291
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 292
    if-nez v2, :cond_31

    .line 293
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_38

    .line 294
    :cond_31
    if-nez v1, :cond_38

    .line 295
    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v0

    move v1, v0

    .line 297
    :cond_38
    :goto_38
    goto :goto_17

    .line 298
    :cond_39
    return v1
.end method

.method private static greylist-max-o findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 801
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 802
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 803
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v1

    if-gt v1, p1, :cond_17

    .line 804
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 801
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 808
    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-o getOrdering(I)I
    .registers 3

    .line 734
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 736
    if-ltz v0, :cond_18

    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 740
    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 737
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o removeItemAtInt(IZ)V
    .registers 4

    .line 551
    if-ltz p1, :cond_17

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_17

    .line 553
    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    if-eqz p2, :cond_16

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 556
    :cond_16
    return-void

    .line 551
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .line 1165
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1167
    const/4 v1, 0x0

    if-eqz p5, :cond_e

    .line 1168
    iput-object p5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1171
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1172
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2e

    .line 1174
    :cond_e
    if-lez p1, :cond_17

    .line 1175
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1b

    .line 1176
    :cond_17
    if-eqz p2, :cond_1b

    .line 1177
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1180
    :cond_1b
    :goto_1b
    if-lez p3, :cond_28

    .line 1181
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2c

    .line 1182
    :cond_28
    if-eqz p4, :cond_2c

    .line 1183
    iput-object p4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1187
    :cond_2c
    :goto_2c
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1191
    :goto_2e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1192
    return-void
.end method

.method private greylist-max-o setShortcutsVisibleInner(Z)V
    .registers 3

    .line 766
    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 767
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    iget-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 768
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->shouldShowMenuShortcutsWhenKeyboardPresent()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 769
    return-void
.end method


# virtual methods
.method public whitelist add(I)Landroid/view/MenuItem;
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 459
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    .line 455
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 493
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 494
    nop

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    .line 496
    if-eqz p4, :cond_13

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_14

    :cond_13
    move v2, v1

    .line 498
    :goto_14
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1b

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 502
    :cond_1b
    nop

    :goto_1c
    if-ge v1, v2, :cond_66

    .line 503
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 504
    new-instance v3, Landroid/content/Intent;

    .line 505
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2c

    move-object v4, p6

    goto :goto_30

    :cond_2c
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_30
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 506
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 510
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 511
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    .line 512
    if-eqz p8, :cond_63

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_63

    .line 513
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    .line 502
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 517
    :cond_66
    return v2
.end method

.method public greylist-max-r addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public greylist addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {p1, p2, p0}, Lcom/android/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 245
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 246
    return-void
.end method

.method public whitelist addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 479
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 471
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 472
    new-instance p2, Lcom/android/internal/view/menu/SubMenuBuilder;

    iget-object p3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 473
    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 475
    return-object p2
.end method

.method public whitelist addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o changeMenuMode()V
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_9

    .line 796
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 798
    :cond_9
    return-void
.end method

.method public whitelist clear()V
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_9

    .line 574
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 576
    :cond_9
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 579
    return-void
.end method

.method public greylist-max-o clearAll()V
    .registers 3

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 566
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 567
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 568
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 570
    return-void
.end method

.method public whitelist clearHeader()V
    .registers 2

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1157
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1158
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1161
    return-void
.end method

.method public whitelist close()V
    .registers 2

    .line 991
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 992
    return-void
.end method

.method public final greylist-max-o close(Z)V
    .registers 5

    .line 975
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_5

    return-void

    .line 977
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 978
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 979
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 980
    if-nez v2, :cond_28

    .line 981
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 983
    :cond_28
    invoke-interface {v2, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 985
    :goto_2b
    goto :goto_e

    .line 986
    :cond_2c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    .line 987
    return-void
.end method

.method public greylist collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1327
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_e

    goto :goto_43

    .line 1329
    :cond_e
    nop

    .line 1331
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1332
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1333
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuPresenter;

    .line 1334
    if-nez v3, :cond_32

    .line 1335
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1336
    :cond_32
    invoke-interface {v3, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1337
    goto :goto_3a

    .line 1339
    :cond_39
    :goto_39
    goto :goto_18

    .line 1340
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1342
    if-eqz v1, :cond_42

    .line 1343
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1345
    :cond_42
    return v1

    .line 1327
    :cond_43
    :goto_43
    return v1
.end method

.method greylist-max-o dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4

    .line 788
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1304
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1306
    :cond_a
    nop

    .line 1308
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1309
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1310
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuPresenter;

    .line 1311
    if-nez v3, :cond_2e

    .line 1312
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1313
    :cond_2e
    invoke-interface {v3, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1314
    goto :goto_36

    .line 1316
    :cond_35
    :goto_35
    goto :goto_14

    .line 1317
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1319
    if-eqz v1, :cond_3d

    .line 1320
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1322
    :cond_3d
    return v1
.end method

.method public greylist-max-o findGroupIndex(I)I
    .registers 3

    .line 682
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public greylist-max-o findGroupIndex(II)I
    .registers 5

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 688
    if-gez p2, :cond_7

    .line 689
    const/4 p2, 0x0

    .line 692
    :cond_7
    nop

    :goto_8
    if-ge p2, v0, :cond_1c

    .line 693
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 695
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_19

    .line 696
    return p2

    .line 692
    :cond_19
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 700
    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method public whitelist findItem(I)Landroid/view/MenuItem;
    .registers 6

    .line 651
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 652
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    .line 653
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 654
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 655
    return-object v2

    .line 656
    :cond_16
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 657
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 659
    if-eqz v2, :cond_27

    .line 660
    return-object v2

    .line 652
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 665
    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o findItemIndex(I)I
    .registers 5

    .line 669
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 671
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 672
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 673
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_16

    .line 674
    return v1

    .line 671
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 678
    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method greylist-max-o findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 14

    .line 881
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 882
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 883
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 885
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 886
    return-object v2

    .line 889
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 890
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 892
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 895
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 896
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_2b

    .line 897
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object p1

    .line 900
    :cond_2b
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    .line 903
    move v6, v5

    :goto_30
    if-ge v6, p2, :cond_66

    .line 904
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 905
    if-eqz v4, :cond_3f

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_43

    .line 906
    :cond_3f
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v8

    .line 907
    :goto_43
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-ne v8, v9, :cond_4d

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_62

    :cond_4d
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_58

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_62

    :cond_58
    if-eqz v4, :cond_63

    const/16 v9, 0x8

    if-ne v8, v9, :cond_63

    const/16 v8, 0x43

    if-ne p1, v8, :cond_63

    .line 913
    :cond_62
    return-object v7

    .line 903
    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 916
    :cond_66
    return-object v2
.end method

.method greylist-max-o findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    .line 835
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    .line 836
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 838
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    .line 840
    const/16 v4, 0x43

    if-nez v3, :cond_18

    if-eq p2, v4, :cond_18

    .line 841
    return-void

    .line 845
    :cond_18
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 846
    const/4 v5, 0x0

    move v6, v5

    :goto_20
    if-ge v6, v3, :cond_7f

    .line 847
    iget-object v7, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 848
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 849
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 852
    :cond_39
    if-eqz v0, :cond_40

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_44

    :cond_40
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v8

    .line 854
    :goto_44
    if-eqz v0, :cond_4b

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_4f

    :cond_4b
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericModifiers()I

    move-result v9

    .line 855
    :goto_4f
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_59

    const/4 v9, 0x1

    goto :goto_5a

    :cond_59
    move v9, v5

    .line 857
    :goto_5a
    if-eqz v9, :cond_7c

    if-eqz v8, :cond_7c

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-eq v8, v9, :cond_73

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_73

    if-eqz v0, :cond_7c

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7c

    if-ne p2, v4, :cond_7c

    .line 862
    :cond_73
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 863
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 866
    :cond_7f
    return-void
.end method

.method public greylist-max-o flagActionItems()V
    .registers 7

    .line 1105
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1107
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v1, :cond_9

    .line 1108
    return-void

    .line 1112
    :cond_9
    nop

    .line 1113
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1114
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuPresenter;

    .line 1115
    if-nez v5, :cond_2c

    .line 1116
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1118
    :cond_2c
    invoke-interface {v5}, Lcom/android/internal/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v4

    or-int/2addr v3, v4

    .line 1120
    :goto_31
    goto :goto_12

    .line 1122
    :cond_32
    if-eqz v3, :cond_60

    .line 1123
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1124
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1126
    move v3, v2

    :goto_43
    if-ge v3, v1, :cond_5f

    .line 1127
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1128
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1129
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 1131
    :cond_57
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 1134
    :cond_5f
    goto :goto_73

    .line 1137
    :cond_60
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1138
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1141
    :goto_73
    iput-boolean v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1142
    return-void
.end method

.method public greylist-max-o getActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1145
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1146
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected greylist-max-o getActionViewStatesKey()Ljava/lang/String;
    .registers 2

    .line 411
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public greylist getContext()Landroid/content/Context;
    .registers 2

    .line 784
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-o getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 1349
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public greylist getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1261
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public greylist getHeaderTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1256
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getHeaderView()Landroid/view/View;
    .registers 2

    .line 1265
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getItem(I)Landroid/view/MenuItem;
    .registers 3

    .line 709
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public greylist-max-r getNonActionItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1151
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 1152
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method greylist-max-o getOptionalIconsVisible()Z
    .registers 2

    .line 1300
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method greylist-max-o getResources()Landroid/content/res/Resources;
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public greylist getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    .line 1274
    return-object p0
.end method

.method public greylist getVisibleItems()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1060
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0

    .line 1063
    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1065
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1067
    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_2c

    .line 1068
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1069
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1072
    :cond_2c
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1075
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist hasVisibleItems()Z
    .registers 5

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 640
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 641
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 642
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 643
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 647
    :cond_1b
    return v1
.end method

.method public greylist-max-o isGroupDividerEnabled()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    return v0
.end method

.method greylist-max-o isQwertyMode()Z
    .registers 2

    .line 747
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 713
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public greylist-max-o isShortcutsVisible()Z
    .registers 2

    .line 775
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method greylist-max-o onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1053
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1054
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1055
    return-void
.end method

.method greylist-max-o onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 1043
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1044
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1045
    return-void
.end method

.method public greylist-max-o onItemsChanged(Z)V
    .registers 4

    .line 1002
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 1003
    if-eqz p1, :cond_b

    .line 1004
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1005
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1008
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    goto :goto_11

    .line 1010
    :cond_f
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1012
    :goto_11
    return-void
.end method

.method public whitelist performIdentifierAction(II)Z
    .registers 3

    .line 921
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4

    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuPresenter;I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o performItemAction(Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuPresenter;I)Z
    .registers 9

    .line 929
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 931
    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6a

    .line 935
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v2

    .line 937
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object p1

    .line 938
    const/4 v3, 0x1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1f

    move v1, v3

    .line 939
    :cond_1f
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 940
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr v2, p1

    .line 941
    if-eqz v2, :cond_69

    .line 942
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_69

    .line 944
    :cond_30
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-nez v4, :cond_41

    if-eqz v1, :cond_39

    goto :goto_41

    .line 958
    :cond_39
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_69

    .line 959
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_69

    .line 945
    :cond_41
    :goto_41
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_53

    .line 946
    new-instance p3, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p3, v4, p0, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 949
    :cond_53
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p3

    check-cast p3, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 950
    if-eqz v1, :cond_5e

    .line 951
    invoke-virtual {p1, p3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 953
    :cond_5e
    invoke-direct {p0, p3, p2}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Lcom/android/internal/view/menu/MenuPresenter;)Z

    move-result p1

    or-int/2addr v2, p1

    .line 954
    if-nez v2, :cond_68

    .line 955
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 957
    :cond_68
    nop

    .line 963
    :cond_69
    :goto_69
    return v2

    .line 932
    :cond_6a
    :goto_6a
    return v1
.end method

.method public whitelist performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 812
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object p1

    .line 814
    nop

    .line 816
    if-eqz p1, :cond_c

    .line 817
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_d

    .line 816
    :cond_c
    const/4 p1, 0x0

    .line 820
    :goto_d
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_15

    .line 821
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 824
    :cond_15
    return p1
.end method

.method public whitelist removeGroup(I)V
    .registers 7

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 527
    if-ltz v0, :cond_2a

    .line 528
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 529
    const/4 v2, 0x0

    move v3, v2

    .line 530
    :goto_f
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_26

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 532
    invoke-direct {p0, v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v4

    goto :goto_f

    .line 536
    :cond_26
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 538
    :cond_2a
    return-void
.end method

.method public whitelist removeItem(I)V
    .registers 3

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 522
    return-void
.end method

.method public greylist-max-o removeItemAt(I)V
    .registers 3

    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 560
    return-void
.end method

.method public greylist-max-r removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 257
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    .line 258
    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_21

    .line 259
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    :cond_21
    goto :goto_6

    .line 262
    :cond_22
    return-void
.end method

.method public greylist-max-o restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 381
    if-nez p1, :cond_3

    .line 382
    return-void

    .line 385
    :cond_3
    nop

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 389
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_39

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 391
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 392
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_27

    .line 393
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 395
    :cond_27
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 396
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 397
    invoke-virtual {v3, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 389
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 401
    :cond_39
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 402
    if-lez p1, :cond_4a

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 404
    if-eqz p1, :cond_4a

    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 408
    :cond_4a
    return-void
.end method

.method public greylist-max-o restorePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 350
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 351
    return-void
.end method

.method public greylist-max-o saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 354
    nop

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 357
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_45

    .line 358
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 359
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 360
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_33

    .line 361
    if-nez v1, :cond_21

    .line 362
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 364
    :cond_21
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 365
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 366
    const-string v4, "android:menu:expandedactionview"

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    :cond_33
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 370
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 371
    invoke-virtual {v3, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 357
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 375
    :cond_45
    if-eqz v1, :cond_4e

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 378
    :cond_4e
    return-void
.end method

.method public greylist-max-o savePresenterStates(Landroid/os/Bundle;)V
    .registers 2

    .line 346
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    return-void
.end method

.method public greylist setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 417
    return-void
.end method

.method public greylist setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    .line 1286
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1287
    return-void
.end method

.method public greylist-max-r setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2

    .line 216
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 217
    return-object p0
.end method

.method greylist-max-o setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 8

    .line 582
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 584
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 585
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_35

    .line 586
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 587
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_32

    .line 588
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_32

    .line 589
    :cond_23
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_32

    .line 592
    :cond_2a
    if-ne v4, p1, :cond_2e

    const/4 v5, 0x1

    goto :goto_2f

    :cond_2e
    move v5, v2

    :goto_2f
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 585
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 595
    :cond_35
    return-void
.end method

.method public whitelist setGroupCheckable(IZZ)V
    .registers 8

    .line 598
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 601
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 602
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 603
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 604
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 600
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 607
    :cond_20
    return-void
.end method

.method public whitelist setGroupDividerEnabled(Z)V
    .registers 2

    .line 484
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 485
    return-void
.end method

.method public whitelist setGroupEnabled(IZ)V
    .registers 7

    .line 627
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 629
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 630
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 631
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 632
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 629
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 635
    :cond_1d
    return-void
.end method

.method public whitelist setGroupVisible(IZ)V
    .registers 9

    .line 610
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 615
    nop

    .line 616
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    const/4 v3, 0x1

    if-ge v1, v0, :cond_24

    .line 617
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 618
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_21

    .line 619
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_21

    move v2, v3

    .line 616
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 623
    :cond_24
    if-eqz v2, :cond_29

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 624
    :cond_29
    return-void
.end method

.method protected greylist-max-o setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1238
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1239
    return-object v0
.end method

.method protected greylist-max-o setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1226
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1227
    return-object v0
.end method

.method protected greylist-max-o setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1214
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1215
    return-object v0
.end method

.method protected greylist-max-o setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1202
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1203
    return-object v0
.end method

.method protected greylist-max-o setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 8

    .line 1250
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1251
    return-object v0
.end method

.method public greylist setOptionalIconsVisible(Z)V
    .registers 2

    .line 1296
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1297
    return-void
.end method

.method public whitelist setQwertyMode(Z)V
    .registers 2

    .line 717
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 719
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 720
    return-void
.end method

.method public greylist-max-o setShortcutsVisible(Z)V
    .registers 3

    .line 759
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 761
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 762
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 763
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 704
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-r startDispatchingItemsChanged()V
    .registers 3

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1031
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_d

    .line 1032
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1033
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1035
    :cond_d
    return-void
.end method

.method public greylist-max-r stopDispatchingItemsChanged()V
    .registers 2

    .line 1021
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_a

    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1025
    :cond_a
    return-void
.end method
