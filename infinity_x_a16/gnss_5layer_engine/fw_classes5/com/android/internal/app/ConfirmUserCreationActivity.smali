.class public Lcom/android/internal/app/ConfirmUserCreationActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmUserCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CreateUser"

.field private static final blacklist USER_TYPE:Ljava/lang/String; = "android.os.usertype.full.SECONDARY"


# instance fields
.field private blacklist mAccountName:Ljava/lang/String;

.field private blacklist mAccountOptions:Landroid/os/PersistableBundle;

.field private blacklist mAccountType:Ljava/lang/String;

.field private blacklist mCanProceed:Z

.field private blacklist mIsFirstClick:Z

.field private blacklist mUserManager:Landroid/os/UserManager;

.field private blacklist mUserName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private blacklist checkUserCreationRequirements()Ljava/lang/String;
    .registers 10

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_d1

    .line 98
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_f} :catch_c8

    .line 102
    nop

    .line 105
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_add_user"

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 106
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_26

    :cond_24
    move v1, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v1, v3

    .line 108
    :goto_27
    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string v5, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    move-result v4

    .line 110
    new-instance v5, Landroid/accounts/Account;

    iget-object v6, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v6, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    if-eqz v6, :cond_57

    iget-object v6, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    if-eqz v6, :cond_57

    .line 112
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 113
    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_57

    move v2, v3

    goto :goto_58

    :cond_57
    nop

    .line 114
    :goto_58
    iput-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    const/4 v5, 0x0

    if-eqz v1, :cond_6d

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 118
    return-object v5

    .line 119
    :cond_6d
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    const/16 v6, 0x64

    invoke-direct {p0, v1, v6}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 120
    const/16 v6, 0x1f4

    invoke-direct {p0, v1, v6}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 121
    invoke-direct {p0, v1, v6}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 122
    const/16 v6, 0x3e8

    invoke-virtual {v1, v6}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result v1

    if-nez v1, :cond_98

    goto :goto_bd

    .line 127
    :cond_98
    if-nez v4, :cond_9f

    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 129
    return-object v5

    .line 130
    :cond_9f
    if-eqz v2, :cond_af

    .line 131
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x1040ad4

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_bc

    .line 133
    :cond_af
    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x1040ad5

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_bc
    return-object v0

    .line 124
    :cond_bd
    :goto_bd
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 125
    const-string v0, "CreateUser"

    const-string v1, "User properties must not exceed their character limits"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-object v5

    .line 99
    :catch_c8
    move-exception v0

    .line 100
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot find the calling package"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_d1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User Creation intent must be launched with startActivityForResult"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isUserPropertyWithinLimit(Ljava/lang/String;I)Z
    .registers 3

    .line 157
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 140
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 141
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3d

    iget-boolean p2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz p2, :cond_3d

    iget-boolean p2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mIsFirstClick:Z

    if-eqz p2, :cond_3d

    .line 142
    iput-boolean p1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mIsFirstClick:Z

    .line 143
    const-string p2, "Ok, creating user"

    const-string v1, "CreateUser"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    const-string v3, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p2, v2, v3, p1}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 145
    if-nez p1, :cond_2d

    .line 146
    const-string p1, "Couldn\'t create user"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 148
    return-void

    .line 150
    :cond_2d
    iget-object p2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p2, p1, v1, v2, v3}, Landroid/os/UserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 153
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 154
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 62
    const-string v0, "android.os.extra.USER_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    .line 63
    const-string v0, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 64
    const-string v0, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 65
    const-class v0, Landroid/os/PersistableBundle;

    .line 66
    const-string v1, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    iput-object p1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 68
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->checkUserCreationRequirements()Ljava/lang/String;

    move-result-object p1

    .line 72
    if-nez p1, :cond_48

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 74
    return-void

    .line 76
    :cond_48
    iget-object v0, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 77
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 78
    const p1, 0x104000a

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    iget-boolean p1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz p1, :cond_65

    .line 83
    const/high16 p1, 0x1040000

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 84
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    :cond_65
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mIsFirstClick:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setupAlert()V

    .line 88
    return-void
.end method
