.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$RumblePack;,
        Lcom/android/internal/app/PlatLogoActivity$Starfield;
    }
.end annotation


# static fields
.field private static final blacklist EGG_UNLOCK_SETTING:Ljava/lang/String; = "egg_mode_v"

.field private static final blacklist FINISH_AFTER_NEXT_STAGE_LAUNCH:Z = false

.field private static final blacklist LAUNCH_TIME:J = 0x1388L

.field private static final blacklist MAX_WARP:F = 16.0f

.field private static final blacklist MIN_WARP:F = 1.0f

.field private static final blacklist TAG:Ljava/lang/String; = "PlatLogoActivity"

.field static final blacklist TOUCH_STATS:Ljava/lang/String; = "touch.stats"


# instance fields
.field private blacklist mAnim:Landroid/animation/TimeAnimator;

.field private blacklist mAnimationsEnabled:Z

.field private blacklist mDp:F

.field private final blacklist mLaunchNextStage:Ljava/lang/Runnable;

.field private blacklist mLayout:Landroid/widget/FrameLayout;

.field private blacklist mLogo:Landroid/widget/ImageView;

.field blacklist mPressureMax:D

.field blacklist mPressureMin:D

.field private blacklist mRandom:Ljava/util/Random;

.field private blacklist mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

.field private blacklist mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

.field private final blacklist mTimeListener:Landroid/animation/TimeAnimator$TimeListener;

.field private final blacklist mTouchListener:Landroid/view/View$OnTouchListener;

