.class Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITunerResourceManager.java"

# interfaces
.implements Landroid/media/tv/tunerresourcemanager/ITunerResourceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1065
    return-void
.end method


# virtual methods
.method public blacklist acquireLock(IJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1979
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1983
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1986
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1988
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    nop

    .line 1994
    return p1

    .line 1991
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1993
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1068
    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist clearResourceMap(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1926
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1929
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1931
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    nop

    .line 1938
    return-void

    .line 1935
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    throw p1
.end method

.method public blacklist getClientPriority(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2040
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2044
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2045
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2046
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2047
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x21

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2048
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2049
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2054
    nop

    .line 2055
    return p1

    .line 2052
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2054
    throw p1
.end method

.method public blacklist getConfigPriority(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2069
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2073
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2076
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x22

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2078
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2083
    nop

    .line 2084
    return p1

    .line 2081
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2083
    throw p1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1072
    const-string v0, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    return-object v0
.end method

.method public blacklist getMaxNumberOfFrontends(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1429
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    nop

    .line 1439
    return p1

    .line 1436
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    throw p1
.end method

.method public blacklist hasUnusedFrontend(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1161
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1165
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1174
    nop

    .line 1175
    return p1

    .line 1172
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1174
    throw p1
.end method

.method public blacklist isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1873
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1877
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1878
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1879
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1880
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1b

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1882
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1887
    nop

    .line 1888
    return p1

    .line 1885
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1887
    throw p1
.end method

.method public blacklist isLowestPriority(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1192
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1196
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1200
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1206
    nop

    .line 1207
    return p1

    .line 1204
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1206
    throw p1
.end method

.method public blacklist registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1090
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1091
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1092
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1093
    array-length p1, p3

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1096
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    nop

    .line 1102
    return-void

    .line 1099
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    throw p1
.end method

.method public blacklist releaseCasSession(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1796
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1799
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1801
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x18

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1808
    nop

    .line 1809
    return-void

    .line 1806
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1808
    throw p1
.end method

.method public blacklist releaseCiCam(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1826
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1828
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1829
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1835
    nop

    .line 1836
    return-void

    .line 1833
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1835
    throw p1
.end method

.method public blacklist releaseDemux(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1746
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1749
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1750
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1751
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1758
    nop

    .line 1759
    return-void

    .line 1756
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1758
    throw p1
.end method

.method public blacklist releaseDescrambler(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1770
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1773
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1774
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1775
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1776
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    nop

    .line 1783
    return-void

    .line 1780
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1782
    throw p1
.end method

.method public blacklist releaseFrontend(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1722
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1725
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1726
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1727
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x15

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    nop

    .line 1735
    return-void

    .line 1732
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    throw p1
.end method

.method public blacklist releaseLnb(JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1849
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1852
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1854
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1859
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    nop

    .line 1862
    return-void

    .line 1859
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    throw p1
.end method

.method public blacklist releaseLock(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2010
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2014
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2016
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2018
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    nop

    .line 2024
    return p1

    .line 2021
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    throw p1
.end method

.method public blacklist requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1606
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1610
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1612
    array-length p1, p2

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1616
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    nop

    .line 1622
    return p1

    .line 1619
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    throw p1
.end method

.method public blacklist requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1649
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1653
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1654
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1655
    array-length p1, p2

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1658
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1659
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    nop

    .line 1665
    return p1

    .line 1662
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    throw p1
.end method

.method public blacklist requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1520
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1524
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1525
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1526
    array-length p1, p2

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1530
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1535
    nop

    .line 1536
    return p1

    .line 1533
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1535
    throw p1
.end method

.method public blacklist requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1562
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1566
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1567
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1568
    array-length p1, p2

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1570
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1571
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1572
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    nop

    .line 1578
    return p1

    .line 1575
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1577
    throw p1
.end method

.method public blacklist requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1369
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1373
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1374
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1375
    array-length p1, p2

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1377
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1378
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1379
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    nop

    .line 1385
    return p1

    .line 1382
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    throw p1
.end method

.method public blacklist requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1695
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1696
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1697
    array-length p1, p2

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1700
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 1701
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    nop

    .line 1707
    return p1

    .line 1704
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    throw p1
.end method

.method public blacklist restoreResourceMap(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1953
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    nop

    .line 1962
    return-void

    .line 1959
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1961
    throw p1
.end method

.method public blacklist setDemuxInfoList([Landroid/media/tv/tunerresourcemanager/TunerDemuxInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1273
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1274
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1275
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1281
    nop

    .line 1282
    return-void

    .line 1279
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1281
    throw p1
.end method

.method public blacklist setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1223
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1224
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1225
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1231
    nop

    .line 1232
    return-void

    .line 1229
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1231
    throw p1
.end method

.method public blacklist setLnbInfoList([J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1293
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1296
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1298
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1302
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1304
    nop

    .line 1305
    return-void

    .line 1302
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1304
    throw p1
.end method

.method public blacklist setMaxNumberOfFrontends(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1402
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1407
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 1410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    nop

    .line 1413
    return p1

    .line 1410
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    throw p1
.end method

.method public blacklist setResourceOwnershipRetention(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1322
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1325
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    nop

    .line 1332
    return-void

    .line 1329
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    throw p1
.end method

.method public blacklist shareFrontend(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1452
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1455
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1459
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1464
    nop

    .line 1465
    return-void

    .line 1462
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1464
    throw p1
.end method

.method public blacklist storeResourceMap(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1901
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1904
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1907
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 1910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1912
    nop

    .line 1913
    return-void

    .line 1910
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1912
    throw p1
.end method

.method public blacklist transferOwner(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1479
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1483
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1486
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1488
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 1492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1494
    nop

    .line 1495
    return p1

    .line 1492
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1494
    throw p1
.end method

.method public blacklist unregisterClientProfile(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1110
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1113
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    nop

    .line 1122
    return-void

    .line 1119
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    throw p1
.end method

.method public blacklist updateCasInfo(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1248
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 1255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    nop

    .line 1258
    return-void

    .line 1255
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    throw p1
.end method

.method public blacklist updateClientPriority(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1138
    :try_start_c
    const-string v2, "android.media.tv.tunerresourcemanager.ITunerResourceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    iget-object p1, p0, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1144
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1149
    nop

    .line 1150
    return p1

    .line 1147
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1149
    throw p1
.end method
