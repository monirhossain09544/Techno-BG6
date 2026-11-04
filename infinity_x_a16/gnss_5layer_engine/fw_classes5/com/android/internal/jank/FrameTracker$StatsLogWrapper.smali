.class public Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsLogWrapper"
.end annotation


# instance fields
.field private final blacklist mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V
    .registers 2

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 848
    return-void
.end method


# virtual methods
.method public blacklist write(IIIIJJJJJJ)V
    .registers 38

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 854
    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/DisplayResolutionTracker;->getResolution(I)I

    move-result v15

    .line 853
    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v1, p1

    move/from16 v16, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    move-wide/from16 v13, p15

    invoke-static/range {v1 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJJJJJIIJFF)V

    .line 855
    return-void
.end method
