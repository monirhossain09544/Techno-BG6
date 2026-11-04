.class Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;
.super Landroid/view/View;
.source "InteractionMonitorDebugOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionMonitorDebugOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugOverlayView"
.end annotation


# static fields
.field private static final blacklist TRACK_NAME:Ljava/lang/String; = "InteractionJankMonitor"


# instance fields
.field private final blacklist mBgColor:I

.field final blacklist mCujFontSize:I

.field final blacklist mCujNameTextHeight:F

.field final blacklist mCujStatusWidth:F

.field private final blacklist mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mDebugPaint:Landroid/graphics/Paint;

.field private final blacklist mDensity:F

.field final blacklist mPackageNameFontSize:I

.field private final blacklist mPackageNameText:Ljava/lang/String;

.field final blacklist mPackageNameTextHeight:F

.field final blacklist mPackageNameWidth:F

.field final blacklist mPadding:I

.field private final blacklist mYOffset:D

.field final synthetic blacklist this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;ID)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 229
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 230
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->setVisibility(I)V

    .line 231
    iput p3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mBgColor:I

    .line 232
    iput-wide p4, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mYOffset:D

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 234
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDensity:F

    .line 235
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    .line 236
    iget-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "package:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmCurrentApplication(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    .line 239
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    .line 240
    const/16 p1, 0xc

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    .line 241
    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->dipToPx(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    .line 242
    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getTextHeight(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    .line 243
    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    const p2, 0x3f99999a    # 1.2f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    .line 244
    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getTextHeight(I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    .line 245
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    iget p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidthOfText(Ljava/lang/String;I)F

    move-result p1

    iput p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameWidth:F

    .line 246
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;IDLcom/android/internal/jank/InteractionMonitorDebugOverlay-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;-><init>(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;Landroid/content/Context;ID)V

    return-void
.end method

.method private blacklist dipToPx(I)I
    .registers 3

    .line 249
    iget v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDensity:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private blacklist getTextHeight(I)F
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 255
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p1, v0

    return p1
.end method

.method private blacklist getWidthOfLongestCujName(I)F
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    nop

    .line 266
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 267
    iget-object v1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v1}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    iget-object v1, v1, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mName:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 269
    cmpl-float v2, v1, p1

    if-lez v2, :cond_2e

    .line 270
    move p1, v1

    .line 266
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 273
    :cond_31
    return p1
.end method

.method private blacklist getWidthOfText(Ljava/lang/String;I)F
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 260
    iget-object p2, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 278
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 283
    const-wide/16 v0, 0x1000

    const-string v2, "InteractionJankMonitor"

    const-string v3, "DEBUG_OVERLAY_DRAW"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getHeight()I

    move-result v3

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidth()I

    move-result v5

    .line 287
    int-to-double v6, v3

    iget-wide v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mYOffset:D

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 289
    iget v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameWidth:F

    iget v7, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    invoke-direct {p0, v7}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->getWidthOfLongestCujName(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    add-float/2addr v6, v7

    .line 292
    int-to-float v5, v5

    sub-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    float-to-int v5, v5

    .line 293
    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    iget-object v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mBgColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v8, v3

    iget v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    neg-int v3, v3

    int-to-float v9, v3

    iget v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v10, v3, v6

    iget v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v6}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v6

    .line 298
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v11, v3, v5

    iget-object v12, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    .line 296
    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameFontSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 300
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 302
    iget p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameTextHeight:F

    const/4 v5, 0x0

    invoke-virtual {v7, v5, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 303
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mPackageNameText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, p1, v5, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 304
    iget-object p1, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujFontSize:I

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 306
    move p1, v4

    :goto_94
    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v6}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_10e

    .line 307
    iget-object v6, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->this$0:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-static {v6}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->-$$Nest$fgetmRunningCujs(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;

    .line 308
    iget v8, v6, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mState:I

    .line 309
    packed-switch v8, :pswitch_data_112

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected tracker status value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "InteractionMonitorDebug"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v8, "?"

    goto :goto_f8

    .line 322
    :pswitch_cc
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x10000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 324
    const-string v8, "\u274c"

    goto :goto_f8

    .line 316
    :pswitch_dc
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 318
    const-string v8, "\u2705"

    goto :goto_f8

    .line 311
    :pswitch_ec
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 313
    const-string v8, "\u2610"

    .line 331
    :goto_f8
    iget-object v6, v6, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$TrackerState;->mName:Ljava/lang/String;

    .line 332
    iget v9, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujNameTextHeight:F

    invoke-virtual {v7, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    iget-object v9, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v5, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    iget v8, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mCujStatusWidth:F

    iget-object v9, p0, Lcom/android/internal/jank/InteractionMonitorDebugOverlay$DebugOverlayView;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v8, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 306
    add-int/lit8 p1, p1, 0x1

    goto :goto_94

    .line 336
    :cond_10e
    invoke-static {v0, v1, v2, v4}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 337
    return-void

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_dc
        :pswitch_cc
    .end packed-switch
.end method
