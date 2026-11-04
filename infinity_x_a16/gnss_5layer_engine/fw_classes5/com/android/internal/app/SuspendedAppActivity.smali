.class public Lcom/android/internal/app/SuspendedAppActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SuspendedAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final blacklist EXTRA_ACTIVITY_OPTIONS:Ljava/lang/String; = "com.android.internal.app.extra.ACTIVITY_OPTIONS"

.field public static final blacklist EXTRA_DIALOG_INFO:Ljava/lang/String; = "com.android.internal.app.extra.DIALOG_INFO"

.field public static final blacklist EXTRA_SUSPENDED_PACKAGE:Ljava/lang/String; = "com.android.internal.app.extra.SUSPENDED_PACKAGE"

.field public static final blacklist EXTRA_SUSPENDING_PACKAGE:Ljava/lang/String; = "com.android.internal.app.extra.SUSPENDING_PACKAGE"

.field public static final blacklist EXTRA_SUSPENDING_USER:Ljava/lang/String; = "com.android.internal.app.extra.SUSPENDING_USER"

.field public static final blacklist EXTRA_UNSUSPEND_INTENT:Ljava/lang/String; = "com.android.internal.app.extra.UNSUSPEND_INTENT"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mMoreDetailsIntent:Landroid/content/Intent;

.field private blacklist mNeutralButtonAction:I

.field private blacklist mOnUnsuspend:Landroid/content/IntentSender;

.field private blacklist mOptions:Landroid/os/Bundle;

.field private blacklist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field private blacklist mSuspendModifiedReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSuspendedPackage:Ljava/lang/String;

.field private blacklist mSuspendingAppResources:Landroid/content/res/Resources;

.field private blacklist mSuspendingPackage:Ljava/lang/String;

.field private blacklist mSuspendingUserId:I

.field private blacklist mUserId:I

