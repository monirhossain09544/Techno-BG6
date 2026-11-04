.class public Lcom/android/internal/policy/WearGestureInterceptionDetector;
.super Ljava/lang/Object;
.source "WearGestureInterceptionDetector.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WearGestureInterceptor"


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mDiscardIntercept:Z

.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private final blacklist mInstalledDecorView:Lcom/android/internal/policy/DecorView;

.field private blacklist mSwiping:Z

.field private final blacklist mSwipingStartThreshold:F

.field private final blacklist mTouchSlop:F


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/policy/DecorView;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    .line 55
    iput-object p2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    .line 56
    iget p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    .line 60
    return-void
.end method

.method private blacklist canScroll(Landroid/view/View;ZZFF)Z
    .registers 17

    .line 197
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_61

    .line 198
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 202
    sub-int/2addr v4, v1

    :goto_15
    if-ltz v4, :cond_61

    .line 203
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 205
    int-to-float v5, v2

    add-float/2addr v5, p4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-ltz v7, :cond_5e

    .line 206
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-gez v7, :cond_5e

    int-to-float v7, v3

    add-float v7, p5, v7

    .line 207
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_5e

    .line 208
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_45

    .line 210
    goto :goto_5e

    .line 214
    :cond_45
    nop

    .line 218
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v5, v8

    .line 219
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v10, v7, v5

    .line 214
    const/4 v7, 0x1

    move-object v5, p0

    move v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 220
    return v1

    .line 202
    :cond_5e
    :goto_5e
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    .line 225
    :cond_61
    if-eqz p2, :cond_6f

    if-eqz p3, :cond_67

    const/4 p2, -0x1

    goto :goto_68

    :cond_67
    move p2, v1

    :goto_68
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v1, 0x0

    :goto_70
    return v1
.end method

.method private blacklist getIndexForValidPointer(Landroid/view/MotionEvent;)I
    .registers 3

    .line 81
    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    .line 82
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    .line 88
    :cond_c
    return p1
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 65
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 66
    return v1

    .line 70
    :cond_e
    const v0, 0x10103f3

    filled-new-array {v0}, [I

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_25

    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 76
    :cond_25
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return v2
.end method

.method private blacklist resetMembers()V
    .registers 2

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    .line 134
    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    .line 137
    return-void
.end method

.method private blacklist updateDiscardIntercept(Landroid/view/MotionEvent;I)V
    .registers 11

    .line 110
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-nez v0, :cond_5

    .line 112
    return-void

    .line 114
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_a

    .line 115
    return-void

    .line 117
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_17

    move v5, v1

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    move v5, v0

    .line 118
    :goto_19
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 120
    iget-object v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 124
    iput-boolean v1, v2, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    .line 126
    :cond_2d
    return-void
.end method

.method private blacklist updateSwiping(Landroid/view/MotionEvent;)V
    .registers 6

    .line 92
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz v0, :cond_5

    .line 93
    return-void

    .line 95
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    sub-float/2addr v0, v1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    sub-float/2addr p1, v1

    .line 101
    mul-float v1, v0, v0

    mul-float v2, p1, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    iget v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_38

    .line 102
    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_35

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_35

    const/4 p1, 0x1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    iput-boolean p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    .line 107
    :cond_38
    return-void
.end method


# virtual methods
.method public blacklist isIntercepting()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5e

    :pswitch_8
    goto :goto_59

    .line 157
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    if-ne v2, v3, :cond_59

    .line 161
    if-nez v0, :cond_18

    const/4 v1, 0x1

    .line 162
    :cond_18
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    .line 163
    goto :goto_59

    .line 154
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    .line 155
    goto :goto_59

    .line 177
    :pswitch_2a
    goto :goto_59

    .line 166
    :pswitch_2b
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_30

    .line 167
    goto :goto_59

    .line 169
    :cond_30
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->getIndexForValidPointer(Landroid/view/MotionEvent;)I

    move-result v0

    .line 170
    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    .line 171
    goto :goto_59

    .line 173
    :cond_38
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateSwiping(Landroid/view/MotionEvent;)V

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateDiscardIntercept(Landroid/view/MotionEvent;I)V

    .line 175
    goto :goto_59

    .line 179
    :pswitch_3f
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    goto :goto_59

    .line 148
    :pswitch_43
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    .line 151
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    .line 152
    nop

    .line 182
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isIntercepting()Z

    move-result p1

    return p1

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3f
        :pswitch_2b
        :pswitch_2a
        :pswitch_8
        :pswitch_1f
        :pswitch_9
    .end packed-switch
.end method
