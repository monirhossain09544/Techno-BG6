.class Landroid/os/IUserManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUserManager.java"

# interfaces
.implements Landroid/os/IUserManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUserManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2056
    iput-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2057
    return-void
.end method


# virtual methods
.method public blacklist addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3059
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3062
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3063
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3064
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3065
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3070
    nop

    .line 3071
    return-void

    .line 3068
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3070
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 2060
    iget-object v0, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2600
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2604
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2607
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2608
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2610
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 2613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2615
    nop

    .line 2616
    return p1

    .line 2613
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2615
    throw p1
.end method

.method public blacklist canAddMoreUsersOfType(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2545
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2549
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2551
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2552
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2553
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2558
    nop

    .line 2559
    return p1

    .line 2556
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2558
    throw p1
.end method

.method public blacklist canAddPrivateProfile(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2872
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2876
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2878
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    nop

    .line 2886
    return p1

    .line 2883
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    throw p1
.end method

.method public greylist-max-o canHaveRestrictedProfile(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2854
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2858
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2860
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2862
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2867
    nop

    .line 2868
    return p1

    .line 2865
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2867
    throw p1
.end method

.method public blacklist clearSeedAccountData(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3346
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3349
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3351
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3357
    nop

    .line 3358
    return-void

    .line 3355
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3357
    throw p1
.end method

.method public blacklist createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3471
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3475
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3478
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3479
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3480
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3481
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3483
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3488
    nop

    .line 3489
    return-object p1

    .line 3486
    :catchall_3b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3488
    throw p1
.end method

.method public blacklist createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2144
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2148
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2154
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2156
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 2159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2161
    nop

    .line 2162
    return-object p1

    .line 2159
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2161
    throw p1
.end method

.method public blacklist createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2166
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2170
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2172
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2175
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 2178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2180
    nop

    .line 2181
    return-object p1

    .line 2178
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2180
    throw p1
.end method

.method public blacklist createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3249
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3253
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3255
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3257
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3258
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v0, p7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3261
    iget-object p2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x43

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3263
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_41

    .line 3266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3268
    nop

    .line 3269
    return-object p1

    .line 3266
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3268
    throw p1
.end method

.method public blacklist createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2106
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2110
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2114
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2116
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 2119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2121
    nop

    .line 2122
    return-object p1

    .line 2119
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2121
    throw p1
.end method

.method public greylist-max-o evictCredentialEncryptionKey(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2248
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2251
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2259
    nop

    .line 2260
    return-void

    .line 2257
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2259
    throw p1
.end method

.method public greylist-max-o getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3108
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3112
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3114
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3116
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 3119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3121
    nop

    .line 3122
    return-object p1

    .line 3119
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3121
    throw p1
.end method

.method public greylist-max-o getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3126
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3130
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3133
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3134
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3135
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 3138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3140
    nop

    .line 3141
    return-object p1

    .line 3138
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3140
    throw p1
.end method

.method public blacklist getBootUser()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3958
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3962
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3963
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3964
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3965
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3970
    nop

    .line 3971
    return v2

    .line 3968
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3970
    throw v2
.end method

.method public blacklist getCommunalProfileId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2419
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2423
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2424
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2426
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    nop

    .line 2432
    return v2

    .line 2429
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    throw v2
.end method

.method public greylist-max-o getCredentialOwnerProfile(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2069
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2073
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2082
    nop

    .line 2083
    return p1

    .line 2080
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2082
    throw p1
.end method

.method public blacklist getCurrentAllowedNumberOfUsers(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2527
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2531
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2533
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2534
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    nop

    .line 2541
    return p1

    .line 2538
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    throw p1
.end method

.method public greylist-max-o getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3160
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3164
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3165
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3166
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3167
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 3170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3172
    nop

    .line 3173
    return-object v2

    .line 3170
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3172
    throw v2
.end method

.method public blacklist getGuestUsers()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3214
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3218
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3219
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3220
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3221
    sget-object v2, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 3224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    nop

    .line 3227
    return-object v2

    .line 3224
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2064
    const-string v0, "android.os.IUserManager"

    return-object v0
.end method

.method public blacklist getMainDisplayIdAssignedToUser(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3780
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3784
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3786
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x60

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3787
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3788
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3793
    nop

    .line 3794
    return p1

    .line 3791
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3793
    throw p1
.end method

.method public blacklist getMainUserId()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2384
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2388
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2389
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2396
    nop

    .line 2397
    return v2

    .line 2394
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2396
    throw v2
.end method

.method public blacklist getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2185
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2189
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2191
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    nop

    .line 2199
    return-object p1

    .line 2196
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    throw p1
.end method

.method public blacklist getPreviousUserToEnterForeground()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2440
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2441
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2448
    nop

    .line 2449
    return v2

    .line 2446
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2448
    throw v2
.end method

.method public greylist-max-o getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2367
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2371
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2372
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2374
    sget-object v2, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2379
    nop

    .line 2380
    return-object v2

    .line 2377
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2379
    throw v2
.end method

.method public blacklist getProfileAccessibilityLabelResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3673
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3677
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3679
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3686
    nop

    .line 3687
    return p1

    .line 3684
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3686
    throw p1
.end method

.method public greylist-max-o getProfileIds(IZ)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2490
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2494
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2497
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2504
    nop

    .line 2505
    return-object p1

    .line 2502
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2504
    throw p1
.end method

.method public blacklist getProfileIdsExcludingHidden(IZ)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3975
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3979
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3981
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3982
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3984
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3989
    nop

    .line 3990
    return-object p1

    .line 3987
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3989
    throw p1
.end method

.method public blacklist getProfileLabelResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3655
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3659
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3661
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x59

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    nop

    .line 3669
    return p1

    .line 3666
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3668
    throw p1
.end method

.method public greylist-max-o getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2620
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2624
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2628
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    nop

    .line 2634
    return-object p1

    .line 2631
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2633
    throw p1
.end method

.method public greylist-max-o getProfileParentId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2087
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2091
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2093
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2095
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2100
    nop

    .line 2101
    return p1

    .line 2098
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2100
    throw p1
.end method

.method public blacklist getProfileType(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3399
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3403
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3405
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3406
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3407
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3412
    nop

    .line 3413
    return-object p1

    .line 3410
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3412
    throw p1
.end method

.method public greylist-max-o getProfiles(IZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2471
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2475
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2478
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x18

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2480
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2485
    nop

    .line 2486
    return-object p1

    .line 2483
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2485
    throw p1
.end method

.method public blacklist getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2581
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2585
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2588
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    nop

    .line 2596
    return p1

    .line 2593
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    throw p1
.end method

.method public blacklist getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2563
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2567
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2569
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2570
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2571
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2576
    nop

    .line 2577
    return p1

    .line 2574
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2576
    throw p1
.end method

.method public blacklist getSeedAccountName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3292
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3296
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3298
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x45

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3299
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3300
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3305
    nop

    .line 3306
    return-object p1

    .line 3303
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3305
    throw p1
.end method

.method public blacklist getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3328
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3332
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3334
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3335
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3336
    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 3339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3341
    nop

    .line 3342
    return-object p1

    .line 3339
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3341
    throw p1
.end method

.method public blacklist getSeedAccountType(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3310
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3314
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x46

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3318
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    nop

    .line 3324
    return-object p1

    .line 3321
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3323
    throw p1
.end method

.method public greylist-max-o getUserAccount(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2729
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2733
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2736
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    nop

    .line 2743
    return-object p1

    .line 2740
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    throw p1
.end method

.method public blacklist getUserBadgeColorResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3583
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3587
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3589
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x55

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3591
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3594
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3596
    nop

    .line 3597
    return p1

    .line 3594
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3596
    throw p1
.end method

.method public blacklist getUserBadgeDarkColorResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3601
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3605
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3607
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x56

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3614
    nop

    .line 3615
    return p1

    .line 3612
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3614
    throw p1
.end method

.method public blacklist getUserBadgeLabelResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3565
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3569
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3571
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x54

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3572
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3578
    nop

    .line 3579
    return p1

    .line 3576
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3578
    throw p1
.end method

.method public blacklist getUserBadgeNoBackgroundResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3547
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3551
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3553
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x53

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3560
    nop

    .line 3561
    return p1

    .line 3558
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3560
    throw p1
.end method

.method public blacklist getUserBadgeResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3529
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3533
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3535
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x52

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3537
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    nop

    .line 3543
    return p1

    .line 3540
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    throw p1
.end method

.method public greylist-max-o getUserCreationTime(I)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2763
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2767
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2769
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    nop

    .line 2777
    return-wide v2

    .line 2774
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    throw p1
.end method

.method public greylist-max-o getUserHandle(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2908
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2912
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2914
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2915
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2921
    nop

    .line 2922
    return p1

    .line 2919
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2921
    throw p1
.end method

.method public greylist-max-o getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2349
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2353
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2355
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2357
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2362
    nop

    .line 2363
    return-object p1

    .line 2360
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2362
    throw p1
.end method

.method public blacklist getUserIconBadgeResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3511
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3515
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3517
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3519
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3524
    nop

    .line 3525
    return p1

    .line 3522
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3524
    throw p1
.end method

.method public greylist-max-o getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2693
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2697
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2699
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2700
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2701
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2706
    nop

    .line 2707
    return-object p1

    .line 2704
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2706
    throw p1
.end method

.method public blacklist getUserLogoutability(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2818
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2822
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2823
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2824
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2826
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2831
    nop

    .line 2832
    return p1

    .line 2829
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2831
    throw p1
.end method

.method public blacklist getUserName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3873
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3877
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3878
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3880
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3885
    nop

    .line 3886
    return-object v2

    .line 3883
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3885
    throw v2
.end method

.method public blacklist getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2711
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2715
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2717
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2719
    sget-object p1, Landroid/content/pm/UserProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserProperties;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2724
    nop

    .line 2725
    return-object p1

    .line 2722
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2724
    throw p1
.end method

.method public blacklist getUserRemovability(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2299
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2303
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2305
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2306
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2312
    nop

    .line 2313
    return p1

    .line 2310
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2312
    throw p1
.end method

.method public greylist-max-o getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2926
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2930
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2933
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x31

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2940
    nop

    .line 2941
    return p1

    .line 2938
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2940
    throw p1
.end method

.method public greylist-max-o getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2945
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2949
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2952
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x32

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2954
    sget-object p1, Landroid/os/UserManager$EnforcingUser;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    nop

    .line 2960
    return-object p1

    .line 2957
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    throw p1
.end method

.method public greylist-max-o getUserRestrictions(I)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2964
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2968
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2970
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2971
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2972
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2977
    nop

    .line 2978
    return-object p1

    .line 2975
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2977
    throw p1
.end method

.method public greylist-max-o getUserSerialNumber(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2890
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2894
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2903
    nop

    .line 2904
    return p1

    .line 2901
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2903
    throw p1
.end method

.method public greylist-max-o getUserStartRealtime()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3890
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3891
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3894
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3895
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3897
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3902
    nop

    .line 3903
    return-wide v2

    .line 3900
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3902
    throw v2
.end method

.method public blacklist getUserStatusBarIconResId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3619
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3623
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x57

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3626
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3627
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3632
    nop

    .line 3633
    return p1

    .line 3630
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3632
    throw p1
.end method

.method public blacklist getUserSwitchability(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2781
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2785
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2794
    nop

    .line 2795
    return p1

    .line 2792
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2794
    throw p1
.end method

.method public greylist-max-o getUserUnlockRealtime()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3907
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3911
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3912
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3914
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3919
    nop

    .line 3920
    return-wide v2

    .line 3917
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3919
    throw v2
.end method

.method public greylist-max-o getUsers(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2457
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2459
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2461
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2466
    nop

    .line 2467
    return-object p1

    .line 2464
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2466
    throw p1
.end method

.method public blacklist getVisibleUsers()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3763
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3767
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3768
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3770
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3775
    nop

    .line 3776
    return-object v2

    .line 3773
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3775
    throw v2
.end method

.method public blacklist hasBadge(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3637
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3641
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3643
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x58

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3645
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3650
    nop

    .line 3651
    return p1

    .line 3648
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3650
    throw p1
.end method

.method public greylist-max-o hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2982
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2986
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2989
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x34

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2991
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2996
    nop

    .line 2997
    return p1

    .line 2994
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2996
    throw p1
.end method

.method public blacklist hasRestrictedProfiles(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3833
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3837
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3839
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x63

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3841
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3846
    nop

    .line 3847
    return p1

    .line 3844
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3846
    throw p1
.end method

.method public greylist-max-o hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3001
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3005
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3007
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3008
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x35

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3010
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3015
    nop

    .line 3016
    return p1

    .line 3013
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3015
    throw p1
.end method

.method public greylist-max-o hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3020
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3024
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3026
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3027
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3028
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3033
    nop

    .line 3034
    return p1

    .line 3031
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3033
    throw p1
.end method

.method public blacklist isAdminUser(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3435
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3439
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3441
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3448
    nop

    .line 3449
    return p1

    .line 3446
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3448
    throw p1
.end method

.method public greylist-max-o isDemoUser(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3417
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3421
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3423
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    nop

    .line 3431
    return p1

    .line 3428
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    throw p1
.end method

.method public blacklist isForegroundUserAdmin()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3798
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3802
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3803
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3804
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3805
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3808
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3810
    nop

    .line 3811
    return v2

    .line 3808
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3810
    throw v2
.end method

.method public blacklist isHeadlessSystemUserMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2657
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2661
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2662
    iget-object v2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2664
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 2667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2669
    nop

    .line 2670
    return v2

    .line 2667
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2669
    throw v2
.end method

.method public blacklist isMainUser(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2401
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2405
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2407
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    nop

    .line 2415
    return p1

    .line 2412
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2414
    throw p1
.end method

.method public blacklist isPreCreated(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3453
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3457
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3459
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3461
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3466
    nop

    .line 3467
    return p1

    .line 3464
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3466
    throw p1
.end method

.method public greylist-max-o isQuietModeEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3231
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3235
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3237
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3239
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3244
    nop

    .line 3245
    return p1

    .line 3242
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3244
    throw p1
.end method

.method public blacklist isRestricted(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2836
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2840
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2842
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2844
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2849
    nop

    .line 2850
    return p1

    .line 2847
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2849
    throw p1
.end method

.method public greylist-max-o isSameProfileGroup(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2638
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2642
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2644
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2645
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x21

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2652
    nop

    .line 2653
    return p1

    .line 2650
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2652
    throw p1
.end method

.method public blacklist isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3038
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3042
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3044
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3045
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3046
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3047
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x37

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3048
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3049
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 3052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3054
    nop

    .line 3055
    return p1

    .line 3052
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3054
    throw p1
.end method

.method public blacklist isUserForeground(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3727
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3731
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3733
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3734
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3735
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3738
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3740
    nop

    .line 3741
    return p1

    .line 3738
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3740
    throw p1
.end method

.method public greylist-max-o isUserNameSet(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3815
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3816
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3819
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3820
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x62

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3822
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3823
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3828
    nop

    .line 3829
    return p1

    .line 3826
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3828
    throw p1
.end method

.method public blacklist isUserOfType(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2674
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2678
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2680
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2681
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x23

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2683
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2686
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2688
    nop

    .line 2689
    return p1

    .line 2686
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2688
    throw p1
.end method

.method public greylist-max-o isUserRunning(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3709
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3713
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3715
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3717
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    nop

    .line 3723
    return p1

    .line 3720
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3722
    throw p1
.end method

.method public blacklist isUserSwitcherEnabled(ZI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2799
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2803
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2806
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2808
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    nop

    .line 2814
    return p1

    .line 2811
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    throw p1
.end method

.method public blacklist isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2509
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2513
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2515
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2522
    nop

    .line 2523
    return p1

    .line 2520
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2522
    throw p1
.end method

.method public greylist-max-o isUserUnlocked(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3691
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3695
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3697
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3704
    nop

    .line 3705
    return p1

    .line 3702
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3704
    throw p1
.end method

.method public greylist-max-o isUserUnlockingOrUnlocked(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3493
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3497
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3499
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3501
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3506
    nop

    .line 3507
    return p1

    .line 3504
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3506
    throw p1
.end method

.method public blacklist isUserVisible(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3745
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3749
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3751
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3752
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3753
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3758
    nop

    .line 3759
    return p1

    .line 3756
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3758
    throw p1
.end method

.method public greylist-max-o markGuestForDeletion(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3196
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3200
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3202
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3204
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 3207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3209
    nop

    .line 3210
    return p1

    .line 3207
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3209
    throw p1
.end method

.method public blacklist preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2126
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2130
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2132
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2134
    sget-object p1, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2139
    nop

    .line 2140
    return-object p1

    .line 2137
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2139
    throw p1
.end method

.method public greylist-max-o removeUser(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2263
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2267
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2269
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2271
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    nop

    .line 2277
    return p1

    .line 2274
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    throw p1
.end method

.method public greylist-max-o removeUserEvenWhenDisallowed(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2281
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2285
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2287
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2289
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 2292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2294
    nop

    .line 2295
    return p1

    .line 2292
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2294
    throw p1
.end method

.method public blacklist removeUserWhenPossible(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3177
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3181
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3184
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3186
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3191
    nop

    .line 3192
    return p1

    .line 3189
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3191
    throw p1
.end method

.method public blacklist requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3851
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3855
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3858
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3859
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3860
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3861
    iget-object p2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x64

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3862
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3863
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 3866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3868
    nop

    .line 3869
    return p1

    .line 3866
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3868
    throw p1
.end method

.method public blacklist revokeUserAdmin(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2233
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2236
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2244
    nop

    .line 2245
    return-void

    .line 2242
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2244
    throw p1
.end method

.method public greylist-max-o setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3091
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3094
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3096
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3097
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3098
    iget-object p2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x3a

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3099
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3104
    nop

    .line 3105
    return-void

    .line 3102
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3104
    throw p1
.end method

.method public blacklist setBootUser(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3943
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3946
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3948
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3949
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3954
    nop

    .line 3955
    return-void

    .line 3952
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3953
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3954
    throw p1
.end method

.method public greylist-max-o setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3145
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3148
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3149
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3150
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 3154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3156
    nop

    .line 3157
    return-void

    .line 3154
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3156
    throw p1
.end method

.method public greylist-max-o setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3273
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3276
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3280
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3281
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3282
    iget-object p2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x44

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3283
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 3286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3288
    nop

    .line 3289
    return-void

    .line 3286
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3288
    throw p1
.end method

.method public greylist-max-o setUserAccount(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2747
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2750
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2753
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x27

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    nop

    .line 2760
    return-void

    .line 2757
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2759
    throw p1
.end method

.method public greylist-max-o setUserAdmin(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2218
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2221
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2223
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2229
    nop

    .line 2230
    return-void

    .line 2227
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2229
    throw p1
.end method

.method public greylist-max-o setUserEnabled(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2203
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2206
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 2212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    nop

    .line 2215
    return-void

    .line 2212
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    throw p1
.end method

.method public blacklist setUserEphemeral(IZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3924
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3928
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3930
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3931
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x68

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3933
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3938
    nop

    .line 3939
    return p1

    .line 3936
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3938
    throw p1
.end method

.method public greylist-max-o setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2336
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2339
    iget-object p2, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2340
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2345
    nop

    .line 2346
    return-void

    .line 2343
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2345
    throw p1
.end method

.method public greylist-max-o setUserName(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2317
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2320
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2323
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    nop

    .line 2330
    return-void

    .line 2327
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2329
    throw p1
.end method

.method public greylist-max-o setUserRestriction(Ljava/lang/String;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3074
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3077
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3080
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3081
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x39

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3082
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 3085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3087
    nop

    .line 3088
    return-void

    .line 3085
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3086
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3087
    throw p1
.end method

.method public blacklist someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3380
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3384
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3387
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x4a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3388
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3394
    nop

    .line 3395
    return p1

    .line 3392
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3394
    throw p1
.end method

.method public greylist-max-o someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3361
    invoke-virtual {p0}, Landroid/os/IUserManager$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3365
    :try_start_c
    const-string v2, "android.os.IUserManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3368
    iget-object p1, p0, Landroid/os/IUserManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x49

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3370
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 3373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    nop

    .line 3376
    return p1

    .line 3373
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    throw p1
.end method
