.class Landroid/os/storage/StorageManager$1;
.super Landroid/app/PropertyInvalidatedCache$QueryHandler;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
        "Landroid/os/storage/StorageManager$VolumeListQuery;",
        "[",
        "Landroid/os/storage/StorageVolume;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 317
    check-cast p1, Landroid/os/storage/StorageManager$VolumeListQuery;

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager$1;->apply(Landroid/os/storage/StorageManager$VolumeListQuery;)[Landroid/os/storage/StorageVolume;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/os/storage/StorageManager$VolumeListQuery;)[Landroid/os/storage/StorageVolume;
    .registers 5

    .line 321
    nop

    .line 322
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 323
    if-nez v0, :cond_f

    .line 325
    const/4 p1, 0x0

    return-object p1

    .line 328
    :cond_f
    :try_start_f
    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmUserId(Landroid/os/storage/StorageManager$VolumeListQuery;)I

    move-result v1

    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmPackageName(Landroid/os/storage/StorageManager$VolumeListQuery;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/os/storage/StorageManager$VolumeListQuery;->-$$Nest$fgetmFlags(Landroid/os/storage/StorageManager$VolumeListQuery;)I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_20

    return-object p1

    .line 330
    :catch_20
    move-exception p1

    .line 331
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
