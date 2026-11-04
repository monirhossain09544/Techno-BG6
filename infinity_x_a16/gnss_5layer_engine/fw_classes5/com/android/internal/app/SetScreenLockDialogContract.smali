.class public final Lcom/android/internal/app/SetScreenLockDialogContract;
.super Ljava/lang/Object;
.source "SetScreenLockDialogContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SetScreenLockDialogContract$LaunchReason;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_LAUNCH_REASON:Ljava/lang/String; = "launch_reason"

.field public static final blacklist EXTRA_ORIGIN_USER_ID:Ljava/lang/String; = "origin_user_id"

.field public static final blacklist LAUNCH_REASON_DISABLE_QUIET_MODE:I = 0x1

.field public static final blacklist LAUNCH_REASON_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x2

.field public static final blacklist LAUNCH_REASON_RESET_PRIVATE_SPACE_SETTINGS_ACCESS:I = 0x3

.field public static final blacklist LAUNCH_REASON_UNKNOWN:I = -0x1

.field private static final blacklist SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final blacklist SET_SCREEN_LOCK_PROMPT_ACTION:Ljava/lang/String; = "com.android.internal.app.ScreenLockDialogContract.SET_SCREEN_LOCK_PROMPT_ACTION"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createDialogIntent(I)Landroid/content/Intent;
    .registers 3

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.app.ScreenLockDialogContract.SET_SCREEN_LOCK_PROMPT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const-string v1, "launch_reason"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method public static blacklist createUserSpecificDialogIntent(II)Landroid/content/Intent;
    .registers 3

    .line 81
    invoke-static {p0}, Lcom/android/internal/app/SetScreenLockDialogContract;->createDialogIntent(I)Landroid/content/Intent;

    move-result-object p0

    .line 82
    const-string v0, "origin_user_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    return-object p0
.end method
