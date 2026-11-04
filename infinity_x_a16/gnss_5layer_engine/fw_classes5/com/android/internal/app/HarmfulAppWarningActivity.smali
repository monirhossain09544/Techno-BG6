.class public Lcom/android/internal/app/HarmfulAppWarningActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HarmfulAppWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist EXTRA_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful_app_warning"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHarmfulAppWarning:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mTarget:Landroid/content/IntentSender;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/android/internal/app/HarmfulAppWarningActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 6

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    const-class v1, Lcom/android/internal/app/HarmfulAppWarningActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string p0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string p0, "android.intent.extra.INTENT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string p0, "harmful_app_warning"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 136
    return-object v0
.end method

.method private blacklist createView(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;
    .registers 7

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    const v1, 0x1020217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x5

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const p1, 0x102000b

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    .line 96
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    .line 102
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_5a

    goto :goto_58

    .line 104
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 105
    iget-object p1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/app/EventLogTags;->writeHarmfulAppWarningUninstall(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 107
    goto :goto_58

    .line 109
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/pm/PackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.INTENT"

    const-class v0, Landroid/content/IntentSender;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/IntentSender;

    .line 113
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 114
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 118
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    :try_start_43
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/HarmfulAppWarningActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_46
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_43 .. :try_end_46} :catch_47

    .line 122
    goto :goto_50

    .line 120
    :catch_47
    move-exception v0

    move-object p1, v0

    .line 121
    sget-object p2, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    const-string v0, "Error while starting intent sender"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :goto_50
    iget-object p1, v1, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/app/EventLogTags;->writeHarmfulAppWarningLaunchAnyway(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 127
    :goto_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch -0x2
        :pswitch_18
        :pswitch_5
    .end packed-switch
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 57
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    .line 58
    const-string v0, "android.intent.extra.INTENT"

    const-class v1, Landroid/content/IntentSender;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mTarget:Landroid/content/IntentSender;

    .line 59
    const-string v0, "harmful_app_warning"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mTarget:Landroid/content/IntentSender;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    if-nez v0, :cond_57

    .line 62
    :cond_38
    sget-object v0, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 68
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_57 .. :try_end_62} :catch_92

    .line 73
    nop

    .line 75
    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 76
    const v1, 0x10404ad

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createView(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 79
    const p1, 0x10404ae

    invoke-virtual {p0, p1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 80
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    const p1, 0x10404ac

    invoke-virtual {p0, p1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 82
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    iget-object p1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 85
    return-void

    .line 69
    :catch_92
    move-exception p1

    .line 70
    sget-object v0, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    const-string v1, "Could not show warning because package does not exist "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    .line 72
    return-void
.end method
