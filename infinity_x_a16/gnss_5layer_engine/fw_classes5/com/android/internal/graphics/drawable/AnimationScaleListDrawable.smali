.class public Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "AnimationScaleListDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AnimationScaleListDrawable"


# instance fields
.field private blacklist mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

.field private blacklist mMutated:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V

    .line 54
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;Landroid/content/res/Resources;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private blacklist inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    .line 97
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 100
    :cond_8
    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_6a

    .line 101
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_17

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6a

    .line 103
    :cond_17
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1b

    .line 104
    goto :goto_8

    .line 107
    :cond_1b
    if-gt v4, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 108
    goto :goto_8

    .line 112
    :cond_2a
    sget-object v3, Lcom/android/internal/R$styleable;->AnimationScaleListDrawableItem:[I

    invoke-static {p1, p4, p3, v3}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 114
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 115
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    if-nez v4, :cond_66

    .line 119
    :goto_3a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_42

    goto :goto_3a

    .line 121
    :cond_42
    if-ne v3, v5, :cond_49

    .line 127
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_66

    .line 122
    :cond_49
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_66
    :goto_66
    invoke-virtual {v0, v4}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->addDrawable(Landroid/graphics/drawable/Drawable;)I

    .line 131
    goto :goto_8

    .line 132
    :cond_6a
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 240
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    .line 243
    return-void
.end method

.method public blacklist clearMutated()V
    .registers 2

    .line 145
    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->clearMutated()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    .line 147
    return-void
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/android/internal/R$styleable;->AnimationScaleListDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->onStateChange([I)Z

    .line 88
    return-void
.end method

.method public whitelist isRunning()Z
    .registers 3

    .line 167
    nop

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_12

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_12

    .line 170
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    goto :goto_13

    .line 172
    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 136
    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    invoke-virtual {v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mutate()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mMutated:Z

    .line 140
    :cond_12
    return-object p0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result p1

    .line 71
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    invoke-virtual {v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->getCurrentDrawableIndexBasedOnScale()I

    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->selectDrawable(I)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method protected whitelist setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3

    .line 247
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 249
    instance-of v0, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    if-eqz v0, :cond_b

    .line 250
    check-cast p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    iput-object p1, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->mAnimationScaleListState:Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;

    .line 252
    :cond_b
    return-void
.end method

.method public whitelist start()V
    .registers 3

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_f

    .line 153
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 155
    :cond_f
    return-void
.end method

.method public whitelist stop()V
    .registers 3

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_f

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_f

    .line 161
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 163
    :cond_f
    return-void
.end method
