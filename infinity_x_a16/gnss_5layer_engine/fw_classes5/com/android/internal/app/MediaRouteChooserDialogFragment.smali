.class public Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private final blacklist ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

.field private blacklist mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 35
    const-string v0, "routeTypes"

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 47
    const v0, 0x1030132

    goto :goto_18

    .line 48
    :cond_15
    const v0, 0x103012e

    .line 50
    :goto_18
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist getRouteTypes()I
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_d

    const-string v1, "routeTypes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;
    .registers 4

    .line 94
    new-instance p2, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getTheme()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method

.method public whitelist onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object p1
.end method

.method public blacklist setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_11

    .line 77
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    .line 80
    if-eqz v0, :cond_11

    .line 81
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_11
    return-void
.end method

.method public blacklist setRouteTypes(I)V
    .registers 4

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v0

    if-eq p1, v0, :cond_24

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    if-nez v0, :cond_11

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    :cond_11
    const-string v1, "routeTypes"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    .line 69
    if-eqz v0, :cond_24

    .line 70
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 73
    :cond_24
    return-void
.end method
