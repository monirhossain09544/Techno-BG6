.class Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
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

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1270
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1271
    return-void
.end method


# virtual methods
.method public greylist-max-o activeServiceSupportsAssist()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1787
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1788
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1790
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1795
    nop

    .line 1796
    return v2

    .line 1793
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1795
    throw v2
.end method

.method public greylist-max-o activeServiceSupportsLaunchFromKeyguard()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1805
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1809
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1810
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1812
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    nop

    .line 1818
    return v2

    .line 1815
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1817
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1274
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o closeSystemDialogs(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1420
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1422
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1428
    nop

    .line 1429
    return-void

    .line 1426
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1428
    throw p1
.end method

.method public blacklist createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1995
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1999
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2000
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2001
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2002
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2003
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x22

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2005
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    nop

    .line 2011
    return-object p1

    .line 2008
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2010
    throw p1
.end method

.method public greylist-max-o deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1570
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1573
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1574
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1575
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1580
    nop

    .line 1581
    return p1

    .line 1578
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1580
    throw p1
.end method

.method public greylist-max-o deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1303
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1305
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1306
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1307
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1314
    nop

    .line 1315
    return p1

    .line 1312
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1314
    throw p1
.end method

.method public blacklist destroyDetector(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2108
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2111
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2113
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2119
    nop

    .line 2120
    return-void

    .line 2117
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2119
    throw p1
.end method

.method public blacklist disableVisualQueryDetection()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2171
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2172
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2178
    nop

    .line 2179
    return-void

    .line 2176
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2178
    throw v2
.end method

.method public blacklist enableVisualQueryDetection(Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2153
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2156
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2158
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    nop

    .line 2165
    return-void

    .line 2162
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    throw p1
.end method

.method public greylist-max-o finish(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1432
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1435
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1437
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1443
    nop

    .line 1444
    return-void

    .line 1441
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1443
    throw p1
.end method

.method public blacklist getAccessibilityDetectionEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2346
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2350
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2351
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2353
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    nop

    .line 2359
    return v2

    .line 2356
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    throw v2
.end method

.method public greylist-max-o getActiveServiceComponentName()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1669
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1673
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1674
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1676
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1681
    nop

    .line 1682
    return-object v2

    .line 1679
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1681
    throw v2
.end method

.method public blacklist getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1864
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1867
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1870
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    nop

    .line 1877
    return-void

    .line 1874
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    throw p1
.end method

.method public greylist-max-o getDisabledShowContext()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1462
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1466
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1467
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    nop

    .line 1475
    return v2

    .line 1472
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    throw v2
.end method

.method public blacklist getEnrolledKeyphraseMetadata(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1649
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1653
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1656
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1658
    sget-object p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1663
    nop

    .line 1664
    return-object p1

    .line 1661
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1663
    throw p1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1278
    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService"

    return-object v0
.end method

.method public greylist-max-o getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1508
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1512
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1515
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1517
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    nop

    .line 1523
    return-object p1

    .line 1520
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    throw p1
.end method

.method public greylist-max-o getUserDisabledShowContext()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1479
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1483
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1484
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1491
    nop

    .line 1492
    return v2

    .line 1489
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1491
    throw v2
.end method

.method public greylist-max-o hideCurrentSession()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1724
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1727
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1728
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    nop

    .line 1735
    return-void

    .line 1732
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    throw v2
.end method

.method public greylist-max-o hideSessionFromSession(Landroid/os/IBinder;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1344
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1346
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1348
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    nop

    .line 1354
    return p1

    .line 1351
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    throw p1
.end method

.method public blacklist initAndVerifyDetector(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2083
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2086
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2087
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2088
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2089
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2090
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2091
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2092
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2093
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x25

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    nop

    .line 2100
    return-void

    .line 2097
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    throw p1
.end method

.method public blacklist isEnrolledForKeyphrase(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1623
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1626
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1628
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    nop

    .line 1634
    return p1

    .line 1631
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    throw p1
.end method

.method public greylist-max-o isSessionRunning()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1761
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1765
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1766
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 1771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1773
    nop

    .line 1774
    return v2

    .line 1771
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1773
    throw v2
.end method

.method public greylist-max-o launchVoiceAssistFromKeyguard()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1743
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1746
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1747
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1748
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 1751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    nop

    .line 1754
    return-void

    .line 1751
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    throw v2
.end method

.method public blacklist listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/permission/Identity;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2019
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2023
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2024
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2025
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2027
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    nop

    .line 2033
    return-object p1

    .line 2030
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    throw p1
.end method

.method public blacklist notifyActivityEventChanged(Landroid/os/IBinder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2332
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    :try_start_8
    const-string v1, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2337
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x34

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 2340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2341
    nop

    .line 2342
    return-void

    .line 2340
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2341
    throw p1
.end method

.method public greylist-max-o onLockscreenShown()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1826
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1829
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1830
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 1834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    nop

    .line 1837
    return-void

    .line 1834
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1836
    throw v2
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1941
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1944
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1946
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1947
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1948
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1950
    invoke-virtual {v0, p6, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1951
    invoke-virtual {v0, p7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1952
    iget-object p2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x20

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1958
    nop

    .line 1959
    return-void

    .line 1956
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1958
    throw p1
.end method

.method public blacklist registerAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2364
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2366
    :try_start_8
    const-string v1, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2368
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x36

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2372
    nop

    .line 2373
    return-void

    .line 2371
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2372
    throw p1
.end method

.method public greylist-max-o registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1844
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1847
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1849
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    nop

    .line 1856
    return-void

    .line 1853
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    throw p1
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1921
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1924
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1926
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1928
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1929
    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1930
    iget-object p2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x1f

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1931
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 1934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1936
    nop

    .line 1937
    return-void

    .line 1934
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1936
    throw p1
.end method

.method public blacklist setDisabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1974
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1976
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    nop

    .line 1983
    return-void

    .line 1980
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    throw p1
.end method

.method public greylist-max-o setDisabledShowContext(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1450
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1458
    nop

    .line 1459
    return-void

    .line 1456
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1458
    throw p1
.end method

.method public blacklist setInvocationEffectEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1908
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1910
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1911
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    nop

    .line 1917
    return-void

    .line 1914
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    throw p1
.end method

.method public greylist-max-o setKeepAwake(Landroid/os/IBinder;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1404
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1407
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1411
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    throw p1
.end method

.method public blacklist setModelDatabaseForTestEnabled(ZLandroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1594
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1597
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1599
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1600
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    nop

    .line 1607
    return-void

    .line 1604
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    throw p1
.end method

.method public blacklist setSessionWindowVisible(Landroid/os/IBinder;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2310
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2313
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2315
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2316
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x33

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    nop

    .line 2323
    return-void

    .line 2320
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    throw p1
.end method

.method public blacklist setUiHints(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1885
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1888
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1889
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1890
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1891
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1896
    nop

    .line 1897
    return-void

    .line 1894
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1896
    throw p1
.end method

.method public blacklist showSession(Landroid/os/Bundle;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1285
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1286
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1289
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1295
    nop

    .line 1296
    return-void

    .line 1293
    :catchall_2c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1295
    throw p1
.end method

.method public blacklist showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1698
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1702
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1703
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1704
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1705
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1707
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1708
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x14

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1710
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 1713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    nop

    .line 1716
    return p1

    .line 1713
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw p1
.end method

.method public blacklist showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;ILjava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1323
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1325
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1326
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1328
    iget-object p2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x3

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1330
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 1333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    nop

    .line 1336
    return p1

    .line 1333
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    throw p1
.end method

.method public blacklist shutdownHotwordDetectionService()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2127
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2128
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2134
    nop

    .line 2135
    return-void

    .line 2132
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2134
    throw v2
.end method

.method public blacklist startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1379
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1383
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1385
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1386
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1389
    iget-object p2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x6

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    nop

    .line 1397
    return p1

    .line 1394
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    throw p1
.end method

.method public blacklist startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/IBinder;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2241
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2244
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2245
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2246
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2247
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2248
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2249
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2250
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2f

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2256
    nop

    .line 2257
    return-void

    .line 2254
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2256
    throw p1
.end method

.method public blacklist startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2214
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2215
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2217
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2d

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2218
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    nop

    .line 2224
    return-void

    .line 2221
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    throw p1
.end method

.method public blacklist startListeningVisibleActivityChanged(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2278
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2281
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2283
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2284
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    nop

    .line 2290
    return-void

    .line 2287
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2289
    throw p1
.end method

.method public blacklist startPerceiving(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2182
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2185
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2187
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    nop

    .line 2194
    return-void

    .line 2191
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2193
    throw p1
.end method

.method public blacklist startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1358
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1362
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1364
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1367
    iget-object p2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p3, 0x5

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 1372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1374
    nop

    .line 1375
    return p1

    .line 1372
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1374
    throw p1
.end method

.method public blacklist stopListeningFromMic()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2227
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2230
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2231
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2237
    nop

    .line 2238
    return-void

    .line 2235
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2237
    throw v2
.end method

.method public blacklist stopListeningVisibleActivityChanged(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2294
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2297
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2299
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2305
    nop

    .line 2306
    return-void

    .line 2303
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2305
    throw p1
.end method

.method public blacklist stopPerceiving()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2197
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2200
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2201
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 2205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2207
    nop

    .line 2208
    return-void

    .line 2205
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2207
    throw v2
.end method

.method public blacklist subscribeVisualQueryRecognitionStatus(Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2138
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2141
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2143
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2149
    nop

    .line 2150
    return-void

    .line 2147
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2149
    throw p1
.end method

.method public blacklist triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2261
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2264
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2265
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2266
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2267
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x30

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2273
    nop

    .line 2274
    return-void

    .line 2271
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2273
    throw p1
.end method

.method public blacklist unregisterAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2377
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2379
    :try_start_8
    const-string v1, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2381
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x37

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 2384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2385
    nop

    .line 2386
    return-void

    .line 2384
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2385
    throw p1
.end method

.method public greylist-max-o updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1537
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1541
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1542
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1543
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1545
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1550
    nop

    .line 1551
    return p1

    .line 1548
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1550
    throw p1
.end method

.method public blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2048
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2051
    :try_start_c
    const-string v2, "com.android.internal.app.IVoiceInteractionManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2052
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2053
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2054
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2055
    iget-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x24

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2056
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2059
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2061
    nop

    .line 2062
    return-void

    .line 2059
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2060
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2061
    throw p1
.end method
