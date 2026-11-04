.class public final Lcom/android/internal/policy/DesktopModeCompatUtils;
.super Ljava/lang/Object;
.source "DesktopModeCompatUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    .line 61
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 62
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 64
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_38

    .line 67
    :pswitch_10
    move p1, v2

    goto :goto_15

    .line 66
    :pswitch_12
    move p1, v3

    goto :goto_15

    .line 65
    :pswitch_14
    move p1, v4

    .line 70
    :goto_15
    sparse-switch p0, :sswitch_data_42

    .line 73
    goto :goto_1c

    .line 72
    :sswitch_19
    move v2, v3

    goto :goto_1c

    .line 71
    :sswitch_1b
    move v2, v4

    .line 76
    :goto_1c
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 77
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    .line 78
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    .line 79
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 80
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_14
        :pswitch_10
        :pswitch_12
    .end packed-switch

    :sswitch_data_42
    .sparse-switch
        0x30 -> :sswitch_1b
        0x50 -> :sswitch_19
    .end sparse-switch
.end method

.method public static blacklist computeConfigOrientation(Landroid/graphics/Rect;)I
    .registers 2

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lt v0, p0, :cond_c

    .line 87
    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x2

    .line 86
    :goto_d
    return p0
.end method

.method private static blacklist isAnyForceConsumptionFlagsEnabled()Z
    .registers 1

    .line 96
    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION_ALWAYS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION:Landroid/window/DesktopModeFlags;

    .line 97
    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 96
    :goto_14
    return v0
.end method

.method private static blacklist isConfigurationDecoupled(Landroid/content/pm/ActivityInfo;Z)Z
    .registers 4

    .line 92
    const-wide/32 v0, 0x90d3a73

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_d

    if-nez p1, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static blacklist shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z
    .registers 4

    .line 49
    sget-object v0, Landroid/window/DesktopModeFlags;->EXCLUDE_CAPTION_FROM_APP_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 50
    invoke-static {}, Lcom/android/internal/policy/DesktopModeCompatUtils;->isAnyForceConsumptionFlagsEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 51
    invoke-static {p0, p2}, Lcom/android/internal/policy/DesktopModeCompatUtils;->isConfigurationDecoupled(Landroid/content/pm/ActivityInfo;Z)Z

    move-result p2

    if-nez p2, :cond_21

    if-eqz p1, :cond_1f

    .line 53
    const-wide/32 p1, 0x1720a297

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_1f
    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    .line 49
    :goto_22
    return p0
.end method