.field private blacklist mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSuspendedPackage(Lcom/android/internal/app/SuspendedAppActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPackageSuspended(Lcom/android/internal/app/SuspendedAppActivity;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/SuspendedAppActivity;->isPackageSuspended(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    const-class v0, Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/android/internal/app/SuspendedAppActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuspendedAppActivity$1;-><init>(Lcom/android/internal/app/SuspendedAppActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendModifiedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static blacklist createSuspendedAppInterceptIntent(Ljava/lang/String;Landroid/content/pm/UserPackage;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;
    .registers 9

    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    const-class v1, Lcom/android/internal/app/SuspendedAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 367
    const-string v1, "com.android.internal.app.extra.SUSPENDED_PACKAGE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 368
    const-string v0, "com.android.internal.app.extra.DIALOG_INFO"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 370
    if-eqz p1, :cond_22

    iget-object p2, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    .line 369
    :goto_23
    const-string v0, "com.android.internal.app.extra.SUSPENDING_PACKAGE"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 371
    const-string p2, "com.android.internal.app.extra.UNSUSPEND_INTENT"

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 372
    const-string p2, "com.android.internal.app.extra.ACTIVITY_OPTIONS"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    .line 373
    const-string p2, "android.intent.extra.USER_ID"

    invoke-virtual {p0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 374
    const/high16 p2, 0x10800000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 376
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    move-result p2

    if-eqz p2, :cond_50

    if-eqz p1, :cond_50

    .line 377
    const-string p2, "com.android.internal.app.extra.SUSPENDING_USER"

    iget p1, p1, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    :cond_50
    return-object p0
.end method

.method private blacklist getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p1

    .line 112
    :catch_10
    move-exception v0

    .line 113
    sget-object v1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-object p1
.end method

.method private blacklist getMoreDetailsActivity()Landroid/content/Intent;
    .registers 5

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_SUSPENDED_APP_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v2, 0xc0000

    iget v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_37

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_37

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 125
    const-string v2, "android.permission.SEND_SHOW_SUSPENDED_APP_DETAILS"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 126
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 127
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    return-object v0

    .line 130
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist isPackageSuspended(Ljava/lang/String;)Z
    .registers 6

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 103
    :catch_7
    move-exception v0

    .line 104
    sget-object v1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " not found"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist requestDismissKeyguardIfNeeded(Ljava/lang/CharSequence;)V
    .registers 4

    .line 283
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 284
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 285
    new-instance v1, Lcom/android/internal/app/SuspendedAppActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/SuspendedAppActivity$2;-><init>(Lcom/android/internal/app/SuspendedAppActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 300
    :cond_16
    return-void
.end method

.method private blacklist resolveDialogMessage()Ljava/lang/String;
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v1, :cond_5d

    .line 166
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo;->getDialogMessageResId()I

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo;->getDialogMessage()Ljava/lang/String;

    move-result-object v2

    .line 168
    if-eqz v1, :cond_41

    iget-object v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_41

    .line 170
    :try_start_1c
    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_26} :catch_27

    return-object v0

    .line 171
    :catch_27
    move-exception v2

    .line 172
    sget-object v2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve string resource id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_5d

    .line 174
    :cond_41
    if-eqz v2, :cond_5d

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_5d
    :goto_5d
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    .line 180
    invoke-direct {p0, v1}, Lcom/android/internal/app/SuspendedAppActivity;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 179
    const v1, 0x1040179

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist resolveIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo;->getIconResId()I

    move-result v0

    goto :goto_c

    .line 135
    :cond_b
    const/4 v0, 0x0

    .line 136
    :goto_c
    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_36

    .line 138
    :try_start_12
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_1c} :catch_1d

    return-object v0

    .line 139
    :catch_1d
    move-exception v1

    .line 140
    sget-object v1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve drawable resource id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_36
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist resolveNeutralButtonText()Ljava/lang/String;
    .registers 6

    .line 190
    iget v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_6e

    .line 201
    sget-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown neutral button action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v1

    .line 198
    :pswitch_21
    nop

    .line 199
    const v0, 0x104017c

    goto :goto_2f

    .line 192
    :pswitch_26
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    if-nez v0, :cond_2b

    .line 193
    return-object v1

    .line 195
    :cond_2b
    nop

    .line 196
    const v0, 0x104017a

    .line 204
    :goto_2f
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v1, :cond_69

    .line 205
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo;->getNeutralButtonTextResId()I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v2}, Landroid/content/pm/SuspendDialogInfo;->getNeutralButtonText()Ljava/lang/String;

    move-result-object v2

    .line 207
    if-eqz v1, :cond_66

    iget-object v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_66

    .line 209
    :try_start_45
    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_4b} :catch_4c

    return-object v0

    .line 210
    :catch_4c
    move-exception v2

    .line 211
    sget-object v2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve string resource id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    goto :goto_69

    .line 213
    :cond_66
    if-eqz v2, :cond_69

    .line 214
    return-object v2

    .line 217
    :cond_69
    :goto_69
    invoke-virtual {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_21
    .end packed-switch
.end method

.method private blacklist resolveTitle()Ljava/lang/String;
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz v0, :cond_3a

    .line 148
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo;->getTitleResId()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v1}, Landroid/content/pm/SuspendDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 150
    if-eqz v0, :cond_37

    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_37

    .line 152
    :try_start_16
    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-object v0

    .line 153
    :catch_1d
    move-exception v1

    .line 154
    sget-object v1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve string resource id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_3a

    .line 156
    :cond_37
    if-eqz v1, :cond_3a

    .line 157
    return-object v1

    .line 160
    :cond_3a
    :goto_3a
    const v0, 0x104017b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 13

    .line 304
    packed-switch p2, :pswitch_data_106

    move-object v1, p0

    goto/16 :goto_f9

    .line 306
    :pswitch_6
    iget p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    packed-switch p1, :pswitch_data_10c

    .line 353
    move-object v1, p0

    sget-object p1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected action on neutral button: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, v1, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f9

    .line 316
    :pswitch_28
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 318
    :try_start_2c
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingUserId:I

    iget v9, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v9}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object p2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_47} :catch_d3

    if-eqz p1, :cond_6b

    .line 323
    :try_start_49
    sget-object p1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not unsuspend "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_63} :catch_66

    .line 324
    move-object v1, p0

    goto/16 :goto_f9

    .line 326
    :catch_66
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_d6

    .line 329
    :cond_6b
    nop

    .line 330
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 331
    const-string p2, "android.intent.action.PACKAGE_UNSUSPENDED_MANUALLY"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    .line 332
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    .line 333
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 334
    const/high16 p2, 0x1000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 335
    iget p2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingUserId:I

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/SuspendedAppActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 337
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOnUnsuspend:Landroid/content/IntentSender;

    if-eqz p1, :cond_d1

    .line 339
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 340
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 345
    :try_start_a5
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOnUnsuspend:Landroid/content/IntentSender;
    :try_end_a7
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_a5 .. :try_end_a7} :catch_b3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    :try_start_ad
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_b0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 349
    goto :goto_d0

    .line 347
    :catch_b1
    move-exception v0

    goto :goto_b5

    :catch_b3
    move-exception v0

    move-object v1, p0

    :goto_b5
    move-object p1, v0

    .line 348
    sget-object p2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while starting intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/app/SuspendedAppActivity;->mOnUnsuspend:Landroid/content/IntentSender;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    :goto_d0
    goto :goto_f9

    .line 337
    :cond_d1
    move-object v1, p0

    goto :goto_f9

    .line 326
    :catch_d3
    move-exception v0

    move-object v1, p0

    move-object p1, v0

    .line 327
    :goto_d6
    sget-object p2, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t talk to system process"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    goto :goto_f9

    .line 308
    :pswitch_de
    move-object v1, p0

    iget-object p1, v1, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    if-eqz p1, :cond_f1

    .line 309
    iget-object p1, v1, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    iget-object p2, v1, Lcom/android/internal/app/SuspendedAppActivity;->mOptions:Landroid/os/Bundle;

    iget v0, v1, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingUserId:I

    .line 310
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 309
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/SuspendedAppActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_f9

    .line 312
    :cond_f1
    sget-object p1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    const-string p2, "Neutral button should not have existed!"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    nop

    .line 358
    :goto_f9
    iget-object p1, v1, Lcom/android/internal/app/SuspendedAppActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-object p2, v1, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    iget v0, v1, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {p1, p2, v0}, Landroid/app/usage/UsageStatsManager;->reportUserInteraction(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    .line 360
    return-void

    :pswitch_data_106
    .packed-switch -0x3
        :pswitch_6
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_de
        :pswitch_28
    .end packed-switch
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 222
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 224
    const-class p1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuspendedAppActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 228
    const-string v0, "com.android.internal.app.extra.ACTIVITY_OPTIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOptions:Landroid/os/Bundle;

    .line 229
    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    .line 230
    iget v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    if-gez v0, :cond_53

    .line 231
    sget-object p1, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    .line 233
    return-void

    .line 235
    :cond_53
    const-string v0, "com.android.internal.app.extra.SUSPENDED_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendedPackage:Ljava/lang/String;

    .line 236
    const-string v0, "com.android.internal.app.extra.SUSPENDING_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 238
    const-string v0, "com.android.internal.app.extra.SUSPENDING_USER"

    iget v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingUserId:I

    goto :goto_78

    .line 240
    :cond_74
    iget v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    iput v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingUserId:I

    .line 242
    :goto_78
    const-string v0, "com.android.internal.app.extra.DIALOG_INFO"

    const-class v1, Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SuspendDialogInfo;

    iput-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 243
    const-string v0, "com.android.internal.app.extra.UNSUSPEND_INTENT"

    const-class v1, Landroid/content/IntentSender;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentSender;

    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mOnUnsuspend:Landroid/content/IntentSender;

    .line 244
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_c8

    .line 246
    :try_start_95
    iget p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingUserId:I

    .line 247
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/SuspendedAppActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingAppResources:Landroid/content/res/Resources;
    :try_end_ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_ab} :catch_ac

    .line 251
    goto :goto_c8

    .line 249
    :catch_ac
    move-exception v0

    move-object p1, v0

    .line 250
    sget-object v0, Lcom/android/internal/app/SuspendedAppActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_c8
    :goto_c8
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    if-eqz p1, :cond_d3

    .line 254
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuppliedDialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {p1}, Landroid/content/pm/SuspendDialogInfo;->getNeutralButtonAction()I

    move-result v1

    goto :goto_d4

    :cond_d3
    nop

    :goto_d4
    iput v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    .line 255
    iget p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mNeutralButtonAction:I

    if-nez p1, :cond_df

    .line 256
    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getMoreDetailsActivity()Landroid/content/Intent;

    move-result-object p1

    goto :goto_e0

    :cond_df
    const/4 p1, 0x0

    :goto_e0
    iput-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    .line 258
    iget-object p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 259
    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 261
    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveDialogMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 262
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 263
    invoke-direct {p0}, Lcom/android/internal/app/SuspendedAppActivity;->resolveNeutralButtonText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 264
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 266
    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/internal/app/SuspendedAppActivity;->requestDismissKeyguardIfNeeded(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->setupAlert()V

    .line 270
    new-instance v4, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    invoke-direct {v4, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendModifiedReceiver:Landroid/content/BroadcastReceiver;

    iget p1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/SuspendedAppActivity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 274
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 2

    .line 278
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mSuspendModifiedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SuspendedAppActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    return-void
.end method
