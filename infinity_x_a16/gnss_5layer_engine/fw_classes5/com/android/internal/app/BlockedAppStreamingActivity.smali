.class public Lcom/android/internal/app/BlockedAppStreamingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BlockedAppStreamingActivity.java"


# static fields
.field private static final blacklist BLOCKED_COMPONENT_PLAYSTORE:Ljava/lang/String; = "com.android.vending"

.field private static final blacklist BLOCKED_COMPONENT_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final blacklist EXTRA_BLOCKED_ACTIVITY_INFO:Ljava/lang/String; = "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

.field private static final blacklist EXTRA_STREAMED_DEVICE:Ljava/lang/String; = "com.android.internal.app.extra.STREAMED_DEVICE"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final blacklist TAG:Ljava/lang/String; = "BlockedAppStreamingActivity"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 5

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    const-string v1, "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 99
    const-string v0, "com.android.internal.app.extra.STREAMED_DEVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 96
    return-object p0
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 47
    nop

    .line 48
    const-string v0, "com.android.internal.app.extra.BLOCKED_ACTIVITY_INFO"

    const-class v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 49
    if-eqz v0, :cond_1d

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1e

    .line 49
    :cond_1d
    const/4 v1, 0x0

    .line 53
    :goto_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid activity info: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlockedAppStreamingActivity"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->finish()V

    .line 56
    return-void

    .line 59
    :cond_40
    const-string v2, "com.android.internal.app.extra.STREAMED_DEVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 61
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 63
    iget-object p1, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 64
    const v0, 0x1040176

    invoke-virtual {p0, v0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 65
    iget-object p1, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 66
    const v0, 0x1040170

    invoke-virtual {p0, v0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_d9

    .line 67
    :cond_73
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.vending"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x104016e

    if-eqz v1, :cond_98

    .line 68
    iget-object v0, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 69
    const v1, 0x1040177

    invoke-virtual {p0, v1}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    iget-object v0, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 71
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_d9

    .line 72
    :cond_98
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 73
    iget-object v0, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 74
    const v1, 0x1040178

    invoke-virtual {p0, v1}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 75
    iget-object v0, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 76
    const v1, 0x1040171

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_d9

    .line 80
    :cond_bd
    iget-object v0, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 81
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_d9

    .line 85
    :cond_ca
    iget-object p1, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x104015f

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 87
    :goto_d9
    iget-object p1, p0, Lcom/android/internal/app/BlockedAppStreamingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->setupAlert()V

    .line 89
    return-void
.end method
