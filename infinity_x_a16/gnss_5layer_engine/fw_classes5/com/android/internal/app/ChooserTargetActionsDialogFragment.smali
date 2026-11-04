.class public Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ChooserTargetActionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;,
        Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;
    }
.end annotation


# static fields
.field public static final blacklist INTENT_FILTER_KEY:Ljava/lang/String; = "intent_filter"

.field public static final blacklist IS_SHORTCUT_PINNED_KEY:Ljava/lang/String; = "is_shortcut_pinned"

.field public static final blacklist SHORTCUT_ID_KEY:Ljava/lang/String; = "shortcut_id"

.field public static final blacklist SHORTCUT_TITLE_KEY:Ljava/lang/String; = "shortcut_title"

.field public static final blacklist TARGET_INFOS_KEY:Ljava/lang/String; = "target_infos"

.field public static final blacklist USER_HANDLE_KEY:Ljava/lang/String; = "user_handle"


# instance fields
.field protected blacklist mIntentFilter:Landroid/content/IntentFilter;

.field protected blacklist mIsShortcutPinned:Z

.field protected blacklist mShortcutId:Ljava/lang/String;

.field protected blacklist mShortcutTitle:Ljava/lang/String;

.field protected blacklist mTargetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$bSYD4czaDbmn831qG15NEcrvA5k(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->lambda$onCreateView$1(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method private blacklist getPinIcon(Z)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 257
    if-eqz p1, :cond_e

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1080401

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_19

    .line 259
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x10803f3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 257
    :goto_19
    return-object p1
.end method

.method private blacklist getPinLabel(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 263
    if-eqz p1, :cond_12

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1040aa6

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    .line 265
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10408ea

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 263
    :goto_21
    return-object p1
.end method

.method private static blacklist getPinnedShortcutsFromPackageAsUser(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 236
    const-class p1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 237
    invoke-virtual {p0, p2}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object p0

    .line 238
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda3;-><init>()V

    .line 239
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda5;-><init>()V

    .line 241
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 242
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 238
    return-object p0
.end method

.method private blacklist getProvidingAppPresentationGetter()Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;
    .registers 6

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 282
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 283
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    .line 286
    new-instance v1, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    .line 287
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;-><init>(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;)V

    .line 286
    return-object v1
.end method

.method private blacklist isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z
    .registers 3

    .line 291
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->isPinned()Z

    move-result p1

    :goto_d
    return p1
.end method

.method private blacklist isShortcutTarget()Z
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic blacklist lambda$getPinnedShortcutsFromPackageAsUser$2(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .registers 3

    .line 240
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method static synthetic blacklist lambda$onCreateView$0(Landroid/view/Window;)V
    .registers 3

    .line 132
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method private synthetic blacklist lambda$onCreateView$1(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;
    .registers 4

    .line 137
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private blacklist pinComponent(Landroid/content/ComponentName;)V
    .registers 5

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 249
    if-eqz p1, :cond_23

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2f

    .line 252
    :cond_23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    :goto_2f
    return-void
.end method

.method private blacklist toggleShortcutPinned(Landroid/content/ComponentName;)V
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_5

    .line 217
    return-void

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 221
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinnedShortcutsFromPackageAsUser(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 223
    iget-boolean v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    if-eqz v1, :cond_1f

    .line 224
    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    .line 226
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_24
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 230
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 229
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected blacklist getItemIcon(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 277
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getItemLabel(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Ljava/lang/CharSequence;
    .registers 5

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isPinned(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Z

    move-result v1

    .line 272
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    goto :goto_1d

    :cond_15
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 271
    :goto_1d
    invoke-direct {p0, v1, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getPinLabel(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 206
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 207
    iget-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->toggleShortcutPinned(Landroid/content/ComponentName;)V

    goto :goto_25

    .line 209
    :cond_16
    iget-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->pinComponent(Landroid/content/ComponentName;)V

    .line 211
    :goto_25
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->handlePackagesChanged()V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->dismiss()V

    .line 213
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 85
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_9

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    goto :goto_10

    .line 89
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    .line 91
    :goto_10
    return-void
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .line 124
    if-eqz p3, :cond_6

    .line 125
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    goto :goto_d

    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->setStateFromBundle(Landroid/os/Bundle;)V

    .line 130
    :goto_d
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 131
    invoke-virtual {p3, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 136
    iget-object p3, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;)V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    .line 138
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 140
    const v0, 0x1090060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 142
    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 143
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    const v1, 0x10203be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView;

    .line 146
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->getProvidingAppPresentationGetter()Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    move-result-object v2

    .line 147
    invoke-direct {p0}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->isShortcutTarget()Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    goto :goto_73

    :cond_6f
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v3

    :goto_73
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, p2}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    new-instance p2, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;

    invoke-direct {p2, p0, p3}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Ljava/util/List;)V

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 151
    return-object p1
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "user_handle"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    const-string v0, "target_infos"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 110
    const-string v0, "shortcut_id"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "is_shortcut_pinned"

    iget-boolean v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string v0, "shortcut_title"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "intent_filter"

    iget-object v1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    return-void
.end method

.method blacklist setStateFromBundle(Landroid/os/Bundle;)V
    .registers 3

    .line 94
    const-string v0, "target_infos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mTargetInfos:Ljava/util/ArrayList;

    .line 95
    const-string v0, "user_handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 96
    const-string v0, "shortcut_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutId:Ljava/lang/String;

    .line 97
    const-string v0, "shortcut_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mShortcutTitle:Ljava/lang/String;

    .line 98
    const-string v0, "is_shortcut_pinned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIsShortcutPinned:Z

    .line 99
    const-string v0, "intent_filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentFilter;

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->mIntentFilter:Landroid/content/IntentFilter;

    .line 100
    return-void
.end method
