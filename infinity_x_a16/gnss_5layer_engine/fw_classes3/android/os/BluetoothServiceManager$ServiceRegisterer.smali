.class public final Landroid/os/BluetoothServiceManager$ServiceRegisterer;
.super Ljava/lang/Object;
.source "BluetoothServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BluetoothServiceManager;
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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist get()Landroid/os/IBinder;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOrThrow()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/BluetoothServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 83
    :catch_7
    move-exception v0

    .line 84
    new-instance v0, Landroid/os/BluetoothServiceManager$ServiceNotFoundException;

    iget-object v1, p0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/BluetoothServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist register(Landroid/os/IBinder;)V
    .registers 3

    .line 59
    iget-object v0, p0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    return-void
.end method

.method public blacklist tryGet()Landroid/os/IBinder;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/os/BluetoothServiceManager$ServiceRegisterer;->mServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
