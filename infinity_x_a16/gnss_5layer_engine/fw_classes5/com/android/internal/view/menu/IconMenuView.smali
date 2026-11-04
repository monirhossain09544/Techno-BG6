.class public final Lcom/android/internal/view/menu/IconMenuView;
.super Landroid/view/ViewGroup;
.source "IconMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/IconMenuView$SavedState;
    }
.end annotation


# static fields
.field private static final blacklist ITEM_CAPTION_CYCLE_DELAY:I = 0x3e8


# instance fields
.field private blacklist mAnimations:I

.field private blacklist mHasStaleChildren:Z

.field private blacklist mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private blacklist mHorizontalDividerHeight:I

.field private blacklist mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mItemBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mLastChildrenCaptionMode:Z

.field private blacklist mLayout:[I

.field private blacklist mLayoutNumRows:I

.field private greylist mMaxItems:I

.field private blacklist mMaxItemsPerRow:I

.field private blacklist mMaxRows:I

.field private greylist mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private blacklist mMenuBeingLongpressed:Z

.field private blacklist mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mNumActualItemsShown:I

.field private blacklist mRowHeight:I

.field private blacklist mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private blacklist mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVerticalDividerWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenu(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 134
    sget-object v1, Lcom/android/internal/R$styleable;->IconMenuView:[I

    .line 135
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 136
    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    .line 137
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    .line 138
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    .line 139
    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 140
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 144
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 146
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 148
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    .line 150
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    iget-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    const/4 p2, -0x1

    if-eqz p1, :cond_77

    .line 153
    iget-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 155
    iget p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    if-ne p1, p2, :cond_77

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 158
    :cond_77
    iget-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_89

    .line 159
    iget-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 161
    iget p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    if-ne p1, p2, :cond_89

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 164
    :cond_89
    iget p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setWillNotDraw(Z)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    .line 172
    const/high16 p1, 0x40000

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->setDescendantFocusability(I)V

    .line 173
    return-void
.end method

.method private blacklist calculateItemFittingMetadata(I)V
    .registers 9

    .line 662
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    .line 664
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_28

    .line 665
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 667
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 668
    move v4, v0

    :goto_17
    if-lez v4, :cond_25

    .line 671
    iget v5, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    div-int v6, p1, v4

    if-ge v5, v6, :cond_22

    .line 673
    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 674
    goto :goto_25

    .line 669
    :cond_22
    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    .line 664
    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 678
    :cond_28
    return-void
.end method

.method private blacklist doItemsFit()Z
    .registers 9

    .line 255
    nop

    .line 257
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 258
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 259
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    const/4 v5, 0x1

    if-ge v3, v1, :cond_2d

    .line 260
    aget v6, v0, v3

    .line 266
    if-ne v6, v5, :cond_12

    .line 267
    add-int/lit8 v4, v4, 0x1

    .line 268
    goto :goto_2a

    .line 271
    :cond_12
    move v5, v6

    :goto_13
    if-lez v5, :cond_2a

    .line 273
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 274
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 275
    iget v4, v4, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    if-ge v4, v6, :cond_26

    .line 276
    return v2

    .line 272
    :cond_26
    add-int/lit8 v5, v5, -0x1

    move v4, v7

    goto :goto_13

    .line 259
    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 281
    :cond_2d
    return v5
.end method

.method private blacklist layoutItems(I)V
    .registers 4

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result p1

    .line 186
    if-nez p1, :cond_a

    .line 187
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 188
    return-void

    .line 192
    :cond_a
    int-to-float v0, p1

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 199
    :goto_1b
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    if-gt v0, v1, :cond_2f

    .line 200
    invoke-direct {p0, v0, p1}, Lcom/android/internal/view/menu/IconMenuView;->layoutItemsUsingGravity(II)V

    .line 202
    if-lt v0, p1, :cond_25

    .line 204
    goto :goto_2f

    .line 207
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->doItemsFit()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 209
    goto :goto_2f

    .line 199
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 212
    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist layoutItemsUsingGravity(II)V
    .registers 7

    .line 224
    div-int v0, p2, p1

    .line 225
    rem-int/2addr p2, p1

    .line 232
    sub-int p2, p1, p2

    .line 234
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 235
    const/4 v2, 0x0

    :goto_8
    if-ge v2, p1, :cond_17

    .line 236
    aput v0, v1, v2

    .line 239
    if-lt v2, p2, :cond_14

    .line 240
    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 235
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 244
    :cond_17
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 245
    return-void
.end method

.method private blacklist positionChildren(II)V
    .registers 22

    .line 331
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 332
    :cond_d
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 335
    :cond_16
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 336
    add-int/lit8 v3, v2, -0x1

    .line 337
    iget-object v4, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 340
    nop

    .line 342
    nop

    .line 347
    nop

    .line 351
    iget v5, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    mul-int/2addr v5, v3

    sub-int v5, p2, v5

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 354
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2b
    if-ge v9, v2, :cond_cc

    .line 356
    nop

    .line 359
    iget v12, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    aget v13, v4, v9

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v12, v13

    sub-int v12, v1, v12

    int-to-float v12, v12

    aget v13, v4, v9

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 362
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3e
    aget v15, v4, v9

    if-ge v13, v15, :cond_99

    .line 364
    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 365
    float-to-int v15, v12

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v15, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    float-to-int v7, v5

    .line 366
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 365
    invoke-virtual {v8, v15, v6}, Landroid/view/View;->measure(II)V

    .line 369
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 370
    float-to-int v6, v14

    iput v6, v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    .line 371
    add-float/2addr v14, v12

    float-to-int v6, v14

    iput v6, v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 372
    float-to-int v7, v11

    iput v7, v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    .line 373
    add-float v15, v11, v5

    float-to-int v15, v15

    iput v15, v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    .line 376
    nop

    .line 377
    add-int/lit8 v10, v10, 0x1

    .line 380
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_88

    .line 381
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v4

    new-instance v4, Landroid/graphics/Rect;

    move/from16 v18, v5

    iget v5, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v14

    float-to-int v5, v5

    invoke-direct {v4, v6, v7, v5, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 380
    :cond_88
    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 389
    :goto_8c
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v2, v2

    add-float/2addr v14, v2

    .line 362
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    goto :goto_3e

    .line 393
    :cond_99
    move/from16 v16, v2

    move-object/from16 v17, v4

    move/from16 v18, v5

    if-eqz v8, :cond_a3

    .line 394
    iput v1, v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 397
    :cond_a3
    add-float v11, v11, v18

    .line 400
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c1

    if-ge v9, v3, :cond_c1

    .line 401
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v11

    iget v6, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v11

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v2, v2

    add-float/2addr v11, v2

    goto :goto_c2

    .line 400
    :cond_c1
    const/4 v7, 0x0

    .line 354
    :goto_c2
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_2b

    .line 407
    :cond_cc
    return-void
.end method

.method private blacklist setChildrenCaptionMode(Z)V
    .registers 4

    .line 648
    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_16

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    .line 650
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 653
    :cond_16
    return-void
.end method

.method private blacklist setCycleShortcutCaptionMode(Z)V
    .registers 2

    .line 597
    if-nez p1, :cond_c

    .line 602
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 603
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 604
    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    goto :goto_10

    .line 609
    :cond_c
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 612
    :goto_10
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 483
    instance-of p1, p1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    return p1
.end method

.method greylist createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
    .registers 5

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 299
    const v2, 0x109008d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    .line 302
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 303
    const v2, 0x10406a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 307
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/IconMenuView$1;-><init>(Lcom/android/internal/view/menu/IconMenuView;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-object v1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 542
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_33

    .line 543
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_20

    .line 544
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getLongPressTimeoutMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 546
    :cond_20
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 548
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_30

    .line 551
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 552
    return v1

    .line 556
    :cond_30
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 562
    :cond_33
    :goto_33
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .registers 4

    .line 477
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method blacklist getItemBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLayout()[I
    .registers 2

    .line 524
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    return-object v0
.end method

.method public blacklist getLayoutNumRows()I
    .registers 2

    .line 537
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return v0
.end method

.method blacklist getMaxItems()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    return v0
.end method

.method greylist getNumActualItemsShown()I
    .registers 2

    .line 503
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public blacklist getWindowAnimations()I
    .registers 2

    .line 511
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    return v0
.end method

.method public blacklist initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 321
    return-void
.end method

.method public blacklist invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4

    .line 472
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method blacklist markStaleChildren()V
    .registers 2

    .line 490
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-nez v0, :cond_a

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestLayout()V

    .line 494
    :cond_a
    return-void
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 1

    .line 567
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 569
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestFocus()Z

    .line 570
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 575
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 576
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 451
    if-eqz v0, :cond_1d

    .line 453
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_1d

    .line 455
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 460
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 461
    if-eqz v0, :cond_3a

    .line 463
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 464
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_29
    if-ltz v2, :cond_3a

    .line 465
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 466
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 464
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 469
    :cond_3a
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 7

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_21

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 439
    nop

    .line 440
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 443
    iget p4, p3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    iget p5, p3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    iget v0, p3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    iget p3, p3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    invoke-virtual {p2, p4, p5, v0, p3}, Landroid/view/View;->layout(IIII)V

    .line 437
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 446
    :cond_21
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 6

    .line 411
    const v0, 0x7fffffff

    invoke-static {v0, p1}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result p1

    .line 412
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->calculateItemFittingMetadata(I)V

    .line 413
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->layoutItems(I)V

    .line 417
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 418
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    sub-int/2addr v1, v2

    .line 422
    nop

    .line 423
    invoke-static {v1, p2}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result p2

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/IconMenuView;->setMeasuredDimension(II)V

    .line 426
    if-lez v0, :cond_2d

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/IconMenuView;->positionChildren(II)V

    .line 429
    :cond_2d
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 697
    check-cast p1, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    .line 698
    invoke-virtual {p1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 700
    iget v0, p1, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_12

    .line 701
    return-void

    .line 704
    :cond_12
    iget p1, p1, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 705
    if-eqz p1, :cond_1d

    .line 706
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 708
    :cond_1d
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 682
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 684
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 686
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_1f

    .line 687
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v1, :cond_1c

    .line 688
    new-instance v1, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1

    .line 686
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 692
    :cond_1f
    new-instance v1, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3

    .line 581
    if-nez p1, :cond_6

    .line 582
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 585
    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 586
    return-void
.end method

.method public whitelist test-api run()V
    .registers 3

    .line 622
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 625
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    goto :goto_11

    .line 630
    :cond_c
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 631
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 635
    :goto_11
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    return-void
.end method

.method blacklist setNumActualItemsShown(I)V
    .registers 2

    .line 507
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    .line 508
    return-void
.end method
