.class final Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "RemoteSelectionToolbar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/selectiontoolbar/RemoteSelectionToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogAccelerateInterpolator"
.end annotation


# static fields
.field private static final blacklist BASE:I = 0x64

.field private static final blacklist LOGS_SCALE:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1228
    const/16 v0, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;->computeLog(FI)F

    move-result v0

    div-float/2addr v1, v0

    sput v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;->LOGS_SCALE:F

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/selectiontoolbar/RemoteSelectionToolbar-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;-><init>()V

    return-void
.end method

.method private static blacklist computeLog(FI)F
    .registers 4

    .line 1231
    int-to-double v0, p1

    neg-float p0, p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .registers 4

    .line 1236
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/16 v1, 0x64

    invoke-static {p1, v1}, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;->computeLog(FI)F

    move-result p1

    sget v1, Landroid/service/selectiontoolbar/RemoteSelectionToolbar$LogAccelerateInterpolator;->LOGS_SCALE:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method
