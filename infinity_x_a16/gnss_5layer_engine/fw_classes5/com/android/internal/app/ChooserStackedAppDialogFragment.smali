.class public Lcom/android/internal/app/ChooserStackedAppDialogFragment;
.super Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.source "ChooserStackedAppDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final blacklist MULTI_DRI_KEY:Ljava/lang/String; = "multi_dri_key"

.field static final blacklist WHICH_KEY:Ljava/lang/String; = "which_key"


# instance fields
.field private blacklist mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

.field private blacklist mParentWhich:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 68
    const/4 p1, 0x0

    return-object p1
.end method

.method protected blacklist getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;
    .registers 3

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 73
    iget-object p1, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->setSelected(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ChooserActivity;

    iget p2, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->dismiss()V

    .line 76
    return-void
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "which_key"

    iget v1, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string v0, "multi_dri_key"

    iget-object v1, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    return-void
.end method

.method blacklist setStateFromBundle(Landroid/os/Bundle;)V
    .registers 3

    .line 45
    const-string v0, "multi_dri_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 46
    iget-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mMultiDisplayResolveInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->getTargets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    .line 47
    const-string v0, "user_handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 48
    const-string v0, "which_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ChooserStackedAppDialogFragment;->mParentWhich:I

    .line 49
    return-void
.end method
