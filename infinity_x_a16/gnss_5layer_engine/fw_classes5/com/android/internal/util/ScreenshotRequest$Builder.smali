.class public Lcom/android/internal/util/ScreenshotRequest$Builder;
.super Ljava/lang/Object;
.source "ScreenshotRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBoundsInScreen:Landroid/graphics/Rect;

.field private blacklist mDisplayId:I

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private final blacklist mSource:I

.field private blacklist mTaskId:I

.field private blacklist mTopComponent:Landroid/content/ComponentName;

.field private final blacklist mType:I

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 5

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    .line 172
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    .line 174
    iput v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mDisplayId:I

    .line 187
    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    goto :goto_22

    .line 189
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid screenshot type requested!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_22
    :goto_22
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    .line 192
    iput p2, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mSource:I

    .line 193
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/util/ScreenshotRequest;
    .registers 14

    .line 199
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    const/4 v1, 0x1

    const-string v2, "ScreenshotRequest"

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 200
    const-string v0, "Bitmap provided, but request is fullscreen. Bitmap will be ignored."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_10
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e

    .line 203
    const-string v0, "Bitmap provided, but request is partial. Bitmap will be ignored."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1e
    iget v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    goto :goto_30

    .line 206
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request is PROVIDED_IMAGE, but no bitmap is provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_30
    :goto_30
    new-instance v2, Lcom/android/internal/util/ScreenshotRequest;

    iget v3, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mType:I

    iget v4, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mSource:I

    iget-object v5, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTopComponent:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    iget v7, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    iget-object v8, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    iget v11, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mDisplayId:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/util/ScreenshotRequest;-><init>(IILandroid/content/ComponentName;IILandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;ILcom/android/internal/util/ScreenshotRequest-IA;)V

    return-object v2
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 251
    return-object p0
.end method

.method public blacklist setBoundsOnScreen(Landroid/graphics/Rect;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 261
    return-object p0
.end method

.method public blacklist setDisplayId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2

    .line 280
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mDisplayId:I

    .line 281
    return-object p0
.end method

.method public blacklist setInsets(Landroid/graphics/Insets;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mInsets:Landroid/graphics/Insets;

    .line 271
    return-object p0
.end method

.method public blacklist setTaskId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2

    .line 230
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTaskId:I

    .line 231
    return-object p0
.end method

.method public blacklist setTopComponent(Landroid/content/ComponentName;)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mTopComponent:Landroid/content/ComponentName;

    .line 221
    return-object p0
.end method

.method public blacklist setUserId(I)Lcom/android/internal/util/ScreenshotRequest$Builder;
    .registers 2

    .line 240
    iput p1, p0, Lcom/android/internal/util/ScreenshotRequest$Builder;->mUserId:I

    .line 241
    return-object p0
.end method
