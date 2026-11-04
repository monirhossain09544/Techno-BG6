.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "MtpDevice.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final greylist-max-o mDevice:Landroid/hardware/usb/UsbDevice;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnative_discard_event_request(Landroid/mtp/MtpDevice;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_discard_event_request(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    nop

    .line 52
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 68
    return-void
.end method

.method private native greylist-max-o native_close()V
.end method

.method private native greylist-max-o native_delete_object(I)Z
.end method

.method private native greylist-max-o native_discard_event_request(I)V
.end method

.method private native greylist-max-o native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native greylist-max-o native_get_object(IJ)[B
.end method

.method private native greylist-max-o native_get_object_handles(III)[I
.end method

.method private native greylist-max-o native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native greylist-max-o native_get_object_size_long(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_get_parent(I)I
.end method

.method private native greylist-max-o native_get_partial_object(IJJ[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_get_partial_object_64(IJJ[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_get_storage_id(I)I
.end method

.method private native greylist-max-o native_get_storage_ids()[I
.end method

.method private native greylist-max-o native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native greylist-max-o native_get_thumbnail(I)[B
.end method

.method private native greylist-max-o native_import_file(II)Z
.end method

.method private native greylist-max-o native_import_file(ILjava/lang/String;)Z
.end method

.method private native greylist-max-o native_open(Ljava/lang/String;I)Z
.end method

.method private native greylist-max-o native_reap_event_request(I)Landroid/mtp/MtpEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o native_send_object(IJI)Z
.end method

.method private native greylist-max-o native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
.end method

.method private native blacklist native_set_device_property_init_version(Ljava/lang/String;)I
.end method

.method private native greylist-max-o native_submit_event_request()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist close()V
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v1, :cond_17

    .line 113
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 115
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    .line 117
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 120
    :cond_17
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist deleteObject(I)Z
    .registers 2

    .line 306
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    move-result p1

    return p1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 130
    :cond_9
    invoke-virtual {p0}, Landroid/mtp/MtpDevice;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 132
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 133
    throw v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getObject(II)[B
    .registers 5

    .line 220
    const-string/jumbo v0, "objectSize should not be negative"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 221
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Landroid/mtp/MtpDevice;->native_get_object(IJ)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist getObjectHandles(III)[I
    .registers 4

    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    move-result-object p1

    return-object p1
.end method

.method public whitelist getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .registers 2

    .line 294
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getObjectSizeLong(II)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object_size_long(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getParent(I)J
    .registers 4

    .line 316
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getPartialObject(IJJ[B)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object(IJJ[B)J

    move-result-wide p1

    return-wide p1
.end method

.method public whitelist getPartialObject64(IJJ[B)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object_64(IJJ[B)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public whitelist getStorageId(I)J
    .registers 4

    .line 326
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getStorageIds()[I
    .registers 2

    .line 191
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .registers 2

    .line 284
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getThumbnail(I)[B
    .registers 2

    .line 274
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist importFile(ILandroid/os/ParcelFileDescriptor;)Z
    .registers 3

    .line 355
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(II)Z

    move-result p1

    return p1
.end method

.method public whitelist importFile(ILjava/lang/String;)Z
    .registers 3

    .line 341
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .registers 5

    .line 80
    nop

    .line 82
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    if-eqz v0, :cond_2d

    .line 86
    :try_start_a
    const-string/jumbo v2, "user"

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 89
    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 90
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_2e

    .line 100
    :catchall_2b
    move-exception p1

    goto :goto_3f

    .line 94
    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    if-nez v0, :cond_34

    .line 95
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_3d

    .line 97
    :cond_34
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 98
    iget-object p1, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 100
    :goto_3d
    monitor-exit v1

    .line 102
    return v0

    .line 100
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_2b

    throw p1
.end method

.method public whitelist readEvent(Landroid/os/CancellationSignal;)Landroid/mtp/MtpEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_submit_event_request()I

    move-result v0

    .line 397
    if-ltz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "Other thread is reading an event."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 399
    if-eqz p1, :cond_18

    .line 400
    new-instance v1, Landroid/mtp/MtpDevice$1;

    invoke-direct {v1, p0, v0}, Landroid/mtp/MtpDevice$1;-><init>(Landroid/mtp/MtpDevice;I)V

    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 409
    :cond_18
    const/4 v1, 0x0

    :try_start_19
    invoke-direct {p0, v0}, Landroid/mtp/MtpDevice;->native_reap_event_request(I)Landroid/mtp/MtpEvent;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_23

    .line 411
    if-eqz p1, :cond_22

    .line 412
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 409
    :cond_22
    return-object v0

    .line 411
    :catchall_23
    move-exception v0

    if-eqz p1, :cond_29

    .line 412
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 414
    :cond_29
    throw v0
.end method

.method public whitelist sendObject(IJLandroid/os/ParcelFileDescriptor;)Z
    .registers 5

    .line 371
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/mtp/MtpDevice;->native_send_object(IJI)Z

    move-result p1

    return p1
.end method

.method public whitelist sendObjectInfo(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
    .registers 2

    .line 384
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDevicePropertyInitVersion(Ljava/lang/String;)I
    .registers 2

    .line 181
    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_set_device_property_init_version(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
