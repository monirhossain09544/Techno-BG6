.class public Landroid/os/storage/StorageEventListener;
.super Ljava/lang/Object;
.source "StorageEventListener.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public greylist-max-r onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .registers 2

    .line 69
    return-void
.end method

.method public greylist-max-r onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .registers 3

    .line 65
    return-void
.end method

.method public greylist onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 49
    return-void
.end method

.method public greylist onUsbMassStorageConnectionChanged(Z)V
    .registers 2

    .line 39
    return-void
.end method

.method public greylist-max-r onVolumeForgotten(Ljava/lang/String;)V
    .registers 2

    .line 61
    return-void
.end method

.method public greylist-max-r onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .registers 2

    .line 57
    return-void
.end method

.method public greylist-max-r onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .registers 4

    .line 53
    return-void
.end method
