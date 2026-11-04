.class public Lcom/android/internal/app/ShutdownActivity;
.super Landroid/app/Activity;
.source "ShutdownActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ShutdownActivity"


# instance fields
.field private blacklist mConfirm:Z

.field private blacklist mReboot:Z

.field private blacklist mUserRequested:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfirm(Lcom/android/internal/app/ShutdownActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReboot(Lcom/android/internal/app/ShutdownActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 41
    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mReboot:Z

    .line 42
    const-string v0, "android.intent.extra.KEY_CONFIRM"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    .line 43
    const-string v0, "android.intent.extra.USER_REQUESTED_SHUTDOWN"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mUserRequested:Z

    .line 44
    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownActivity;->mUserRequested:Z

    if-eqz v0, :cond_2b

    .line 45
    const-string p1, "userrequested"

    goto :goto_31

    .line 46
    :cond_2b
    const-string v0, "android.intent.extra.REASON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): confirm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownActivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/android/internal/app/ShutdownActivity$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/ShutdownActivity$1;-><init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownActivity;->finish()V

    .line 68
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 70
    goto :goto_5b

    .line 69
    :catch_5a
    move-exception p1

    .line 71
    :goto_5b
    return-void
.end method
