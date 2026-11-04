.class Lcom/android/internal/util/android/SystemRestartUtils$RestartSystemTask;
.super Landroid/os/AsyncTask;
.source "SystemRestartUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/android/SystemRestartUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestartSystemTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/util/android/SystemRestartUtils$RestartSystemTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 93
    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 88
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/android/SystemRestartUtils$RestartSystemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .line 98
    const/4 p1, 0x0

    :try_start_1
    const-string v0, "statusbar"

    .line 99
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1c

    .line 100
    if-eqz v0, :cond_1b

    .line 102
    const-wide/16 v1, 0x3e8

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 103
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->reboot(ZLjava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_1c

    .line 106
    goto :goto_1b

    .line 104
    :catch_17
    move-exception v0

    .line 105
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 110
    :cond_1b
    :goto_1b
    goto :goto_20

    .line 108
    :catch_1c
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :goto_20
    return-object p1
.end method
