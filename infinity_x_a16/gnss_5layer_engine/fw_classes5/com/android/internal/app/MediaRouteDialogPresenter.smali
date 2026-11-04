.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final blacklist CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final blacklist CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 4

    .line 72
    invoke-static {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 73
    const v0, 0x1030132

    goto :goto_d

    .line 74
    :cond_a
    const v0, 0x103012e

    .line 75
    :goto_d
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;I)Landroid/app/Dialog;
    .registers 5

    .line 81
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;IZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;IZ)Landroid/app/Dialog;
    .registers 6

    .line 89
    invoke-static {p0, p1}, Lcom/android/internal/app/MediaRouteDialogPresenter;->shouldShowChooserDialog(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 90
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;IZ)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object v0

    .line 96
    :cond_12
    new-instance p1, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p1, p0, p3}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public static blacklist shouldShowChooserDialog(Landroid/content/Context;I)Z
    .registers 3

    .line 102
    const-class v0, Landroid/media/MediaRouter;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter;

    .line 103
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 105
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    .line 104
    :goto_23
    return p0
.end method

.method public static blacklist showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .registers 7

    .line 43
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 47
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MediaRouter"

    if-nez v1, :cond_37

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_37

    .line 59
    :cond_20
    const-string p1, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_2e

    .line 60
    const-string p0, "showDialog(): Route controller dialog already showing!"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v2

    .line 63
    :cond_2e
    new-instance p2, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {p2}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    .line 64
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-object p2

    .line 49
    :cond_37
    :goto_37
    const-string v0, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 50
    const-string p0, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v2

    .line 53
    :cond_45
    new-instance v1, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    .line 54
    invoke-virtual {v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    .line 55
    invoke-virtual {v1, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v1, p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    return-object v1
.end method