.field private blacklist mWarpAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method public static synthetic blacklist $r8$lambda$wbKTaG16WQKpYZ4PXk5h-5rIBZo(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimationsEnabled(Lcom/android/internal/app/PlatLogoActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDp(Lcom/android/internal/app/PlatLogoActivity;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mDp:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLayout(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogo(Lcom/android/internal/app/PlatLogoActivity;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRandom(Lcom/android/internal/app/PlatLogoActivity;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRumble(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$RumblePack;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStarfield(Lcom/android/internal/app/PlatLogoActivity;)Lcom/android/internal/app/PlatLogoActivity$Starfield;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmeasureTouchPressure(Lcom/android/internal/app/PlatLogoActivity;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->measureTouchPressure(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartWarp(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->startWarp()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopWarp(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z

    .line 97
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 115
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLaunchNextStage:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mTimeListener:Landroid/animation/TimeAnimator$TimeListener;

    .line 348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->launchNextStage(Z)V

    .line 118
    return-void
.end method

.method private blacklist launchNextStage(Z)V
    .registers 7

    .line 319
    const-string v0, "PlatLogoActivity"

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 321
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->shouldWriteSettings()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving egg locked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    .line 324
    const-string v2, "egg_mode_v"

    .line 326
    if-eqz p1, :cond_2c

    const-wide/16 v3, 0x0

    goto :goto_30

    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 324
    :goto_30
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_33} :catch_34

    .line 330
    :cond_33
    goto :goto_3a

    .line 328
    :catch_34
    move-exception p1

    .line 329
    const-string v1, "Can\'t write settings"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    :goto_3a
    :try_start_3a
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    const v1, 0x10008000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.internal.category.PLATLOGO"

    .line 336
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_67} :catch_68

    .line 341
    goto :goto_70

    .line 339
    :catch_68
    move-exception p1

    .line 340
    const-string p1, "com.android.internal.app.PlatLogoActivity"

    const-string v0, "No more eggs."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_70
    return-void
.end method

.method private blacklist measureTouchPressure(Landroid/view/MotionEvent;)V
    .registers 7

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    packed-switch p1, :pswitch_data_2c

    :pswitch_b
    goto :goto_2b

    .line 359
    :pswitch_c
    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_15

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    .line 360
    :cond_15
    iget-wide v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2b

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    goto :goto_2b

    .line 354
    :pswitch_1e
    iget-wide v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2b

    .line 355
    float-to-double v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    iput-wide v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    .line 363
    :cond_2b
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private blacklist shouldWriteSettings()Z
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist startAnimating()V
    .registers 3

    .line 252
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    .line 253
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mTimeListener:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 255
    return-void
.end method

.method private blacklist startWarp()V
    .registers 5

    .line 283
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_28

    const-string v2, "warp"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 285
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLaunchNextStage:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    return-void

    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method private blacklist stopAnimating()V
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnim:Landroid/animation/TimeAnimator;

    .line 260
    return-void
.end method

.method private blacklist stopWarp()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_11

    .line 293
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mWarpAnim:Landroid/animation/ObjectAnimator;

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->setWarp(F)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLaunchNextStage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method private blacklist syncTouchPressure()V
    .registers 10

    .line 367
    const-string v0, "touch.stats"

    const-string v1, "max"

    const-string v2, "min"

    .line 368
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 367
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    new-instance v4, Lorg/json/JSONObject;

    .line 370
    if-eqz v3, :cond_13

    goto :goto_15

    :cond_13
    const-string v3, "{}"

    :goto_15
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 372
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    .line 374
    :cond_2a
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 375
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    .line 377
    :cond_3c
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_5f

    .line 378
    iget-wide v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMin:D

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 379
    iget-wide v2, p0, Lcom/android/internal/app/PlatLogoActivity;->mPressureMax:D

    invoke-virtual {v4, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 380
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->shouldWriteSettings()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 382
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5f} :catch_60

    .line 387
    :cond_5f
    goto :goto_68

    .line 385
    :catch_60
    move-exception v0

    .line 386
    const-string v1, "com.android.internal.app.PlatLogoActivity"

    const-string v2, "Can\'t write touch settings"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    :goto_68
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/Window;->setColorMode(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 213
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 216
    :cond_3d
    const/4 p1, 0x1

    :try_start_3e
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "animator_duration_scale"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    move v0, p1

    :cond_4e
    iput-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z
    :try_end_50
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3e .. :try_end_50} :catch_51

    .line 220
    goto :goto_54

    .line 218
    :catch_51
    move-exception v0

    .line 219
    iput-boolean p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mAnimationsEnabled:Z

    .line 222
    :goto_54
    new-instance p1, Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    invoke-direct {p1, p0}, Lcom/android/internal/app/PlatLogoActivity$RumblePack;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    .line 224
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 225
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mDp:F

    .line 227
    new-instance p1, Lcom/android/internal/app/PlatLogoActivity$Starfield;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mDp:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-direct {p1, v0, v1}, Lcom/android/internal/app/PlatLogoActivity$Starfield;-><init>(Ljava/util/Random;F)V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    .line 228
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    .line 229
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity;->mRandom:Ljava/util/Random;

    .line 230
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    .line 228
    invoke-virtual {p1, v0, v3}, Lcom/android/internal/app/PlatLogoActivity$Starfield;->setVelocity(FF)V

    .line 231
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mStarfield:Lcom/android/internal/app/PlatLogoActivity$Starfield;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 234
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 235
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 236
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 237
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 238
    const/16 p1, 0x11

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    .line 241
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    const v1, 0x1080778

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 244
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    const-string p1, "PlatLogoActivity"

    const-string v0, "Hello"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mRumble:Lcom/android/internal/app/PlatLogoActivity$RumblePack;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$RumblePack;->destroy()V

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 264
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_f

    .line 265
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_d

    .line 266
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->startWarp()V

    .line 268
    :cond_d
    const/4 p1, 0x1

    return p1

    .line 270
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 275
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_9

    .line 276
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 277
    const/4 p1, 0x1

    return p1

    .line 279
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public whitelist onPause()V
    .registers 1

    .line 309
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopWarp()V

    .line 310
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->stopAnimating()V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 312
    return-void
.end method

.method public whitelist onResume()V
    .registers 1

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->startAnimating()V

    .line 305
    return-void
.end method

.method public whitelist onStart()V
    .registers 1

    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 393
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    .line 394
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 398
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity;->syncTouchPressure()V

    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 400
    return-void
.end method
