.class public Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
.super Landroid/widget/ImageView;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedRectImageView"
.end annotation


# instance fields
.field private blacklist mExtraImageCount:Ljava/lang/String;

.field private blacklist mOverlayPaint:Landroid/graphics/Paint;

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mRadius:I

.field private blacklist mRoundRectPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 4062
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4054
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4055
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4056
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4057
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4058
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4059
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4063
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 4066
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4067
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 4070
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4071
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 4075
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4054
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4055
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4056
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4057
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4058
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4059
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4076
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10500d9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4078
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x67000000

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4079
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4081
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x10601fb

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4082
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4083
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 4084
    const p4, 0x10500e1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    .line 4083
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4086
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4087
    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 4088
    const p3, 0x10500e2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 4087
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4089
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4090
    return-void
.end method

.method private blacklist updatePath(II)V
    .registers 11

    .line 4093
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4095
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 4096
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 4097
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    int-to-float v4, p2

    iget p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v5, p1

    iget p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v6, p1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4099
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 4130
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    if-eqz v2, :cond_9

    .line 4131
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4134
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4136
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v7

    .line 4137
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v8

    .line 4138
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 4139
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v3

    sub-int v10, v2, v3

    .line 4140
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    if-eqz v2, :cond_67

    .line 4141
    int-to-float v2, v7

    int-to-float v3, v8

    int-to-float v4, v9

    int-to-float v5, v10

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 4144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4145
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 4147
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    int-to-float v2, v2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4150
    :cond_67
    int-to-float v2, v7

    int-to-float v3, v8

    int-to-float v4, v9

    int-to-float v5, v10

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v7, v7

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 4151
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5

    .line 4124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 4125
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4126
    return-void
.end method

.method public blacklist setExtraImageCount(I)V
    .registers 4

    .line 4115
    if-lez p1, :cond_18

    .line 4116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    goto :goto_1b

    .line 4118
    :cond_18
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4120
    :goto_1b
    return-void
.end method

.method public blacklist setRadius(I)V
    .registers 3

    .line 4107
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4108
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4109
    return-void
.end method
