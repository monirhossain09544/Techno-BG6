.class public final Lcom/android/internal/app/chooser/SelectableTargetInfo;
.super Ljava/lang/Object;
.source "SelectableTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/ChooserTargetInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SelectableTargetInfo"


# instance fields
.field private final blacklist mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private blacklist mBadgeContentDescription:Ljava/lang/CharSequence;

.field private blacklist mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mDisplayLabel:Ljava/lang/String;

.field private final blacklist mFillInFlags:I

.field private final blacklist mFillInIntent:Landroid/content/Intent;

.field private final blacklist mIsPinned:Z

.field private blacklist mIsSuspended:Z

.field private final blacklist mModifiedScore:F

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V
    .registers 9

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 79
    iput-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 81
    iput-object p3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 82
    iput p4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    .line 83
    iget-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 84
    iput-object p5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 85
    iput-object p6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 86
    const/4 p1, 0x1

    if-eqz p6, :cond_28

    invoke-virtual {p6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p4

    if-eqz p4, :cond_28

    move p4, p1

    goto :goto_29

    :cond_28
    move p4, v1

    :goto_29
    iput-boolean p4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    .line 87
    if-eqz p2, :cond_5e

    .line 88
    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p4

    .line 89
    if-eqz p4, :cond_5e

    .line 90
    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    if-eqz p4, :cond_5e

    iget-object p5, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p5, :cond_5e

    .line 92
    iget-object p5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    .line 93
    iget-object p6, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p5, p6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    iput-object p6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object p6, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p5, p6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 95
    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p5, 0x40000000    # 2.0f

    and-int/2addr p4, p5

    if-eqz p4, :cond_5b

    goto :goto_5c

    :cond_5b
    move p1, v1

    :goto_5c
    iput-boolean p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 101
    :cond_5e
    if-eqz p2, :cond_63

    .line 102
    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_73

    .line 104
    :cond_63
    iget-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 108
    :goto_73
    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 109
    iput v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    .line 111
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 116
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 118
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 119
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 120
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 121
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 122
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 124
    monitor-enter p1

    .line 125
    :try_start_2a
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 126
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 127
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_4c

    .line 128
    iput-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 129
    iput p3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    .line 130
    iget p2, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    iput p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    .line 131
    iget-boolean p1, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    iput-boolean p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    .line 133
    iget-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    .line 134
    return-void

    .line 127
    :catchall_4c
    move-exception p2

    :try_start_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p2
.end method

.method private blacklist getBaseIntentToSend()Landroid/content/Intent;
    .registers 4

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    if-nez v0, :cond_e

    .line 238
    const-string v1, "SelectableTargetInfo"

    const-string v2, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 240
    :cond_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1e

    .line 242
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 244
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getReferrerFillInIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-object v0, v1

    .line 246
    :goto_29
    return-object v0
.end method

.method private blacklist getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 173
    nop

    .line 176
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 178
    iget-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_22

    .line 179
    :cond_10
    if-eqz p2, :cond_21

    .line 180
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    const-string v3, "launcherapps"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 182
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_22

    .line 179
    :cond_21
    move-object p2, v2

    .line 185
    :goto_22
    if-nez p2, :cond_25

    return-object v2

    .line 187
    :cond_25
    nop

    .line 189
    :try_start_26
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_30} :catch_31

    .line 192
    goto :goto_3a

    .line 190
    :catch_31
    move-exception p1

    .line 191
    const-string p1, "SelectableTargetInfo"

    const-string v0, "Could not find activity associated with ChooserTarget"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    .line 194
    :goto_3a
    if-nez p1, :cond_3d

    return-object v2

    .line 197
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v0, p1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object p1

    .line 198
    invoke-virtual {p1, v2}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/SimpleIconFactory;->obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p2, p1}, Lcom/android/internal/app/SimpleIconFactory;->createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/app/SimpleIconFactory;->recycle()V

    .line 205
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private blacklist sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 139
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 4

    .line 319
    new-instance v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist getAllSourceIntents()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_19

    .line 327
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_19
    return-object v0
.end method

.method public blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    return-object v0
.end method

.method public declared-synchronized blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object p1

    .line 303
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public blacklist getDisplayLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModifiedScore()F
    .registers 2

    .line 209
    iget v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_d
    return-object v0
.end method

.method public blacklist getResolvedComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 228
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_21

    .line 229
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 232
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolvedIntent()Landroid/content/Intent;
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 218
    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    return-object v0
.end method

.method public declared-synchronized blacklist hasDisplayIcon()Z
    .registers 2

    monitor-enter p0

    .line 310
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 310
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public blacklist isPinned()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    return v0
.end method

.method public blacklist isSuspended()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    return v0
.end method

.method public blacklist loadIcon()Z
    .registers 4

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 158
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 159
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    .line 160
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 161
    :goto_d
    if-eqz v1, :cond_20

    .line 162
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    monitor-enter p0

    .line 164
    :try_start_16
    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 166
    monitor-exit p0

    goto :goto_20

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v0

    .line 168
    :cond_20
    :goto_20
    return v1

    .line 159
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 3

    .line 251
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ChooserTargets should be started as caller."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .registers 9

    .line 256
    invoke-direct {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v0

    .line 257
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 258
    return v1

    .line 260
    :cond_8
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    .line 263
    invoke-static {v0}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 273
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 274
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 275
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    move v1, v3

    goto :goto_42

    :cond_41
    nop

    .line 276
    :goto_42
    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 277
    return v3
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 4

    .line 282
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ChooserTargets should be started as caller."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
