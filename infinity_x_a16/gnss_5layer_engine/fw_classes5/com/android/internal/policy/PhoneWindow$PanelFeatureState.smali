.class final Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field blacklist background:I

.field blacklist createdPanelView:Landroid/view/View;

.field blacklist decorView:Lcom/android/internal/policy/DecorView;

.field blacklist featureId:I

.field blacklist frozenActionViewState:Landroid/os/Bundle;

.field blacklist frozenMenuState:Landroid/os/Bundle;

.field blacklist fullBackground:I

.field blacklist gravity:I

.field blacklist iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

.field blacklist isCompact:Z

.field blacklist isHandled:Z

.field blacklist isInExpandedMode:Z

.field blacklist isOpen:Z

.field blacklist isPrepared:Z

.field blacklist listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field blacklist listPresenterTheme:I

.field blacklist menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public blacklist qwertyMode:Z

.field blacklist refreshDecorView:Z

.field blacklist refreshMenuContent:Z

.field blacklist shownPanelView:Landroid/view/View;

.field blacklist wasLastExpanded:Z

.field blacklist wasLastOpen:Z

.field blacklist windowAnimations:I

.field blacklist x:I

.field blacklist y:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 3643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3644
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    .line 3646
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 3647
    return-void
.end method


# virtual methods
.method blacklist applyFrozenState()V
    .registers 3

    .line 3779
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 3780
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 3781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 3783
    :cond_12
    return-void
.end method

.method public blacklist clearMenuPresenters()V
    .registers 3

    .line 3668
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    .line 3669
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3670
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3672
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3673
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3674
    return-void
.end method

.method blacklist getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .registers 4

    .line 3731
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 3733
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-nez v0, :cond_25

    .line 3734
    new-instance v0, Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3735
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3736
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    const p2, 0x1020365

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setId(I)V

    .line 3737
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3740
    :cond_25
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p1

    .line 3742
    return-object p1
.end method

.method blacklist getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .registers 5

    .line 3707
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 3709
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v0, :cond_d

    .line 3710
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    .line 3713
    :cond_d
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-nez p1, :cond_31

    .line 3714
    new-instance p1, Lcom/android/internal/view/menu/ListMenuPresenter;

    const v0, 0x10900a9

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-direct {p1, v0, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3716
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3717
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    const p2, 0x10203c2

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setId(I)V

    .line 3718
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3721
    :cond_31
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz p1, :cond_40

    .line 3722
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3723
    invoke-virtual {p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getNumActualItemsShown()I

    move-result p2

    .line 3722
    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setItemIndexOffset(I)V

    .line 3725
    :cond_40
    iget-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object p2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p1

    .line 3727
    return-object p1
.end method

.method public blacklist hasPanelItems()Z
    .registers 4

    .line 3654
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3655
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    .line 3657
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v0, :cond_15

    goto :goto_21

    .line 3660
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_20

    move v1, v2

    :cond_20
    return v1

    .line 3658
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2e

    move v1, v2

    :cond_2e
    return v1
.end method

.method public blacklist isInListMode()Z
    .registers 2

    .line 3650
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 3760
    check-cast p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    .line 3761
    iget v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    .line 3762
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    .line 3763
    iget-boolean v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    .line 3764
    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 3773
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 3774
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 3775
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 3776
    return-void
.end method

.method blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 3746
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>(Lcom/android/internal/policy/PhoneWindow-IA;)V

    .line 3747
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 3748
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 3749
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 3751
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_24

    .line 3752
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 3753
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 3756
    :cond_24
    return-object v0
.end method

.method blacklist setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 3693
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    return-void

    .line 3695
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_17

    .line 3696
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3697
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3699
    :cond_17
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3700
    if-eqz p1, :cond_2d

    .line 3701
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3702
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3704
    :cond_2d
    return-void
.end method

.method blacklist setStyle(Landroid/content/Context;)V
    .registers 4

    .line 3677
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3678
    const/16 v0, 0x2e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .line 3680
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 3682
    const/16 v0, 0x5d

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 3684
    const/16 v0, 0x148

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    .line 3686
    const/16 v0, 0x149

    const v1, 0x1030435

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    .line 3689
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3690
    return-void
.end method
