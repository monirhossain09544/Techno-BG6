.class public abstract Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;,
        Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final blacklist ALPHA:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final blacklist MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final blacklist MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final blacklist MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field public static final blacklist ROTATION:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist ROTATION_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist ROTATION_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCALE_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCALE_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCROLL_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist SCROLL_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final blacklist THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final blacklist TRANSLATION_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist TRANSLATION_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist TRANSLATION_Z:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final blacklist UNSET:F = 3.4028235E38f

.field public static final blacklist X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final blacklist Z:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private blacklist mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final blacklist mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastFrameTime:J

.field blacklist mMaxValue:F

.field blacklist mMinValue:F

.field private blacklist mMinVisibleChange:F

.field final blacklist mProperty:Landroid/util/FloatProperty;

.field blacklist mRunning:Z

.field blacklist mStartValueIsSet:Z

.field final blacklist mTarget:Ljava/lang/Object;

.field private final blacklist mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mValue:F

.field blacklist mVelocity:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 60
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 75
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 90
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$3;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 105
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 120
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 135
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 150
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 165
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 180
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$9;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 195
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$10;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 210
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$11;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->Z:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 225
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 241
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$13;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 256
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$14;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 299
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 315
    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 316
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 319
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 345
    new-instance v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;-><init>(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    .line 356
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 357
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/util/FloatProperty<",
            "TK;>;)V"
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 299
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 315
    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 316
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 319
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 367
    iput-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 368
    iput-object p2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    .line 369
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    sget-object p2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p1, p2, :cond_63

    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    sget-object p2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p1, p2, :cond_63

    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    sget-object p2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p1, p2, :cond_40

    goto :goto_63

    .line 372
    :cond_40
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    sget-object p2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p1, p2, :cond_4b

    .line 373
    const/high16 p1, 0x3b800000    # 0.00390625f

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_68

    .line 374
    :cond_4b
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    sget-object p2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq p1, p2, :cond_5d

    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    sget-object p2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne p1, p2, :cond_58

    goto :goto_5d

    .line 377
    :cond_58
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_68

    .line 375
    :cond_5d
    :goto_5d
    const p1, 0x3b03126f    # 0.002f

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_68

    .line 371
    :cond_63
    :goto_63
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 379
    :goto_68
    return-void
.end method

.method private blacklist endAnimationInternal(Z)V
    .registers 6

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 716
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 717
    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 718
    nop

    :goto_11
    iget-object v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 719
    iget-object v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 720
    iget-object v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    .line 718
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 723
    :cond_33
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 724
    return-void
.end method

.method private blacklist getPropertyValue()F
    .registers 3

    .line 752
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static blacklist removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 575
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 576
    if-ltz p1, :cond_a

    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_a
    return-void
.end method

.method private static blacklist removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 565
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 566
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 569
    :cond_14
    return-void
.end method

.method private blacklist startAnimationInternal()V
    .registers 4

    .line 649
    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_33

    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 651
    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_11

    .line 652
    invoke-direct {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 655
    :cond_11
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2b

    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2b

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_33

    .line 656
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public blacklist addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 461
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_d
    return-object p0
.end method

.method public blacklist addUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    .line 495
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 496
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_13
    return-object p0

    .line 492
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist cancel()V
    .registers 3

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 630
    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_e

    .line 631
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 633
    :cond_e
    return-void

    .line 627
    :cond_f
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist commitAnimationFrame(J)V
    .registers 3

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->doAnimationFrame(J)Z

    .line 698
    return-void
.end method

.method public blacklist doAnimationFrame(J)Z
    .registers 7

    .line 672
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 674
    iput-wide p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 675
    iget p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 676
    return v1

    .line 678
    :cond_11
    iget-wide v2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    sub-long v2, p1, v2

    .line 679
    iput-wide p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 680
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result p1

    .line 681
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_24

    const-wide/32 p1, 0x7fffffff

    goto :goto_27

    :cond_24
    long-to-float p2, v2

    div-float/2addr p2, p1

    float-to-long p1, p2

    .line 682
    :goto_27
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    .line 684
    iget p2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 685
    iget p2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 687
    iget p2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 689
    if-eqz p1, :cond_49

    .line 690
    invoke-direct {p0, v1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 692
    :cond_49
    return p1
.end method

.method abstract blacklist getAcceleration(FF)F
.end method

.method public blacklist getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    .line 762
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroid/animation/AnimationHandler;

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public blacklist getLastFrameTime()J
    .registers 3

    .line 766
    iget-wide v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    return-wide v0
.end method

.method public blacklist getMinimumVisibleChange()F
    .registers 2

    .line 556
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return v0
.end method

.method blacklist getValueThreshold()F
    .registers 3

    .line 744
    iget v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method abstract blacklist isAtEquilibrium(FF)Z
.end method

.method blacklist isCurrentThread()Z
    .registers 3

    .line 610
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isRunning()Z
    .registers 2

    .line 641
    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public blacklist removeEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    .line 472
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public blacklist removeUpdateListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method public blacklist setMaxValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 433
    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 434
    return-object p0
.end method

.method public blacklist setMinValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 447
    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 448
    return-object p0
.end method

.method public blacklist setMinimumVisibleChange(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    .line 544
    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 545
    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    .line 546
    return-object p0

    .line 542
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Minimum visible change must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist setPropertyValue(F)V
    .registers 5

    .line 731
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 732
    const/4 p1, 0x0

    :goto_8
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 733
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 734
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    .line 732
    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 737
    :cond_2a
    iget-object p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 738
    return-void
.end method

.method public blacklist setStartValue(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 390
    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 391
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 392
    return-object p0
.end method

.method public blacklist setStartVelocity(F)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 415
    iput p1, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 416
    return-object p0
.end method

.method abstract blacklist setValueThreshold(F)V
.end method

.method public blacklist start()V
    .registers 3

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 604
    iget-boolean v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_d

    .line 605
    invoke-direct {p0}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal()V

    .line 607
    :cond_d
    return-void

    .line 601
    :cond_e
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract blacklist updateValueAndVelocity(J)Z
.end method
