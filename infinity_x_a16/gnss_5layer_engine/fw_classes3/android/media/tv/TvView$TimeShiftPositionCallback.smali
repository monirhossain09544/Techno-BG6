.class public abstract Landroid/media/tv/TvView$TimeShiftPositionCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimeShiftPositionCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .registers 4

    .line 1120
    return-void
.end method

.method public whitelist onTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .registers 4

    .line 1105
    return-void
.end method
