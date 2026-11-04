.class Landroid/os/SystemClock$4;
.super Landroid/os/SimpleClock;
.source "SystemClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SystemClock;->currentGnssTimeClock()Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mMgr:Landroid/location/ILocationManager;


# direct methods
.method constructor blacklist <init>(Ljava/time/ZoneId;)V
    .registers 2

    .line 378
    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    .line 379
    nop

    .line 380
    const-string p1, "location"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object p1

    iput-object p1, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    .line 379
    return-void
.end method


# virtual methods
.method public whitelist test-api millis()J
    .registers 6

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_24

    .line 388
    nop

    .line 389
    if-eqz v0, :cond_1c

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 393
    invoke-virtual {v0}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 394
    invoke-virtual {v0}, Landroid/location/LocationTime;->getUnixEpochTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3

    .line 390
    :cond_1c
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Gnss based time is not available."

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :catch_24
    move-exception v0

    .line 387
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
