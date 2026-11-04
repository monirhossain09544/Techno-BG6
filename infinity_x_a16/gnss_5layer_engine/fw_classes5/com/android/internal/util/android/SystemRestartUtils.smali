.class public Lcom/android/internal/util/android/SystemRestartUtils;
.super Ljava/lang/Object;
.source "SystemRestartUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/android/SystemRestartUtils$PowerOffSystemTask;,
        Lcom/android/internal/util/android/SystemRestartUtils$RestartSystemTask;,
        Lcom/android/internal/util/android/SystemRestartUtils$RestartTask;
    }
.end annotation


# static fields
.field private static final blacklist RESTART_TIMEOUT:I = 0x3e8


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$showRestartDialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 120
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 121
    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method

.method static synthetic blacklist lambda$showSettingsRestartDialog$3(Landroid/content/Context;)V
    .registers 2

    .line 163
    const-string v0, "com.android.settings"

    invoke-static {p0, v0}, Lcom/android/internal/util/android/SystemRestartUtils;->restartProcess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$showSystemRestartDialog$0(Landroid/content/Context;)V
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/android/internal/util/android/SystemRestartUtils;->restartSystem(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic blacklist lambda$showSystemRestartDialog$1(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 46
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 47
    new-instance p2, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method

.method static synthetic blacklist lambda$showSystemUIRestartDialog$4(Landroid/content/Context;)V
    .registers 2

    .line 167
    const-string v0, "com.android.systemui"

    invoke-static {p0, v0}, Lcom/android/internal/util/android/SystemRestartUtils;->restartProcess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist powerOffSystem(Landroid/content/Context;)V
    .registers 2

    .line 54
    new-instance v0, Lcom/android/internal/util/android/SystemRestartUtils$PowerOffSystemTask;

    invoke-direct {v0, p0}, Lcom/android/internal/util/android/SystemRestartUtils$PowerOffSystemTask;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/internal/util/android/SystemRestartUtils$PowerOffSystemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method public static blacklist restartProcess(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 128
    new-instance v0, Lcom/android/internal/util/android/SystemRestartUtils$RestartTask;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/util/android/SystemRestartUtils$RestartTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/internal/util/android/SystemRestartUtils$RestartTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method

.method public static blacklist restartSystem(Landroid/content/Context;)V
    .registers 2

    .line 85
    new-instance v0, Lcom/android/internal/util/android/SystemRestartUtils$RestartSystemTask;

    invoke-direct {v0, p0}, Lcom/android/internal/util/android/SystemRestartUtils$RestartSystemTask;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/internal/util/android/SystemRestartUtils$RestartSystemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method private static blacklist showRestartDialog(Landroid/content/Context;IILjava/lang/Runnable;)V
    .registers 5

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 118
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    .line 119
    const p2, 0x104000a

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 123
    const/high16 p1, 0x1040000

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 125
    return-void
.end method

.method public static blacklist showSettingsRestartDialog(Landroid/content/Context;)V
    .registers 4

    .line 163
    new-instance v0, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const v1, 0x10409f3

    const v2, 0x10409f2

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/android/SystemRestartUtils;->showRestartDialog(Landroid/content/Context;IILjava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public static blacklist showSystemRestartDialog(Landroid/content/Context;)V
    .registers 3

    .line 42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    const v1, 0x1040a7b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    const v1, 0x1040a7a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    .line 45
    const p0, 0x104000a

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 49
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 51
    return-void
.end method

.method public static blacklist showSystemUIRestartDialog(Landroid/content/Context;)V
    .registers 4

    .line 167
    new-instance v0, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/util/android/SystemRestartUtils$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const v1, 0x1040a7e

    const v2, 0x1040a7d

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/android/SystemRestartUtils;->showRestartDialog(Landroid/content/Context;IILjava/lang/Runnable;)V

    .line 168
    return-void
.end method
