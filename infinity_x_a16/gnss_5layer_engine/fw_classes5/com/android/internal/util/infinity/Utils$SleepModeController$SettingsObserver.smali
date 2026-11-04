.class Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/infinity/Utils$SleepModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/infinity/Utils$SleepModeController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    .line 494
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 495
    return-void
.end method


# virtual methods
.method blacklist observe()V
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$fgetmContext(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleep_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->update()V

    .line 502
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 506
    invoke-virtual {p0}, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->update()V

    .line 507
    return-void
.end method

.method blacklist update()V
    .registers 5

    .line 510
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v0}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$fgetmContext(Lcom/android/internal/util/infinity/Utils$SleepModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "sleep_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move v3, v1

    .line 512
    :cond_16
    iget-object v0, p0, Lcom/android/internal/util/infinity/Utils$SleepModeController$SettingsObserver;->this$0:Lcom/android/internal/util/infinity/Utils$SleepModeController;

    invoke-static {v0, v3}, Lcom/android/internal/util/infinity/Utils$SleepModeController;->-$$Nest$msetSleepMode(Lcom/android/internal/util/infinity/Utils$SleepModeController;Z)V

    .line 513
    return-void
.end method
