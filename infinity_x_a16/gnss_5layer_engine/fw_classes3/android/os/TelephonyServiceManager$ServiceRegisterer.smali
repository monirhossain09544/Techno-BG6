.class public final Landroid/os/TelephonyServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "TelephonyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TelephonyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceRegisterer"
.end annotation


# instance fields
.field private final blacklist mServiceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist get()Landroid/os/IBinder;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOrThrow()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TelephonyServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 106
    :catch_7
    move-exception v0

    .line 107
    new-instance v0, Landroid/os/TelephonyServiceManager$ServiceNotFoundException;

    iget-object v1, p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/TelephonyServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist publishBinderService(Landroid/os/IBinder;)V
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 79
    return-void
.end method

.method public blacklist register(Landroid/os/IBinder;)V
    .registers 3

    .line 69
    iget-object v0, p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    return-void
.end method

.method public blacklist tryGet()Landroid/os/IBinder;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
