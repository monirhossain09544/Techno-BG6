.class public Lcom/android/internal/colorextraction/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;,
        Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;,
        Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ColorExtractor"

.field public static final blacklist TYPE_DARK:I = 0x1

.field public static final blacklist TYPE_EXTRA_DARK:I = 0x2

.field public static final blacklist TYPE_NORMAL:I

.field private static final blacklist sGradientTypes:[I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

.field protected final blacklist mGradientColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mLockColors:Landroid/app/WallpaperColors;

.field private final blacklist mOnColorsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected blacklist mSystemColors:Landroid/app/WallpaperColors;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 56
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal;-><init>(Landroid/content/Context;)V

    const-class v1, Landroid/app/WallpaperManager;

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 56
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/internal/colorextraction/ColorExtractor;-><init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;ZLandroid/app/WallpaperManager;)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/colorextraction/types/ExtractionType;ZLandroid/app/WallpaperManager;)V
    .registers 13

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    .line 66
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    .line 67
    const/4 p1, 0x1

    const/4 p2, 0x2

    filled-new-array {p2, p1}, [I

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_16
    if-ge v1, p2, :cond_39

    aget v2, p1, v1

    .line 68
    sget-object v3, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v3, v3

    new-array v3, v3, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 69
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 70
    sget-object v2, Lcom/android/internal/colorextraction/ColorExtractor;->sGradientTypes:[I

    array-length v4, v2

    move v5, v0

    :goto_28
    if-ge v5, v4, :cond_36

    aget v6, v2, v5

    .line 71
    new-instance v7, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v7}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    aput-object v7, v3, v6

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 67
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 75
    :cond_39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p4}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 77
    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    .line 78
    invoke-direct {p0, p4, p3}, Lcom/android/internal/colorextraction/ColorExtractor;->initExtractColors(Landroid/app/WallpaperManager;Z)V

    .line 80
    :cond_4d
    return-void
.end method

.method private blacklist extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 6

    .line 215
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mExtractionType:Lcom/android/internal/colorextraction/types/ExtractionType;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/ExtractionType;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 217
    return-void
.end method

.method private blacklist initExtractColors(Landroid/app/WallpaperManager;Z)V
    .registers 6

    .line 83
    const/4 v0, 0x1

    if-eqz p2, :cond_14

    .line 84
    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 85
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractWallpaperColors()V

    goto :goto_24

    .line 88
    :cond_14
    new-instance p2, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;-><init>(Lcom/android/internal/colorextraction/ColorExtractor;Lcom/android/internal/colorextraction/ColorExtractor-IA;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/app/WallpaperManager;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {p2, v1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$LoadWallpaperColors;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    :goto_24
    return-void
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public blacklist destroy()V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 221
    if-eqz v0, :cond_f

    .line 222
    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 224
    :cond_f
    return-void
.end method

.method protected blacklist extractWallpaperColors()V
    .registers 9

    .line 112
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 113
    iget-object v2, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 114
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    const/4 v5, 0x0

    aget-object v6, v0, v5

    aget-object v7, v0, v1

    aget-object v0, v0, v3

    invoke-direct {p0, v4, v6, v7, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    aget-object v4, v2, v5

    aget-object v1, v2, v1

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 122
    return-void
.end method

.method public blacklist getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .registers 3

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getColors(II)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .registers 5

    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_11

    if-eq p2, v0, :cond_11

    if-ne p2, v1, :cond_9

    goto :goto_11

    .line 145
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type should be TYPE_NORMAL, TYPE_DARK or TYPE_EXTRA_DARK"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_11
    :goto_11
    if-eq p1, v1, :cond_1e

    if-ne p1, v0, :cond_16

    goto :goto_1e

    .line 149
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "which should be FLAG_SYSTEM or FLAG_NORMAL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    aget-object p1, p1, p2

    return-object p1
.end method

.method public blacklist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 5

    .line 162
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 163
    iget-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    return-object p1

    .line 164
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 165
    iget-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    return-object p1

    .line 167
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onColorsChanged(Landroid/app/WallpaperColors;I)V
    .registers 9

    .line 176
    nop

    .line 177
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1d

    .line 178
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mLockColors:Landroid/app/WallpaperColors;

    .line 179
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 180
    aget-object v4, v0, v2

    aget-object v5, v0, v1

    aget-object v0, v0, v3

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 182
    move v0, v1

    goto :goto_1e

    .line 177
    :cond_1d
    move v0, v2

    .line 184
    :goto_1e
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_36

    .line 185
    iput-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mSystemColors:Landroid/app/WallpaperColors;

    .line 186
    iget-object v0, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mGradientColors:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 187
    aget-object v2, v0, v2

    aget-object v4, v0, v1

    aget-object v0, v0, v3

    invoke-direct {p0, p1, v2, v4, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 189
    goto :goto_37

    .line 184
    :cond_36
    move v1, v0

    .line 192
    :goto_37
    if-eqz v1, :cond_3c

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/internal/colorextraction/ColorExtractor;->triggerColorsChanged(I)V

    .line 195
    :cond_3c
    return-void
.end method

.method public blacklist removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V
    .registers 7

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 234
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_23

    .line 235
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 236
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_20

    .line 237
    iget-object p1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    goto :goto_23

    .line 234
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 241
    :cond_23
    :goto_23
    return-void
.end method

.method protected blacklist triggerColorsChanged(I)V
    .registers 7

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 201
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_28

    .line 202
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 203
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 204
    if-nez v4, :cond_22

    .line 205
    iget-object v4, p0, Lcom/android/internal/colorextraction/ColorExtractor;->mOnColorsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_25

    .line 207
    :cond_22
    invoke-interface {v4, p0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;->onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    .line 201
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 210
    :cond_28
    return-void
.end method
