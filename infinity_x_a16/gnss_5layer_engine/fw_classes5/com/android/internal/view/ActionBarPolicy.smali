.class public Lcom/android/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private greylist mContext:Landroid/content/Context;


# direct methods
.method private constructor greylist <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static greylist get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .registers 2

    .line 38
    new-instance v0, Lcom/android/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public blacklist enableHomeButtonByDefault()Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist getEmbeddedMenuWidthLimit()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public greylist getMaxActionButtons()I
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 54
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 55
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 56
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 57
    const/16 v3, 0x258

    if-gt v0, v3, :cond_3c

    const/16 v0, 0x2d0

    const/16 v3, 0x3c0

    if-le v1, v3, :cond_1c

    if-gt v2, v0, :cond_3c

    :cond_1c
    if-le v1, v0, :cond_21

    if-le v2, v3, :cond_21

    goto :goto_3c

    .line 60
    :cond_21
    const/16 v0, 0x1f4

    if-ge v1, v0, :cond_3a

    const/16 v0, 0x1e0

    const/16 v3, 0x280

    if-le v1, v3, :cond_2d

    if-gt v2, v0, :cond_3a

    :cond_2d
    if-le v1, v0, :cond_32

    if-le v2, v3, :cond_32

    goto :goto_3a

    .line 63
    :cond_32
    const/16 v0, 0x168

    if-lt v1, v0, :cond_38

    .line 65
    const/4 v0, 0x3

    return v0

    .line 67
    :cond_38
    const/4 v0, 0x2

    return v0

    .line 62
    :cond_3a
    :goto_3a
    const/4 v0, 0x4

    return v0

    .line 59
    :cond_3c
    :goto_3c
    const/4 v0, 0x5

    return v0
.end method

.method public greylist getStackedTabMaxWidth()I
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public greylist getTabContainerHeight()I
    .registers 6

    .line 98
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const v3, 0x10102ce

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 104
    nop

    .line 105
    const v3, 0x105003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 107
    :cond_2a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return v1
.end method

.method public greylist hasEmbeddedTabs()Z
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 83
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    .line 84
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    .line 89
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 90
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 91
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 92
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3a

    const/16 v0, 0x1e0

    if-ge v1, v0, :cond_3a

    const/16 v3, 0x280

    if-lt v1, v3, :cond_38

    if-lt v2, v0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v0, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v0, 0x1

    :goto_3b
    return v0
.end method

.method public greylist showsOverflowMenuButton()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method
