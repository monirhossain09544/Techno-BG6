.class public Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;
.super Ljava/lang/Object;
.source "DisplayRefreshRateHelper.java"


# static fields
.field private static final blacklist DEFAULT_REFRESH_RATE:F = 60.0f

.field private static blacklist sInstance:Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mRefreshRateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->sInstance:Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->initialize()V

    .line 41
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;
    .registers 2

    .line 32
    sget-object v0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->sInstance:Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->sInstance:Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;

    .line 35
    :cond_b
    sget-object p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->sInstance:Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;

    return-object p0
.end method

.method private blacklist initialize()V
    .registers 8

    .line 44
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v1

    .line 46
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_3f

    aget-object v4, v1, v3

    .line 47
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-ne v5, v6, :cond_3c

    .line 48
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-ne v5, v6, :cond_3c

    .line 49
    iget-object v5, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 52
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist getMinimumRefreshRate()I
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 62
    if-eqz v0, :cond_11

    int-to-float v0, v0

    goto :goto_13

    :cond_11
    const/high16 v0, 0x42700000    # 60.0f

    .line 63
    :goto_13
    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "min_refresh_rate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    float-to-int v0, v0

    .line 65
    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 66
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 68
    :cond_4a
    return v0
.end method

.method public blacklist getPeakRefreshRate()I
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 74
    if-eqz v0, :cond_11

    int-to-float v0, v0

    goto :goto_13

    :cond_11
    const/high16 v0, 0x42700000    # 60.0f

    .line 75
    :goto_13
    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "peak_refresh_rate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    float-to-int v0, v0

    .line 77
    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 80
    :cond_4a
    return v0
.end method

.method public blacklist getRefreshRate()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->getMinimumRefreshRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->getPeakRefreshRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method public blacklist getSupportedRefreshRateList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist isRefreshRateValid(I)Z
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mRefreshRateList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist setMinimumRefreshRate(I)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    int-to-float p1, p1

    const/4 v1, 0x0

    const-string v2, "min_refresh_rate"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 93
    return-void
.end method

.method public blacklist setPeakRefreshRate(I)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    int-to-float p1, p1

    const/4 v1, 0x0

    const-string v2, "peak_refresh_rate"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 98
    return-void
.end method

.method public blacklist setRefreshRate(II)V
    .registers 3

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->setMinimumRefreshRate(I)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/android/internal/util/neoteric/DisplayRefreshRateHelper;->setPeakRefreshRate(I)V

    .line 103
    return-void
.end method
