.class public Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessUpdate"
.end annotation


# static fields
.field private static final blacklist STATE_COMPLETED:I = 0x3

.field private static final blacklist STATE_NOT_STARTED:I = 0x1

.field private static final blacklist STATE_RUNNING:I = 0x2

.field static final blacklist TYPE_FLOAT:I = 0x2

.field static final blacklist TYPE_INT:I = 0x1


# instance fields
.field private final blacklist mBrightness:F

.field private blacklist mConfirmedTypes:I

.field private blacklist mId:I

.field private final blacklist mSourceType:I

.field private blacklist mState:I

.field private blacklist mTimeUpdated:J

.field private blacklist mUpdatedTypes:I

.field final synthetic blacklist this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetsBrightnessUpdateCount()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfputsBrightnessUpdateCount(I)V

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mId:I

    .line 313
    iput p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    .line 314
    iput p3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    .line 315
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    .line 316
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    .line 317
    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    .line 318
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    .line 319
    return-void
.end method

.method private blacklist getBrightnessAsFloat()F
    .registers 3

    .line 433
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 434
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    return v0

    .line 436
    :cond_8
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    return v0
.end method

.method private blacklist getBrightnessAsInt()I
    .registers 3

    .line 425
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 426
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    float-to-int v0, v0

    return v0

    .line 428
    :cond_9
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    return v0
.end method

.method private blacklist toStringLabel(IF)Ljava/lang/String;
    .registers 4

    .line 440
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "(i)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    .line 441
    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "(f)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    .line 442
    :cond_2f
    const-string p1, ""

    .line 440
    :goto_31
    return-object p1
.end method


# virtual methods
.method blacklist isCompleted()Z
    .registers 3

    .line 416
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method blacklist isRunning()Z
    .registers 3

    .line 412
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method blacklist madeUpdates()Z
    .registers 2

    .line 420
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist swallowUpdate(IF)Z
    .registers 8

    .line 392
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_5b

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    goto :goto_5b

    .line 397
    :cond_c
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1c

    .line 398
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsFloat()F

    move-result v0

    invoke-static {v0, p2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 399
    :goto_1d
    if-ne p1, v2, :cond_28

    .line 400
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsInt()I

    move-result v3

    float-to-int v4, p2

    if-ne v3, v4, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v1

    .line 402
    :goto_29
    if-nez v0, :cond_2f

    if-eqz v3, :cond_2e

    goto :goto_2f

    .line 408
    :cond_2e
    return v1

    .line 403
    :cond_2f
    :goto_2f
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swallowing update of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " by update: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightnessSynchronizer"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v2

    .line 394
    :cond_5b
    :goto_5b
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    invoke-direct {p0, v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdatedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfirmedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist update()V
    .registers 10

    .line 332
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_c7

    .line 333
    iput v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    .line 336
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsInt()I

    move-result v0

    .line 337
    iget-object v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)I

    move-result v5

    if-eq v5, v0, :cond_30

    .line 338
    iget-object v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    const/4 v7, -0x2

    invoke-static {v5, v6, v0, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 341
    iget-object v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v5, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fputmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V

    .line 342
    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    .line 346
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsFloat()F

    move-result v5

    .line 347
    iget-object v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)F

    move-result v6

    invoke-static {v6, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v6

    if-nez v6, :cond_54

    .line 348
    iget-object v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 349
    iget-object v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v6, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fputmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;F)V

    .line 350
    iget v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    or-int/2addr v6, v3

    iput v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    .line 354
    :cond_54
    iget v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    if-eqz v6, :cond_bb

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] New Update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    iget v8, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    .line 363
    invoke-direct {p0, v7, v8}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set brightness values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    and-int/2addr v7, v3

    .line 364
    invoke-direct {p0, v7, v5}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    and-int/2addr v6, v4

    int-to-float v0, v0

    .line 365
    invoke-direct {p0, v6, v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v5, "BrightnessSynchronizer"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    move-result-object v5

    .line 368
    invoke-interface {v5}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 367
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 370
    :cond_bb
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    .line 373
    :cond_c7
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    if-ne v0, v3, :cond_e5

    .line 376
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    iget v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    if-eq v0, v3, :cond_e2

    iget-wide v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    add-long/2addr v3, v1

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_e5

    .line 378
    :cond_e2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    .line 381
    :cond_e5
    return-void
.end method
