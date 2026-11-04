.class public Lcom/android/internal/display/BrightnessSynchronizer;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/display/BrightnessSynchronizer$Clock;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;,
        Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;
    }
.end annotation


# static fields
.field private static final blacklist BRIGHTNESS_URI:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EPSILON:F = 1.0E-4f

.field private static final blacklist MSG_RUN_UPDATE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BrightnessSynchronizer"

.field private static final blacklist WAIT_FOR_RESPONSE_MILLIS:J = 0xc8L

.field private static blacklist sBrightnessUpdateCount:I


# instance fields
.field private final blacklist mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

.field private final blacklist mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

.field private blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLatestFloatBrightness:F

.field private blacklist mLatestIntBrightness:I

.field private blacklist mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetScreenBrightnessFloat(Lcom/android/internal/display/BrightnessSynchronizer;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetScreenBrightnessInt(Lcom/android/internal/display/BrightnessSynchronizer;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBrightnessChangeFloat(Lcom/android/internal/display/BrightnessSynchronizer;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChangeFloat(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBrightnessChangeInt(Lcom/android/internal/display/BrightnessSynchronizer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChangeInt(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunUpdate(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBrightnessUpdateCount()I
    .registers 1

    sget v0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBrightnessUpdateCount(I)V
    .registers 1

    sput p0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    nop

    .line 52
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/display/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/display/BrightnessSynchronizer;->sBrightnessUpdateCount:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4

    .line 75
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/display/BrightnessSynchronizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/display/BrightnessSynchronizer$Clock;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    .line 82
    new-instance p1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer-IA;)V

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    .line 83
    new-instance p1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public static blacklist brightnessFloatToInt(F)I
    .registers 1

    .line 156
    invoke-static {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntRange(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static blacklist brightnessFloatToIntRange(F)F
    .registers 4

    .line 166
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 167
    return v2

    .line 168
    :cond_a
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 169
    return v0

    .line 175
    :cond_11
    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2, v1, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method

.method public static blacklist brightnessIntToFloat(I)F
    .registers 4

    .line 139
    if-nez p0, :cond_5

    .line 140
    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 141
    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    .line 142
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 148
    :cond_b
    const/high16 v0, 0x437f0000    # 255.0f

    int-to-float p0, p0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v2, v0, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method

.method public static blacklist floatEquals(FF)Z
    .registers 4

    .line 278
    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 279
    return v1

    .line 280
    :cond_6
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 281
    return v1

    .line 282
    :cond_13
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_20

    .line 283
    return v1

    .line 285
    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getScreenBrightnessFloat()F
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v0

    return v0
.end method

.method private blacklist getScreenBrightnessInt()I
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "screen_brightness"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private blacklist handleBrightnessChange(IF)V
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 207
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->swallowUpdate(IF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 208
    :goto_f
    nop

    .line 209
    if-nez v0, :cond_1c

    .line 210
    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 211
    new-instance v2, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_1d

    .line 209
    :cond_1c
    const/4 v1, 0x0

    .line 213
    :goto_1d
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->runUpdate()V

    .line 216
    if-nez v0, :cond_4a

    iget-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz p1, :cond_4a

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "New PendingUpdate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", prev="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BrightnessSynchronizer"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_4a
    return-void
.end method

.method private blacklist handleBrightnessChangeFloat(F)V
    .registers 3

    .line 185
    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    .line 186
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    .line 187
    return-void
.end method

.method private blacklist handleBrightnessChangeInt(I)V
    .registers 3

    .line 195
    iput p1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    .line 196
    const/4 v0, 0x1

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->handleBrightnessChange(IF)V

    .line 197
    return-void
.end method

.method private blacklist runUpdate()V
    .registers 4

    .line 232
    nop

    :cond_1
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 233
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->update()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 235
    goto :goto_52

    .line 236
    :cond_14
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 237
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->madeUpdates()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed Update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessSynchronizer"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_3e
    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 244
    :cond_40
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-eqz v0, :cond_4e

    .line 245
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 246
    iput-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 248
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    if-nez v0, :cond_1

    .line 249
    :goto_52
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 127
    const-string v0, "BrightnessSynchronizer:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v0, "-----------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLatestIntBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLatestFloatBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mCurrentUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public blacklist startSynchronizing()V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_10

    .line 95
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 97
    :cond_10
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-virtual {v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->isObserving()Z

    move-result v0

    const-string v1, "BrightnessSynchronizer"

    if-eqz v0, :cond_20

    .line 98
    const-string v0, "Brightness sync observer requesting synchronization a second time."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 101
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessFloat()F

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    .line 102
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer;->getScreenBrightnessInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial brightness readings: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(int), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(float)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_6a

    .line 107
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestFloatBrightness:F

    invoke-direct {v0, p0, v3, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_a4

    .line 109
    :cond_6a
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_7a

    .line 110
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mLatestIntBrightness:I

    int-to-float v1, v1

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    goto :goto_a4

    .line 113
    :cond_7a
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1050122

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 115
    new-instance v4, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V

    iput-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mPendingUpdate:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting initial brightness to default value of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_a4
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mBrightnessSyncObserver:Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->startObserving(Landroid/os/Handler;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/display/BrightnessSynchronizer;->mClock:Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    invoke-interface {v1}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 121
    return-void
.end method
