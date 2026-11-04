.class public Lcom/android/internal/app/BlockedAppActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BlockedAppActivity.java"


# static fields
.field private static final blacklist EXTRA_BLOCKED_PACKAGE:Ljava/lang/String; = "com.android.internal.app.extra.BLOCKED_PACKAGE"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final blacklist TAG:Ljava/lang/String; = "BlockedAppActivity"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    const-class v1, Lcom/android/internal/app/BlockedAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 84
    const-string v0, "com.android.internal.app.extra.BLOCKED_PACKAGE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 81
    return-object p0
.end method

.method private blacklist getAppLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 5

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 69
    nop

    .line 70
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p1

    .line 72
    :catch_f
    move-exception p1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockedAppActivity"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    return-object p2
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 44
    const-string v0, "android.intent.extra.USER_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    const-string v1, "BlockedAppActivity"

    if-gez v0, :cond_2c

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->finish()V

    .line 48
    return-void

    .line 51
    :cond_2c
    const-string v2, "com.android.internal.app.extra.BLOCKED_PACKAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->finish()V

    .line 55
    return-void

    .line 58
    :cond_52
    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/BlockedAppActivity;->getAppLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/android/internal/app/BlockedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1040160

    invoke-virtual {p0, v1}, Lcom/android/internal/app/BlockedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p0, Lcom/android/internal/app/BlockedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x104015f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/BlockedAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 62
    iget-object p1, p0, Lcom/android/internal/app/BlockedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/BlockedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->setupAlert()V

    .line 64
    return-void
.end method
