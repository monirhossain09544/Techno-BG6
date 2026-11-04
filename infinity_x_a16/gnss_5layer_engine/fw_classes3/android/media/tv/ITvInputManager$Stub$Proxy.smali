.class Landroid/media/tv/ITvInputManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputManager.java"

# interfaces
.implements Landroid/media/tv/ITvInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1441
    iput-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1442
    return-void
.end method


# virtual methods
.method public blacklist acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;ILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2414
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2418
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2420
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2421
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2422
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2423
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x38

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2427
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ITvInputHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_3e

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2432
    nop

    .line 2433
    return-object p1

    .line 2430
    :catchall_3e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2432
    throw p1
.end method

.method public greylist-max-o addBlockedRating(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1685
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1688
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1692
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1697
    nop

    .line 1698
    return-void

    .line 1695
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1697
    throw p1
.end method

.method public blacklist addHardwareDevice(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2584
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2587
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2589
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    nop

    .line 2596
    return-void

    .line 2593
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1445
    iget-object v0, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2474
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2478
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2480
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2481
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2482
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2483
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x3b

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2484
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2485
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 2488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2490
    nop

    .line 2491
    return p1

    .line 2488
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2490
    throw p1
.end method

.method public greylist-max-o createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1983
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1986
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1988
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1989
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1990
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1991
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x1f

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1992
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1997
    nop

    .line 1998
    return-void

    .line 1995
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1997
    throw p1
.end method

.method public blacklist createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/content/AttributionSource;ZII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1717
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1720
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1723
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1724
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1725
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x10

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    nop

    .line 1734
    return-void

    .line 1731
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    throw p1
.end method

.method public greylist-max-o dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1844
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1846
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1847
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1848
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 1854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    nop

    .line 1857
    return-void

    .line 1854
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    throw p1
.end method

.method public blacklist getAvailableExtensionInterfaceNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1525
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1529
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1539
    nop

    .line 1540
    return-object p1

    .line 1537
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1539
    throw p1
.end method

.method public greylist-max-o getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2455
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2459
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2462
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2464
    sget-object p1, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    nop

    .line 2470
    return-object p1

    .line 2467
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    throw p1
.end method

.method public greylist-max-o getBlockedRatings(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1671
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1675
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    nop

    .line 1681
    return-object p1

    .line 1678
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    throw p1
.end method

.method public blacklist getClientPid(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1757
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1759
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1760
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1761
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1764
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1766
    nop

    .line 1767
    return p1

    .line 1764
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1765
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1766
    throw p1
.end method

.method public blacklist getClientPriority(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1771
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1775
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1778
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1785
    nop

    .line 1786
    return p1

    .line 1783
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1785
    throw p1
.end method

.method public blacklist getClientUserId(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1794
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1796
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1797
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1798
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    nop

    .line 1804
    return p1

    .line 1801
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1803
    throw p1
.end method

.method public blacklist getCurrentTunedInfos(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2172
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2176
    sget-object p1, Landroid/media/tv/TunedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2181
    nop

    .line 2182
    return-object p1

    .line 2179
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2181
    throw p1
.end method

.method public greylist-max-o getDvbDeviceList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2514
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2518
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2519
    iget-object v2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2521
    sget-object v2, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2526
    nop

    .line 2527
    return-object v2

    .line 2524
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2526
    throw v2
.end method

.method public blacklist getExtensionInterface(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/IBinder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1544
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1548
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1559
    nop

    .line 1560
    return-object p1

    .line 1557
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1559
    throw p1
.end method

.method public greylist-max-o getHardwareList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2397
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2401
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2402
    iget-object v2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2404
    sget-object v2, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2409
    nop

    .line 2410
    return-object v2

    .line 2407
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2409
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1449
    const-string v0, "android.media.tv.ITvInputManager"

    return-object v0
.end method

.method public greylist-max-o getTvContentRatingSystemList(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1564
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1568
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1572
    sget-object p1, Landroid/media/tv/TvContentRatingSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    nop

    .line 1578
    return-object p1

    .line 1575
    :catchall_2c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    throw p1
.end method

.method public greylist-max-o getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1475
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1480
    sget-object p1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputInfo;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1485
    nop

    .line 1486
    return-object p1

    .line 1483
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1485
    throw p1
.end method

.method public greylist-max-o getTvInputList(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1457
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1459
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1461
    sget-object p1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    nop

    .line 1467
    return-object p1

    .line 1464
    :catchall_2c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    throw p1
.end method

.method public greylist-max-o getTvInputState(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1506
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1510
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1520
    nop

    .line 1521
    return p1

    .line 1518
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1520
    throw p1
.end method

.method public greylist-max-o isParentalControlsEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1614
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1618
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1622
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1627
    nop

    .line 1628
    return p1

    .line 1625
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1627
    throw p1
.end method

.method public greylist-max-o isRatingBlocked(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1648
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1652
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1662
    nop

    .line 1663
    return p1

    .line 1660
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1662
    throw p1
.end method

.method public greylist-max-o isSingleSessionActive(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2495
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2499
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2501
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2503
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2508
    nop

    .line 2509
    return p1

    .line 2506
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2508
    throw p1
.end method

.method public blacklist notifyAdBufferReady(Landroid/os/IBinder;Landroid/media/tv/AdBuffer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2345
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2347
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2348
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x34

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2355
    nop

    .line 2356
    return-void

    .line 2353
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2355
    throw p1
.end method

.method public blacklist notifyTvAdSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2632
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2635
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2638
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2639
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2640
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x44

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2641
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2644
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2646
    nop

    .line 2647
    return-void

    .line 2644
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2646
    throw p1
.end method

.method public blacklist notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2360
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2363
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2365
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2366
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2367
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2368
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x35

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2374
    nop

    .line 2375
    return-void

    .line 2372
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2374
    throw p1
.end method

.method public greylist-max-o openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2531
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2535
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2536
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2537
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2538
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3e

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2540
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 2543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2545
    nop

    .line 2546
    return-object p1

    .line 2543
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2545
    throw p1
.end method

.method public blacklist pauseRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2224
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2226
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x2d

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2234
    nop

    .line 2235
    return-void

    .line 2232
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2234
    throw p1
.end method

.method public greylist-max-o registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1585
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1587
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    nop

    .line 1595
    return-void

    .line 1592
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    throw p1
.end method

.method public greylist-max-o relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2001
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2004
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2006
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2007
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x20

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    nop

    .line 2015
    return-void

    .line 2012
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    throw p1
.end method

.method public greylist-max-o releaseSession(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1737
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1740
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    nop

    .line 1750
    return-void

    .line 1747
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1749
    throw p1
.end method

.method public greylist-max-o releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2437
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2440
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2442
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2443
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x39

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2450
    nop

    .line 2451
    return-void

    .line 2448
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2450
    throw p1
.end method

.method public greylist-max-o removeBlockedRating(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1704
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1708
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    nop

    .line 1714
    return-void

    .line 1711
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1713
    throw p1
.end method

.method public blacklist removeBroadcastInfo(Landroid/os/IBinder;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2307
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2310
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2312
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2313
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2314
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x32

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2320
    nop

    .line 2321
    return-void

    .line 2318
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2320
    throw p1
.end method

.method public blacklist removeHardwareDevice(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2599
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2602
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2604
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2610
    nop

    .line 2611
    return-void

    .line 2608
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2610
    throw p1
.end method

.method public greylist-max-o removeOverlayView(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2018
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2021
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2023
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x21

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    nop

    .line 2031
    return-void

    .line 2028
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    throw p1
.end method

.method public blacklist requestAd(Landroid/os/IBinder;Landroid/media/tv/AdRequest;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2325
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2328
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2330
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2331
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2332
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x33

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    nop

    .line 2339
    return-void

    .line 2336
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    throw p1
.end method

.method public blacklist requestBroadcastInfo(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoRequest;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2290
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2293
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2295
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2296
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2297
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x31

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2298
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2303
    nop

    .line 2304
    return-void

    .line 2301
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2303
    throw p1
.end method

.method public greylist-max-o requestChannelBrowsable(Landroid/net/Uri;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2567
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2570
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2571
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2572
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2573
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x40

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2579
    nop

    .line 2580
    return-void

    .line 2577
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2579
    throw p1
.end method

.method public blacklist resumePlayback(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2256
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2259
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2268
    nop

    .line 2269
    return-void

    .line 2266
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2268
    throw p1
.end method

.method public blacklist resumeRecording(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2238
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2241
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2243
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2244
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2245
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x2e

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2251
    nop

    .line 2252
    return-void

    .line 2249
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2251
    throw p1
.end method

.method public blacklist selectAudioPresentation(Landroid/os/IBinder;III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1930
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1933
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1c

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1939
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1944
    nop

    .line 1945
    return-void

    .line 1942
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1944
    throw p1
.end method

.method public greylist-max-o selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1912
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1915
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1917
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1918
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1920
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1926
    nop

    .line 1927
    return-void

    .line 1924
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1926
    throw p1
.end method

.method public greylist-max-o sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1965
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1968
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1970
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1971
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1972
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x1e

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1979
    nop

    .line 1980
    return-void

    .line 1977
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1979
    throw p1
.end method

.method public greylist-max-o sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2551
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2554
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2555
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2557
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3f

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2563
    nop

    .line 2564
    return-void

    .line 2561
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2563
    throw p1
.end method

.method public greylist-max-o setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1895
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1898
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1900
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1901
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1903
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1908
    nop

    .line 1909
    return-void

    .line 1906
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1908
    throw p1
.end method

.method public blacklist setInteractiveAppNotificationEnabled(Landroid/os/IBinder;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1948
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1951
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1953
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1954
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    nop

    .line 1962
    return-void

    .line 1959
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    throw p1
.end method

.method public greylist-max-o setMainSession(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1808
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1811
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x15

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    nop

    .line 1821
    return-void

    .line 1818
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    throw p1
.end method

.method public greylist-max-o setParentalControlsEnabled(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1632
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1635
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    nop

    .line 1645
    return-void

    .line 1642
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    throw p1
.end method

.method public greylist-max-o setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1827
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1829
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1830
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1831
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x16

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1832
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1837
    nop

    .line 1838
    return-void

    .line 1835
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1837
    throw p1
.end method

.method public blacklist setTvMessageEnabled(Landroid/os/IBinder;IZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2378
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2381
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2384
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2385
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2386
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x36

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2392
    nop

    .line 2393
    return-void

    .line 2390
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2392
    throw p1
.end method

.method public blacklist setVideoFrozen(Landroid/os/IBinder;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2615
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2618
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2620
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2621
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2622
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x43

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2623
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2628
    nop

    .line 2629
    return-void

    .line 2626
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2628
    throw p1
.end method

.method public greylist-max-o setVolume(Landroid/os/IBinder;FI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1860
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1863
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1865
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1866
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x18

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    nop

    .line 1874
    return-void

    .line 1871
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw p1
.end method

.method public blacklist startRecording(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2187
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2190
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2192
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2193
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2194
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2195
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x2b

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    nop

    .line 2202
    return-void

    .line 2199
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    throw p1
.end method

.method public blacklist stopPlayback(Landroid/os/IBinder;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2272
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2275
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x30

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    nop

    .line 2286
    return-void

    .line 2283
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    throw p1
.end method

.method public greylist-max-o stopRecording(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2205
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2208
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2217
    nop

    .line 2218
    return-void

    .line 2215
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2217
    throw p1
.end method

.method public greylist-max-o timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2151
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2154
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2156
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2157
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x29

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    nop

    .line 2165
    return-void

    .line 2162
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    throw p1
.end method

.method public greylist-max-o timeShiftPause(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2071
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2073
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x24

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2080
    nop

    .line 2081
    return-void

    .line 2078
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2080
    throw p1
.end method

.method public greylist-max-o timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2051
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2054
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2056
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2057
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2058
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x23

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2059
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    nop

    .line 2065
    return-void

    .line 2062
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    throw p1
.end method

.method public greylist-max-o timeShiftResume(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2084
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2087
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2089
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x25

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2096
    nop

    .line 2097
    return-void

    .line 2094
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2096
    throw p1
.end method

.method public greylist-max-o timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2100
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2103
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2105
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2106
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2107
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x26

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2113
    nop

    .line 2114
    return-void

    .line 2111
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2113
    throw p1
.end method

.method public blacklist timeShiftSetMode(Landroid/os/IBinder;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2137
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2139
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2140
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x28

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2142
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2147
    nop

    .line 2148
    return-void

    .line 2145
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2147
    throw p1
.end method

.method public greylist-max-o timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2117
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2120
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2122
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2123
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x27

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2130
    nop

    .line 2131
    return-void

    .line 2128
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2130
    throw p1
.end method

.method public greylist-max-o tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1877
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1880
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1882
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1883
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1884
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    iget-object p2, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x19

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    nop

    .line 1892
    return-void

    .line 1889
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    throw p1
.end method

.method public greylist-max-o unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2037
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2041
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x22

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2047
    nop

    .line 2048
    return-void

    .line 2045
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2047
    throw p1
.end method

.method public greylist-max-o unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1601
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1603
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1605
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1610
    nop

    .line 1611
    return-void

    .line 1608
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1610
    throw p1
.end method

.method public greylist-max-o updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    invoke-virtual {p0}, Landroid/media/tv/ITvInputManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1493
    :try_start_c
    const-string v2, "android.media.tv.ITvInputManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1494
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1495
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1496
    iget-object p1, p0, Landroid/media/tv/ITvInputManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 1500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1502
    nop

    .line 1503
    return-void

    .line 1500
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1502
    throw p1
.end method
