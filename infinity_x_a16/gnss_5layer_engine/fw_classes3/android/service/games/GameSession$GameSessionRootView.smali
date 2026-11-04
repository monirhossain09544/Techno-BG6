.class final Landroid/service/games/GameSession$GameSessionRootView;
.super Landroid/widget/FrameLayout;
.source "GameSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameSessionRootView"
.end annotation


# instance fields
.field private final blacklist mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/view/SurfaceControlViewHost;)V
    .registers 3

    .line 352
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    iput-object p2, p0, Landroid/service/games/GameSession$GameSessionRootView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 354
    return-void
.end method


# virtual methods
.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 362
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 363
    iget-object v0, p0, Landroid/service/games/GameSession$GameSessionRootView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControlViewHost;->relayout(II)V

    .line 364
    return-void
.end method
