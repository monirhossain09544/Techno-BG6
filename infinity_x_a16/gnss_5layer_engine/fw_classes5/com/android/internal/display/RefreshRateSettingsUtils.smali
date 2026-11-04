.class public Lcom/android/internal/display/RefreshRateSettingsUtils;
.super Ljava/lang/Object;
.source "RefreshRateSettingsUtils.java"


# static fields
.field public static final blacklist DEFAULT_REFRESH_RATE:F = 60.0f

.field private static final blacklist TAG:Ljava/lang/String; = "RefreshRateSettingsUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findHighestRefreshRateAmongAllBuiltInDisplays(Landroid/content/Context;)F
    .registers 10

    .line 96
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 97
    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    .line 98
    array-length v0, p0

    const/high16 v1, 0x42700000    # 60.0f

    if-nez v0, :cond_1b

    .line 99
    const-string p0, "RefreshRateSettingsUtils"

    const-string v0, "No valid display devices"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v1

    .line 103
    :cond_1b
    nop

    .line 104
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ge v3, v0, :cond_47

    aget-object v4, p0, v3

    .line 105
    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2b

    goto :goto_44

    .line 106
    :cond_2b
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_31
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    .line 107
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_41

    .line 108
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 106
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 104
    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 112
    :cond_47
    return v1
.end method

.method public static blacklist findHighestRefreshRateAmongAllDisplays(Landroid/content/Context;)F
    .registers 10

    .line 69
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 70
    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    .line 71
    array-length v0, p0

    const/high16 v1, 0x42700000    # 60.0f

    if-nez v0, :cond_1b

    .line 72
    const-string p0, "RefreshRateSettingsUtils"

    const-string v0, "No valid display devices"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v1

    .line 76
    :cond_1b
    nop

    .line 77
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ge v3, v0, :cond_3f

    aget-object v4, p0, v3

    .line 78
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_29
    if-ge v6, v5, :cond_3c

    aget-object v7, v4, v6

    .line 79
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    cmpl-float v8, v8, v1

    if-lez v8, :cond_39

    .line 80
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 78
    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 77
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 84
    :cond_3f
    return v1
.end method

.method public static blacklist findHighestRefreshRateForDefaultDisplay(Landroid/content/Context;)F
    .registers 6

    .line 44
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 46
    const/high16 v1, 0x42700000    # 60.0f

    if-nez p0, :cond_19

    .line 47
    const-string p0, "RefreshRateSettingsUtils"

    const-string v0, "No valid default display device"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v1

    .line 51
    :cond_19
    nop

    .line 52
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    array-length v2, p0

    :goto_1f
    if-ge v0, v2, :cond_32

    aget-object v3, p0, v0

    .line 53
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    cmpl-float v4, v4, v1

    if-lez v4, :cond_2f

    .line 54
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 52
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 57
    :cond_32
    return v1
.end method
