.class Lcom/android/internal/app/MediaRouteControllerContentManager$1;
.super Ljava/lang/Object;
.source "MediaRouteControllerContentManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerContentManager;->bindViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mStopTrackingTouch:Ljava/lang/Runnable;

.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance p1, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;

    invoke-direct {p1, p0}, Lcom/android/internal/app/MediaRouteControllerContentManager$1$1;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager$1;)V

    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 127
    if-eqz p3, :cond_b

    .line 128
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 130
    :cond_b
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 111
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmVolumeSlider(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 113
    :cond_14
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fputmVolumeSliderTouched(Lcom/android/internal/app/MediaRouteControllerContentManager;Z)V

    .line 115
    :goto_1a
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 122
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmVolumeSlider(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$1;->mStopTrackingTouch:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method
