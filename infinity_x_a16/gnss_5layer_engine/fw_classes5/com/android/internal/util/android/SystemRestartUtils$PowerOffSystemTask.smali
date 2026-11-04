.class Lcom/android/internal/util/android/SystemRestartUtils$PowerOffSystemTask;
.super Landroid/os/AsyncTask;
.source "SystemRestartUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/android/SystemRestartUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PowerOffSystemTask"
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

    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/util/android/SystemRestartUtils$PowerOffSystemTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 62
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

    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/android/SystemRestartUtils$PowerOffSystemTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    .line 67
    :try_start_0
    const-string p1, "statusbar"

    .line 68
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1a

    .line 69
    if-eqz p1, :cond_19

    .line 71
    const-wide/16 v0, 0x3e8

    :try_start_e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 72
    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->shutdown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_1a

    .line 75
    goto :goto_19

    .line 73
    :catch_15
    move-exception p1

    .line 74
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    .line 79
    :cond_19
    :goto_19
    goto :goto_1e

    .line 77
    :catch_1a
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_1e
    const/4 p1, 0x0

    return-object p1
.end method
