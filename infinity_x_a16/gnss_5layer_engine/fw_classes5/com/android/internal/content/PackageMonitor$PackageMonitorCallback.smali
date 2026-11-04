.class final Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;
.super Landroid/os/IRemoteCallback$Stub;
.source "PackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageMonitorCallback"
.end annotation


# instance fields
.field private final blacklist mMonitorWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/content/PackageMonitor;)V
    .registers 3

    .line 601
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 602
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->mMonitorWeakReference:Ljava/lang/ref/WeakReference;

    .line 603
    return-void
.end method

.method private blacklist onHandlePackageMonitorCallback(Landroid/os/Bundle;)V
    .registers 4

    .line 611
    const-string v0, "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 613
    if-nez p1, :cond_14

    .line 614
    const-string p1, "PackageMonitor"

    const-string v0, "No intent is set for PackageMonitorCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void

    .line 617
    :cond_14
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->mMonitorWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    .line 618
    if-eqz v0, :cond_21

    .line 619
    invoke-static {v0, p1}, Lcom/android/internal/content/PackageMonitor;->-$$Nest$mpostHandlePackageEvent(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    .line 621
    :cond_21
    return-void
.end method


# virtual methods
.method public blacklist sendResult(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;->onHandlePackageMonitorCallback(Landroid/os/Bundle;)V

    .line 608
    return-void
.end method
