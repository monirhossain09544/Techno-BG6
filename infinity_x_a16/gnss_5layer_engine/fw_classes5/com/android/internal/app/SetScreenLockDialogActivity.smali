.class public Lcom/android/internal/app/SetScreenLockDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SetScreenLockDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SetScreenLockDialogActivity$LaunchReason;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_LAUNCH_REASON:Ljava/lang/String; = "launch_reason"

.field public static final blacklist EXTRA_ORIGIN_USER_ID:Ljava/lang/String; = "origin_user_id"

.field public static final blacklist LAUNCH_REASON_DISABLE_QUIET_MODE:I = 0x1

.field public static final blacklist LAUNCH_REASON_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x2

.field public static final blacklist LAUNCH_REASON_RESET_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x3

.field public static final blacklist LAUNCH_REASON_UNKNOWN:I = -0x1

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final blacklist TAG:Ljava/lang/String; = "SetScreenLockDialog"


# instance fields
.field private blacklist mOriginUserId:I

.field private blacklist mReason:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createBaseIntent(I)Landroid/content/Intent;
    .registers 5

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    new-instance v1, Landroid/content/ComponentName;

    .line 161
    const-class v2, Lcom/android/internal/app/SetScreenLockDialogActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    const-string v1, "launch_reason"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    return-object v0
.end method

.method private blacklist setLaunchUserSpecificMessage(Landroid/app/AlertDialog$Builder;)V
    .registers 5

    .line 139
    iget v0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const/4 v1, 0x2

    const v2, 0x104091d

    if-ne v0, v1, :cond_c

    .line 141
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 142
    return-void

    .line 143
    :cond_c
    iget v0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 144
    const v0, 0x104091c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 145
    return-void

    .line 148
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 149
    if-eqz v0, :cond_37

    .line 150
    iget v1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mOriginUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 152
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 155
    :cond_37
    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 125
    const/4 p1, -0x1

    if-ne p2, p1, :cond_16

    .line 126
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.BIOMETRIC_ENROLL"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    const-string p2, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const v0, 0x8000

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    goto :goto_19

    .line 130
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 132
    :goto_19
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 78
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 80
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_b7

    .line 84
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 85
    const-string v0, "launch_reason"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    .line 86
    const-string v0, "origin_user_id"

    const/16 v2, -0x2710

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mOriginUserId:I

    .line 88
    iget p1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    const-string v0, "SetScreenLockDialog"

    if-ne p1, v1, :cond_4a

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid launch reason: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 91
    return-void

    .line 94
    :cond_4a
    const-class p1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 95
    if-nez p1, :cond_5a

    .line 96
    const-string p1, "Error fetching keyguard manager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_5a
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 100
    const-string p1, "Closing the activity since screen lock is already set"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 104
    :cond_66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching screen lock setup dialog due to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/android/internal/app/SetScreenLockDialogActivity;->mReason:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    const v0, 0x10409f1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    const v2, 0x10409f0

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 109
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->setLaunchUserSpecificMessage(Landroid/app/AlertDialog$Builder;)V

    .line 111
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 116
    return-void

    .line 81
    :cond_b7
    :goto_b7
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 82
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/app/SetScreenLockDialogActivity;->finish()V

    .line 121
    return-void
.end method
