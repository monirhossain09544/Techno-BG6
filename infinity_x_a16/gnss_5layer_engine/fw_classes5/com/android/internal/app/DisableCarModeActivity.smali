.class public Lcom/android/internal/app/DisableCarModeActivity;
.super Landroid/app/Activity;
.source "DisableCarModeActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DisableCarModeActivity"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    :try_start_3
    const-string p1, "uimode"

    .line 35
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object p1

    .line 36
    nop

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/app/DisableCarModeActivity;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 36
    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_16} :catch_17

    .line 41
    goto :goto_1f

    .line 39
    :catch_17
    move-exception p1

    .line 40
    const-string v0, "DisableCarModeActivity"

    const-string v1, "Failed to disable car mode"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :goto_1f
    invoke-virtual {p0}, Lcom/android/internal/app/DisableCarModeActivity;->finish()V

    .line 43
    return-void
.end method
