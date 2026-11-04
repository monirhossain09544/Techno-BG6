.class final Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteControllerContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MediaRouteControllerContentManager;Lcom/android/internal/app/MediaRouteControllerContentManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerContentManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 3

    .line 254
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 255
    return-void
.end method

.method public whitelist onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .registers 5

    .line 267
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 268
    return-void
.end method

.method public whitelist onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .registers 4

    .line 273
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 274
    return-void
.end method

.method public whitelist onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 4

    .line 249
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-virtual {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->update()V

    .line 250
    return-void
.end method

.method public whitelist onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 3

    .line 259
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$fgetmRoute(Lcom/android/internal/app/MediaRouteControllerContentManager;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-ne p2, p1, :cond_d

    .line 260
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerContentManager$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerContentManager;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerContentManager;->-$$Nest$mupdateVolume(Lcom/android/internal/app/MediaRouteControllerContentManager;)V

    .line 262
    :cond_d
    return-void
.end method
