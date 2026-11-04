.class Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 8585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8586
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 8587
    return-void
.end method


# virtual methods
.method public blacklist addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17095
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17098
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17100
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17101
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17102
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 17106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17108
    nop

    .line 17109
    return-void

    .line 17106
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17108
    throw p1
.end method

.method public blacklist addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15217
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15221
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15223
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 15224
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15226
    sget-object p1, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 15229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15231
    nop

    .line 15232
    return-object p1

    .line 15229
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15231
    throw p1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 8590
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14714
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14717
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14719
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14720
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14721
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14722
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14723
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 14724
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x112

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14725
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 14728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14730
    nop

    .line 14731
    return-void

    .line 14728
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14730
    throw p1
.end method

.method public greylist-max-o call(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8624
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8627
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8629
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8630
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8636
    nop

    .line 8637
    return-void

    .line 8634
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8636
    throw p1
.end method

.method public blacklist canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11452
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11456
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11459
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11460
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x79

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11462
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11467
    nop

    .line 11468
    return p1

    .line 11465
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11467
    throw p1
.end method

.method public blacklist canConnectTo5GInDsdsMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14522
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14526
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14527
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14529
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 14532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14534
    nop

    .line 14535
    return v2

    .line 14532
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14534
    throw v2
.end method

.method public greylist-max-o carrierActionReportDefaultNetworkStatus(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12368
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12371
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12374
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 12378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12380
    nop

    .line 12381
    return-void

    .line 12378
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12380
    throw p1
.end method

.method public blacklist carrierActionResetAll(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12390
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12393
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12395
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 12399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12401
    nop

    .line 12402
    return-void

    .line 12399
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12401
    throw p1
.end method

.method public greylist-max-o carrierActionSetRadioEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12344
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12347
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12350
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 12354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12356
    nop

    .line 12357
    return-void

    .line 12354
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12356
    throw p1
.end method

.method public blacklist changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14449
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14453
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14456
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14457
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x106

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14459
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14464
    nop

    .line 14465
    return p1

    .line 14462
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14464
    throw p1
.end method

.method public blacklist checkCarrierPrivilegesForPackage(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11029
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11033
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11035
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11036
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x69

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11037
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11043
    nop

    .line 11044
    return p1

    .line 11041
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11043
    throw p1
.end method

.method public greylist-max-o checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11052
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11056
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11058
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11059
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11060
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11065
    nop

    .line 11066
    return p1

    .line 11063
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11065
    throw p1
.end method

.method public blacklist clearCarrierImsServiceOverride(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10535
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10539
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10541
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x55

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10543
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10548
    nop

    .line 10549
    return p1

    .line 10546
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10548
    throw p1
.end method

.method public blacklist clearDomainSelectionServiceOverride()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17331
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17335
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17336
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x187

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17338
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 17341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17343
    nop

    .line 17344
    return v2

    .line 17341
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17343
    throw v2
.end method

.method public blacklist clearRadioPowerOffForReason(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9090
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9094
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9096
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9097
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9098
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9099
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 9102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9104
    nop

    .line 9105
    return p1

    .line 9102
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9104
    throw p1
.end method

.method public blacklist clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15395
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15398
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15400
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15401
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15402
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x135

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 15406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15408
    nop

    .line 15409
    return-void

    .line 15406
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15408
    throw p1
.end method

.method public blacklist clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15265
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15269
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15271
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15273
    sget-object p1, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 15276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15278
    nop

    .line 15279
    return-object p1

    .line 15276
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15278
    throw p1
.end method

.method public blacklist deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17930
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17933
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17934
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 17935
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17936
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19f

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17937
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 17940
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17942
    nop

    .line 17943
    return-void

    .line 17940
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17941
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17942
    throw p1
.end method

.method public blacklist deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16182
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16185
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16188
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x158

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 16192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16194
    nop

    .line 16195
    return-void

    .line 16192
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16194
    throw p1
.end method

.method public greylist-max-o dial(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8604
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8607
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8609
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8610
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 8613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8615
    nop

    .line 8616
    return-void

    .line 8613
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8615
    throw p1
.end method

.method public blacklist disableDataConnectivity(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9219
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9223
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9225
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9227
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9232
    nop

    .line 9233
    return p1

    .line 9230
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9232
    throw p1
.end method

.method public greylist-max-o disableIms(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10399
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10402
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10404
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 10408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10410
    nop

    .line 10411
    return-void

    .line 10408
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10410
    throw p1
.end method

.method public greylist-max-o disableLocationUpdates()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9185
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9188
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9189
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9190
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 9193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9195
    nop

    .line 9196
    return-void

    .line 9193
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9195
    throw v2
.end method

.method public greylist-max-o disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9655
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9657
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9659
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9660
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-interface {p1, v2, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_21

    .line 9663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9664
    nop

    .line 9665
    return-void

    .line 9663
    :catchall_21
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9664
    throw p1
.end method

.method public blacklist doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14044
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14048
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14051
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14052
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf0

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14053
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14054
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14059
    nop

    .line 14060
    return p1

    .line 14057
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14059
    throw p1
.end method

.method public blacklist enableDataConnectivity(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9200
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9204
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9206
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9208
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9213
    nop

    .line 9214
    return p1

    .line 9211
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9213
    throw p1
.end method

.method public greylist-max-o enableIms(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10383
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10386
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10388
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 10392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10394
    nop

    .line 10395
    return-void

    .line 10392
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10394
    throw p1
.end method

.method public greylist-max-o enableLocationUpdates()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9170
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9173
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9174
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 9178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9180
    nop

    .line 9181
    return-void

    .line 9178
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9180
    throw v2
.end method

.method public blacklist enableModemForSlot(IZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13954
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13958
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13960
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13961
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xec

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13963
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 13966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13968
    nop

    .line 13969
    return p1

    .line 13966
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13968
    throw p1
.end method

.method public greylist-max-o enableVideoCalling(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11403
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11406
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11408
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x77

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 11412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11414
    nop

    .line 11415
    return-void

    .line 11412
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11414
    throw p1
.end method

.method public greylist-max-o enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9638
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9641
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9644
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9645
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x31

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 9649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9651
    nop

    .line 9652
    return-void

    .line 9649
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9651
    throw p1
.end method

.method public blacklist enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14280
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14282
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 14286
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0xfc

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 14289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14290
    nop

    .line 14291
    return-void

    .line 14289
    :catchall_24
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14290
    throw p1
.end method

.method public blacklist factoryReset(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11838
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11841
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11844
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 11848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11850
    nop

    .line 11851
    return-void

    .line 11848
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11850
    throw p1
.end method

.method public greylist-max-o getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9692
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9696
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9698
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9700
    sget-object p1, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9705
    nop

    .line 9706
    return-object p1

    .line 9703
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9705
    throw p1
.end method

.method public greylist-max-o getAidForAppType(II)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12087
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12091
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12092
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12093
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12094
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x94

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12096
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 12099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12101
    nop

    .line 12102
    return-object p1

    .line 12099
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12101
    throw p1
.end method

.method public blacklist getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9897
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9901
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9904
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9905
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9906
    sget-object p1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 9909
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9911
    nop

    .line 9912
    return-object p1

    .line 9909
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9911
    throw p1
.end method

.method public blacklist getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12167
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12171
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12172
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12174
    sget-object v2, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierRestrictionRules;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 12177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12179
    nop

    .line 12180
    return-object v2

    .line 12177
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12179
    throw v2
.end method

.method public blacklist getAllowedNetworkTypesBitmask(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10339
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10343
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10345
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10352
    nop

    .line 10353
    return p1

    .line 10350
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10352
    throw p1
.end method

.method public blacklist getAllowedNetworkTypesForReason(II)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10736
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10740
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10743
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10745
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 10748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10750
    nop

    .line 10751
    return-wide p1

    .line 10748
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10750
    throw p1
.end method

.method public blacklist getAttachRestrictionReasonsForCarrier(I)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17149
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17151
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17152
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17153
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17158
    nop

    .line 17159
    return-object p1

    .line 17156
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17158
    throw p1
.end method

.method public blacklist getBoundGbaService(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14755
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14759
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14761
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x114

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14763
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14768
    nop

    .line 14769
    return-object p1

    .line 14766
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14768
    throw p1
.end method

.method public blacklist getBoundImsServicePackage(IZI)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10554
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10558
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10560
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10561
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10562
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x56

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10563
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10564
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 10567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10569
    nop

    .line 10570
    return-object p1

    .line 10567
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10569
    throw p1
.end method

.method public blacklist getCallComposerStatus(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8749
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8753
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8755
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8757
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8762
    nop

    .line 8763
    return p1

    .line 8760
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8762
    throw p1
.end method

.method public blacklist getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12405
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12408
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12410
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12411
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12412
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa0

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 12416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12418
    nop

    .line 12419
    return-void

    .line 12416
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12418
    throw p1
.end method

.method public greylist-max-o getCallState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9319
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9323
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9324
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9331
    nop

    .line 9332
    return v2

    .line 9329
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9331
    throw v2
.end method

.method public blacklist getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9337
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9341
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9343
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9344
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9345
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x23

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9352
    nop

    .line 9353
    return p1

    .line 9350
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9352
    throw p1
.end method

.method public blacklist getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12439
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12442
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12444
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12445
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 12449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12451
    nop

    .line 12452
    return-void

    .line 12449
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12451
    throw p1
.end method

.method public blacklist getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15160
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15164
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15166
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15168
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15173
    nop

    .line 15174
    return-object p1

    .line 15171
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15173
    throw p1
.end method

.method public blacklist getCardIdForDefaultEuicc(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12668
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12672
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12674
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12675
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xab

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12676
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 12680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12682
    nop

    .line 12683
    return p1

    .line 12680
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12682
    throw p1
.end method

.method public blacklist getCarrierIdFromIdentifier(Landroid/service/carrier/CarrierIdentifier;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17979
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17983
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17984
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17985
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a1

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17986
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17987
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17992
    nop

    .line 17993
    return p1

    .line 17990
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17992
    throw p1
.end method

.method public blacklist getCarrierIdFromMccMnc(ILjava/lang/String;Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12317
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12321
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12324
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12325
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9c

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12326
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12327
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 12330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12332
    nop

    .line 12333
    return p1

    .line 12330
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12332
    throw p1
.end method

.method public greylist-max-o getCarrierIdListVersion(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12913
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12917
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12919
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12920
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12921
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12924
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12926
    nop

    .line 12927
    return p1

    .line 12924
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12926
    throw p1
.end method

.method public greylist-max-o getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
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

    .line 11082
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11086
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11087
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11089
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6b

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11090
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11091
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11096
    nop

    .line 11097
    return-object p1

    .line 11094
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11096
    throw p1
.end method

.method public greylist-max-o getCarrierPrivilegeStatus(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10987
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10991
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10993
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10995
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11000
    nop

    .line 11001
    return p1

    .line 10998
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11000
    throw p1
.end method

.method public greylist-max-o getCarrierPrivilegeStatusForUid(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11006
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11010
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11012
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11013
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x68

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11014
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11020
    nop

    .line 11021
    return p1

    .line 11018
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11020
    throw p1
.end method

.method public blacklist getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15946
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15949
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15951
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15952
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x14e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15953
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 15956
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15958
    nop

    .line 15959
    return-void

    .line 15956
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15958
    throw p1
.end method

.method public blacklist getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15694
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15698
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15700
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x143

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15702
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15705
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15707
    nop

    .line 15708
    return-object p1

    .line 15705
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15707
    throw p1
.end method

.method public blacklist getCarrierSingleRegistrationEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15042
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15046
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15048
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x124

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15050
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15055
    nop

    .line 15056
    return p1

    .line 15053
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15055
    throw p1
.end method

.method public blacklist getCellBroadcastIdRanges(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15887
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15891
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15893
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15894
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15895
    sget-object p1, Landroid/telephony/CellBroadcastIdRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 15898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15900
    nop

    .line 15901
    return-object p1

    .line 15898
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15900
    throw p1
.end method

.method public blacklist getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9257
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9261
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9264
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x1f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9266
    sget-object p1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellIdentity;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 9269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9271
    nop

    .line 9272
    return-object p1

    .line 9269
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9271
    throw p1
.end method

.method public blacklist getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10619
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10623
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10626
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10627
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x59

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10629
    sget-object p1, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 10632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10634
    nop

    .line 10635
    return-object p1

    .line 10632
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10634
    throw p1
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;
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

    .line 13590
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13594
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13596
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13598
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13603
    nop

    .line 13604
    return-object p1

    .line 13601
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13603
    throw p1
.end method

.method public blacklist getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12480
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12484
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12485
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12486
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12487
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12488
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12489
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12490
    sget-object p1, Landroid/telephony/ClientRequestStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 12493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12495
    nop

    .line 12496
    return-object p1

    .line 12493
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12495
    throw p1
.end method

.method public blacklist getContactFromEab(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15141
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15145
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15147
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x129

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15149
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15154
    nop

    .line 15155
    return-object p1

    .line 15152
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15154
    throw p1
.end method

.method public blacklist getCurrentPackageName()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14124
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14128
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14129
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14130
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14131
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 14134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14136
    nop

    .line 14137
    return-object v2

    .line 14134
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14136
    throw v2
.end method

.method public greylist-max-o getDataActivationState(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9532
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9536
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9539
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9541
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 9544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9546
    nop

    .line 9547
    return p1

    .line 9544
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9546
    throw p1
.end method

.method public greylist-max-o getDataActivity()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9358
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9362
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9363
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9364
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9365
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9370
    nop

    .line 9371
    return v2

    .line 9368
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9370
    throw v2
.end method

.method public blacklist getDataActivityForSubId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9385
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9389
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9390
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9391
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9392
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9393
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9398
    nop

    .line 9399
    return p1

    .line 9396
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9398
    throw p1
.end method

.method public greylist-max-o getDataEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10795
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10799
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10801
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10802
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10803
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10806
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10808
    nop

    .line 10809
    return p1

    .line 10806
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10808
    throw p1
.end method

.method public blacklist getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9783
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9787
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9789
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9790
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x38

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 9795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9797
    nop

    .line 9798
    return p1

    .line 9795
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9797
    throw p1
.end method

.method public blacklist getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9808
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9812
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9814
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9815
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9816
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x39

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9817
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9818
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9823
    nop

    .line 9824
    return p1

    .line 9821
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9823
    throw p1
.end method

.method public greylist-max-o getDataState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9404
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9408
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9409
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9411
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9416
    nop

    .line 9417
    return v2

    .line 9414
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9416
    throw v2
.end method

.method public blacklist getDataStateForSubId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9430
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9434
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9436
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9438
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9443
    nop

    .line 9444
    return p1

    .line 9441
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9443
    throw p1
.end method

.method public blacklist getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15764
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15768
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15769
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15770
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15771
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x146

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15773
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 15776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15778
    nop

    .line 15779
    return-object p1

    .line 15776
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15778
    throw p1
.end method

.method public blacklist getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11644
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11648
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11650
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x82

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11651
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11652
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11657
    nop

    .line 11658
    return-object p1

    .line 11655
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11657
    throw p1
.end method

.method public blacklist getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11671
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11675
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11678
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x83

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11679
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11680
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11685
    nop

    .line 11686
    return-object p1

    .line 11683
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11685
    throw p1
.end method

.method public blacklist getDeviceSingleRegistrationEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14952
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14956
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14957
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14958
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14959
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 14962
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14964
    nop

    .line 14965
    return v2

    .line 14962
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14963
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14964
    throw v2
.end method

.method public blacklist getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11778
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11782
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11783
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11784
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11785
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11786
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x87

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11787
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11788
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11793
    nop

    .line 11794
    return-object p1

    .line 11791
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11793
    throw p1
.end method

.method public blacklist getDeviceUceEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15179
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15183
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15184
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15186
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 15189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15191
    nop

    .line 15192
    return v2

    .line 15189
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15191
    throw v2
.end method

.method public greylist-max-o getEmergencyCallbackMode(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12615
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12619
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12621
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12623
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12628
    nop

    .line 12629
    return p1

    .line 12626
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12628
    throw p1
.end method

.method public blacklist getEmergencyNumberDbVersion(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13889
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13893
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13895
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13896
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13897
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13900
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13902
    nop

    .line 13903
    return p1

    .line 13900
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13902
    throw p1
.end method

.method public blacklist getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13549
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13553
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13555
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13556
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd6

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13557
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13558
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 13559
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_36

    .line 13562
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13564
    nop

    .line 13565
    return-object p1

    .line 13562
    :catchall_36
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13564
    throw p1
.end method

.method public blacklist getEmergencyNumberListTestMode()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 13871
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13875
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13876
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13877
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13878
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 13881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13883
    nop

    .line 13884
    return-object v2

    .line 13881
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13883
    throw v2
.end method

.method public blacklist getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
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

    .line 14545
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14549
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14553
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14555
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14560
    nop

    .line 14561
    return-object p1

    .line 14558
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14560
    throw p1
.end method

.method public blacklist getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12555
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12559
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12561
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12562
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12563
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12564
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa7

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12565
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12566
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 12569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12571
    nop

    .line 12572
    return-object p1

    .line 12569
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12571
    throw p1
.end method

.method public blacklist getGbaReleaseTime(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14794
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14798
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14800
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x116

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14801
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14802
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14807
    nop

    .line 14808
    return p1

    .line 14805
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14807
    throw p1
.end method

.method public blacklist getHalVersion(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14105
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14109
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14111
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14118
    nop

    .line 14119
    return p1

    .line 14116
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14118
    throw p1
.end method

.method public blacklist getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11699
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11703
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11706
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11707
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x84

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11708
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11709
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11714
    nop

    .line 11715
    return-object p1

    .line 11712
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11714
    throw p1
.end method

.method public greylist-max-o getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10492
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10496
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10499
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x53

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10501
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 10504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10506
    nop

    .line 10507
    return-object p1

    .line 10504
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10506
    throw p1
.end method

.method public blacklist getImsFeatureValidationOverride(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15081
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15085
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15086
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15087
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x126

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15088
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15089
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15094
    nop

    .line 15095
    return p1

    .line 15092
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15094
    throw p1
.end method

.method public blacklist getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10575
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10578
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10581
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x57

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10582
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 10585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10587
    nop

    .line 10588
    return-void

    .line 10585
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10587
    throw p1
.end method

.method public blacklist getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13105
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13108
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13110
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13111
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbe

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13112
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13117
    nop

    .line 13118
    return-void

    .line 13115
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13117
    throw p1
.end method

.method public blacklist getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13122
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13125
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13128
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbf

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13134
    nop

    .line 13135
    return-void

    .line 13132
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13134
    throw p1
.end method

.method public blacklist getImsProvisioningInt(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13757
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13761
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13763
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13764
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 13769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13771
    nop

    .line 13772
    return p1

    .line 13769
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13771
    throw p1
.end method

.method public blacklist getImsProvisioningStatusForCapability(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13696
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13700
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13702
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13703
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13704
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xde

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13705
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13706
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 13709
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13711
    nop

    .line 13712
    return p1

    .line 13709
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13711
    throw p1
.end method

.method public blacklist getImsProvisioningString(II)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13777
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13781
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13784
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13785
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13786
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 13789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13791
    nop

    .line 13792
    return-object p1

    .line 13789
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13791
    throw p1
.end method

.method public greylist-max-o getImsRegTechnologyForMmTel(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11625
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11629
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11631
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x81

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11632
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11633
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11638
    nop

    .line 11639
    return p1

    .line 11636
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11638
    throw p1
.end method

.method public greylist-max-o getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10472
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10476
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10478
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10479
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x52

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10481
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 10484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10486
    nop

    .line 10487
    return-object p1

    .line 10484
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10486
    throw p1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 8594
    const-string v0, "com.android.internal.telephony.ITelephony"

    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15557
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15561
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15564
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15565
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15567
    sget-object p1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellIdentity;
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 15570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15572
    nop

    .line 15573
    return-object p1

    .line 15570
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15572
    throw p1
.end method

.method public blacklist getLastUcePidfXmlShell(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15310
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15314
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15316
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x131

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15318
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15323
    nop

    .line 15324
    return-object p1

    .line 15321
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15323
    throw p1
.end method

.method public blacklist getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15287
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15291
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15293
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x130

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15295
    sget-object p1, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 15298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15300
    nop

    .line 15301
    return-object p1

    .line 15298
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15300
    throw p1
.end method

.method public blacklist getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11171
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11175
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11178
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11179
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6e

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11181
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11186
    nop

    .line 11187
    return-object p1

    .line 11184
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11186
    throw p1
.end method

.method public blacklist getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11141
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11145
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11148
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11149
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11151
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11156
    nop

    .line 11157
    return-object p1

    .line 11154
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11156
    throw p1
.end method

.method public blacklist getManualNetworkSelectionPlmn(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14503
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14507
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14509
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x109

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14511
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14516
    nop

    .line 14517
    return-object p1

    .line 14514
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14516
    throw p1
.end method

.method public blacklist getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11222
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11226
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11229
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x70

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11231
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11236
    nop

    .line 11237
    return-object p1

    .line 11234
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11236
    throw p1
.end method

.method public blacklist getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11201
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11205
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11209
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11211
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11216
    nop

    .line 11217
    return-object p1

    .line 11214
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11216
    throw p1
.end method

.method public blacklist getMmsUAProfUrl(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14326
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14330
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14332
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14334
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14339
    nop

    .line 14340
    return-object p1

    .line 14337
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14339
    throw p1
.end method

.method public blacklist getMmsUserAgent(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14307
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14311
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14313
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xfe

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14314
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14315
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14320
    nop

    .line 14321
    return-object p1

    .line 14318
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14320
    throw p1
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15103
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15107
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15108
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x127

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15110
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 15113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15115
    nop

    .line 15116
    return-object v2

    .line 15113
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15115
    throw v2
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15597
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15601
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15602
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15604
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 15607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15609
    nop

    .line 15610
    return-object v2

    .line 15607
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15609
    throw v2
.end method

.method public blacklist getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9300
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9304
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9306
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9307
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x21

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9309
    sget-object p1, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 9312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9314
    nop

    .line 9315
    return-object p1

    .line 9312
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9314
    throw p1
.end method

.method public greylist-max-o getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9281
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9285
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9287
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9289
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9294
    nop

    .line 9295
    return-object p1

    .line 9292
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9294
    throw p1
.end method

.method public blacklist getNetworkSelectionMode(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12975
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12979
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12980
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12981
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12982
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12983
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12988
    nop

    .line 12989
    return p1

    .line 12986
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12988
    throw p1
.end method

.method public blacklist getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9758
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9762
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9765
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9766
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x37

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9768
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9773
    nop

    .line 9774
    return p1

    .line 9771
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9773
    throw p1
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12954
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12958
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12960
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12961
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12962
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb6

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 12967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12969
    nop

    .line 12970
    return p1

    .line 12967
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12969
    throw p1
.end method

.method public blacklist getPackagesWithCarrierPrivileges(I)Ljava/util/List;
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

    .line 12041
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12045
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12046
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12047
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x92

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12048
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12049
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12054
    nop

    .line 12055
    return-object p1

    .line 12052
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12054
    throw p1
.end method

.method public blacklist getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 12063
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12067
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12068
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12070
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 12073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12075
    nop

    .line 12076
    return-object v2

    .line 12073
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12075
    throw v2
.end method

.method public blacklist getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11820
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11824
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11826
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11828
    sget-object p1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 11831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11833
    nop

    .line 11834
    return-object p1

    .line 11831
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11833
    throw p1
.end method

.method public blacklist getPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15413
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15417
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15418
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x136

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15420
    sget-object v2, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneCapability;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 15423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15425
    nop

    .line 15426
    return-object v2

    .line 15423
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15425
    throw v2
.end method

.method public blacklist getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11727
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11731
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11734
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x85

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11736
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11741
    nop

    .line 11742
    return-object p1

    .line 11739
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11741
    throw p1
.end method

.method public greylist-max-o getRadioAccessFamily(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11360
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11364
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11367
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x75

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11374
    nop

    .line 11375
    return p1

    .line 11372
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11374
    throw p1
.end method

.method public blacklist getRadioHalVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14084
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14088
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14089
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14090
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14091
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 14094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14096
    nop

    .line 14097
    return v2

    .line 14094
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14096
    throw v2
.end method

.method public blacklist getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9117
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9121
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9124
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9125
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 9128
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 9131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9133
    nop

    .line 9134
    return-object p1

    .line 9131
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9133
    throw p1
.end method

.method public blacklist getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13012
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13016
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13017
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13018
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13019
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13020
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb9

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13021
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13022
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 13025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13027
    nop

    .line 13028
    return p1

    .line 13025
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13027
    throw p1
.end method

.method public blacklist getRcsProvisioningStatusForCapability(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13717
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13721
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13724
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13725
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xdf

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13726
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13727
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 13730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13732
    nop

    .line 13733
    return p1

    .line 13730
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13732
    throw p1
.end method

.method public blacklist getRcsSingleRegistrationTestModeEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14918
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14922
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14923
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14924
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14925
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 14928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14930
    nop

    .line 14931
    return v2

    .line 14928
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14930
    throw v2
.end method

.method public blacklist getSatelliteDataOptimizedApps()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 18003
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 18004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 18007
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18008
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18009
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18010
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 18013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18015
    nop

    .line 18016
    return-object v2

    .line 18013
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18015
    throw v2
.end method

.method public blacklist getSatelliteDataSupportMode(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18031
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 18032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 18035
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18036
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18037
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18038
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18039
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 18042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18044
    nop

    .line 18045
    return p1

    .line 18042
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18044
    throw p1
.end method

.method public blacklist getSatelliteDisallowedReasons()[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16409
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16413
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16414
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x162

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16416
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 16419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16421
    nop

    .line 16422
    return-object v2

    .line 16419
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16421
    throw v2
.end method

.method public blacklist getSatellitePlmnsForCarrier(I)Ljava/util/List;
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

    .line 17487
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17491
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17493
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17494
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17495
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17500
    nop

    .line 17501
    return-object p1

    .line 17498
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17500
    throw p1
.end method

.method public blacklist getServiceStateForSlot(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11908
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11912
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11915
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11916
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11917
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11918
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11920
    sget-object p1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ServiceState;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    .line 11923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11925
    nop

    .line 11926
    return-object p1

    .line 11923
    :catchall_3b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11925
    throw p1
.end method

.method public blacklist getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;
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

    .line 17068
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17072
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17074
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17075
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17077
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 17080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17082
    nop

    .line 17083
    return-object p1

    .line 17080
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17082
    throw p1
.end method

.method public greylist-max-o getSignalStrength(I)Landroid/telephony/SignalStrength;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12642
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12646
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12648
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xaa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12650
    sget-object p1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SignalStrength;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 12653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12655
    nop

    .line 12656
    return-object p1

    .line 12653
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12655
    throw p1
.end method

.method public blacklist getSimLocaleForSubscriber(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11860
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11864
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11865
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11866
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11867
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11868
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11871
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11873
    nop

    .line 11874
    return-object p1

    .line 11871
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11873
    throw p1
.end method

.method public blacklist getSimStateForSlotIndex(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15788
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15792
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15794
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x147

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15795
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15801
    nop

    .line 15802
    return p1

    .line 15799
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15801
    throw p1
.end method

.method public blacklist getSlicingConfig(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15463
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15466
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15467
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15468
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x138

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15469
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 15472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15474
    nop

    .line 15475
    return-void

    .line 15472
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15474
    throw p1
.end method

.method public blacklist getSlotsMapping(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14065
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14069
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14071
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14073
    sget-object p1, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 14076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14078
    nop

    .line 14079
    return-object p1

    .line 14076
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14078
    throw p1
.end method

.method public blacklist getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11799
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11803
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11804
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11806
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11807
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x88

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11808
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11809
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11814
    nop

    .line 11815
    return p1

    .line 11812
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11814
    throw p1
.end method

.method public greylist-max-o getSubscriptionCarrierId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12195
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12199
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12201
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x98

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12203
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12208
    nop

    .line 12209
    return p1

    .line 12206
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12208
    throw p1
.end method

.method public greylist-max-o getSubscriptionCarrierName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12226
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12230
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12232
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x99

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12234
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12239
    nop

    .line 12240
    return-object p1

    .line 12237
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12239
    throw p1
.end method

.method public blacklist getSubscriptionSpecificCarrierId(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12261
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12265
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12267
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12269
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12274
    nop

    .line 12275
    return p1

    .line 12272
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12274
    throw p1
.end method

.method public blacklist getSubscriptionSpecificCarrierName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12289
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12293
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12295
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12297
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12302
    nop

    .line 12303
    return-object p1

    .line 12300
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12302
    throw p1
.end method

.method public blacklist getSystemSelectionChannels(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14238
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14242
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14244
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xfa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14246
    sget-object p1, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 14249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14251
    nop

    .line 14252
    return-object p1

    .line 14249
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14251
    throw p1
.end method

.method public greylist-max-o getTelephonyHistograms()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12113
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12117
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12118
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12120
    sget-object v2, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 12123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12125
    nop

    .line 12126
    return-object v2

    .line 12123
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12125
    throw v2
.end method

.method public blacklist getTestEuiccUiComponent()Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17879
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17883
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17884
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17885
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17886
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 17889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17891
    nop

    .line 17892
    return-object v2

    .line 17889
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17891
    throw v2
.end method

.method public blacklist getTypeAllocationCodeForSlot(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11751
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11755
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11757
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x86

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11759
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11764
    nop

    .line 11765
    return-object p1

    .line 11762
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11764
    throw p1
.end method

.method public blacklist getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12708
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12712
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12714
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xac

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12716
    sget-object p1, Landroid/telephony/UiccCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 12719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12721
    nop

    .line 12722
    return-object p1

    .line 12719
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12721
    throw p1
.end method

.method public blacklist getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12731
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12735
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12737
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xad

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12739
    sget-object p1, Landroid/telephony/UiccSlotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/UiccSlotInfo;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 12742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12744
    nop

    .line 12745
    return-object p1

    .line 12742
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12744
    throw p1
.end method

.method public blacklist getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9617
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9621
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9623
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9624
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9625
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x30

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9626
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9627
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9632
    nop

    .line 9633
    return-object p1

    .line 9630
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9632
    throw p1
.end method

.method public greylist-max-o getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9598
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9602
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9603
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9604
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9605
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9606
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9607
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 9610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9612
    nop

    .line 9613
    return-object p1

    .line 9610
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9612
    throw p1
.end method

.method public greylist-max-o getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9669
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9673
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9676
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x33

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9678
    sget-object p1, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 9681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9683
    nop

    .line 9684
    return-object p1

    .line 9681
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9683
    throw p1
.end method

.method public blacklist getVoWiFiModeSetting(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13435
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13439
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13441
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13448
    nop

    .line 13449
    return p1

    .line 13446
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13448
    throw p1
.end method

.method public blacklist getVoWiFiRoamingModeSetting(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13474
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13478
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13480
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13481
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13487
    nop

    .line 13488
    return p1

    .line 13485
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13487
    throw p1
.end method

.method public greylist-max-o getVoiceActivationState(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9508
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9512
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9515
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 9520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9522
    nop

    .line 9523
    return p1

    .line 9520
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9522
    throw p1
.end method

.method public blacklist getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9556
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9560
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9564
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2d

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9565
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9569
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9571
    nop

    .line 9572
    return p1

    .line 9569
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9570
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9571
    throw p1
.end method

.method public blacklist getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9835
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9839
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9842
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9843
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9845
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9850
    nop

    .line 9851
    return p1

    .line 9848
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9850
    throw p1
.end method

.method public greylist-max-o getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11938
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11942
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11943
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11944
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11945
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11946
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 11949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11951
    nop

    .line 11952
    return-object p1

    .line 11949
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11951
    throw p1
.end method

.method public greylist-max-o handlePinMmi(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8883
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8887
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8889
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8890
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8891
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8896
    nop

    .line 8897
    return p1

    .line 8894
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8896
    throw p1
.end method

.method public greylist-max-o handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8933
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8937
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8939
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8940
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8942
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8947
    nop

    .line 8948
    return p1

    .line 8945
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8947
    throw p1
.end method

.method public greylist-max-o handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8908
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8911
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8912
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8913
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8914
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8915
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0xe

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8921
    nop

    .line 8922
    return-void

    .line 8919
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8921
    throw p1
.end method

.method public greylist-max-o hasIccCard()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9856
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9860
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9861
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9862
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9863
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 9866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9868
    nop

    .line 9869
    return v2

    .line 9866
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9868
    throw v2
.end method

.method public greylist-max-o hasIccCardUsingSlotIndex(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9878
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9882
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9883
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9884
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9885
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9886
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9891
    nop

    .line 9892
    return p1

    .line 9889
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9891
    throw p1
.end method

.method public blacklist iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10014
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10018
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10019
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10020
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10021
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10022
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10027
    nop

    .line 10028
    return p1

    .line 10025
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10027
    throw p1
.end method

.method public greylist-max-o iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10218
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10222
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10225
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10226
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10227
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10228
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10229
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10230
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x47

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10232
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_3d

    .line 10235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10237
    nop

    .line 10238
    return-object p1

    .line 10235
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10237
    throw p1
.end method

.method public blacklist iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9988
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9992
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9993
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9994
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9995
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9996
    sget-object p1, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2f

    .line 9999
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10001
    nop

    .line 10002
    return-object p1

    .line 9999
    :catchall_2f
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10001
    throw p1
.end method

.method public greylist-max-o iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10181
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10185
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10188
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10189
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10190
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10191
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10192
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 10193
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10194
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x46

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10196
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_40

    .line 10199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10201
    nop

    .line 10202
    return-object p1

    .line 10199
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10201
    throw p1
.end method

.method public blacklist iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10138
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10142
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10145
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10146
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10147
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10148
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10149
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 10150
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 10151
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10152
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x45

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10154
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_43

    .line 10157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10159
    nop

    .line 10160
    return-object p1

    .line 10157
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10159
    throw p1
.end method

.method public greylist-max-o iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10095
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10099
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10103
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10104
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10105
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10106
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 10107
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10108
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x44

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10110
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_40

    .line 10113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10115
    nop

    .line 10116
    return-object p1

    .line 10113
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10115
    throw p1
.end method

.method public blacklist iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10051
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10055
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10056
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10057
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10058
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10059
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10060
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10061
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10062
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 10063
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 10064
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10065
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x43

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10067
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_43

    .line 10070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10072
    nop

    .line 10073
    return-object p1

    .line 10070
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10072
    throw p1
.end method

.method public blacklist isAdvancedCallingSettingEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13234
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13238
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13240
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13241
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13242
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13247
    nop

    .line 13248
    return p1

    .line 13245
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13247
    throw p1
.end method

.method public blacklist isAospDomainSelectionService()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17352
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17356
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17357
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x188

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17359
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 17362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17364
    nop

    .line 17365
    return v2

    .line 17362
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17364
    throw v2
.end method

.method public blacklist isApnMetered(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14205
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14209
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14211
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14212
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf8

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14214
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14219
    nop

    .line 14220
    return p1

    .line 14217
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14219
    throw p1
.end method

.method public blacklist isApplicationOnUicc(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14146
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14150
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14153
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf5

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14154
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14155
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14158
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14160
    nop

    .line 14161
    return p1

    .line 14158
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14160
    throw p1
.end method

.method public blacklist isAvailable(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13194
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13198
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13202
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc3

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13204
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 13207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13209
    nop

    .line 13210
    return p1

    .line 13207
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13209
    throw p1
.end method

.method public blacklist isCapable(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13173
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13177
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13179
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13180
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13181
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13183
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 13186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13188
    nop

    .line 13189
    return p1

    .line 13186
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13188
    throw p1
.end method

.method public blacklist isCellularIdentifierDisclosureNotificationsEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17409
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17413
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17414
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17415
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17416
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 17419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17421
    nop

    .line 17422
    return v2

    .line 17419
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17421
    throw v2
.end method

.method public greylist-max-o isConcurrentVoiceAndDataAllowed(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9580
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9584
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9586
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9587
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9588
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9593
    nop

    .line 9594
    return p1

    .line 9591
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9593
    throw p1
.end method

.method public blacklist isCrossSimCallingEnabledByUser(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13342
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13346
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13348
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xcb

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13350
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13355
    nop

    .line 13356
    return p1

    .line 13353
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13355
    throw p1
.end method

.method public greylist-max-o isDataConnectivityPossible(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9238
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9242
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9244
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9246
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9251
    nop

    .line 9252
    return p1

    .line 9249
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9251
    throw p1
.end method

.method public greylist-max-o isDataEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10841
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10845
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10847
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x61

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10848
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10849
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10854
    nop

    .line 10855
    return p1

    .line 10852
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10854
    throw p1
.end method

.method public blacklist isDataEnabledForApn(IILjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14185
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14189
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14192
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14193
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf7

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14195
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14200
    nop

    .line 14201
    return p1

    .line 14198
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14200
    throw p1
.end method

.method public blacklist isDataEnabledForReason(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10891
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10895
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10896
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10897
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10898
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x63

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10899
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10900
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 10903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10905
    nop

    .line 10906
    return p1

    .line 10903
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10905
    throw p1
.end method

.method public blacklist isDataRoamingEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12813
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12817
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12819
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12821
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12826
    nop

    .line 12827
    return p1

    .line 12824
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12826
    throw p1
.end method

.method public blacklist isDomainSelectionSupported()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15928
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15932
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15933
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15935
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 15938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15940
    nop

    .line 15941
    return v2

    .line 15938
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15940
    throw v2
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/String;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13570
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13574
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13576
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13577
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd7

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13579
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 13582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13584
    nop

    .line 13585
    return p1

    .line 13582
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13584
    throw p1
.end method

.method public greylist-max-o isHearingAidCompatibilitySupported()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11544
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11548
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11549
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11551
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 11554
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11556
    nop

    .line 11557
    return v2

    .line 11554
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11556
    throw v2
.end method

.method public blacklist isIccLockEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14411
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14415
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14417
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x104

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14418
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14419
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14422
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14424
    nop

    .line 14425
    return p1

    .line 14422
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14424
    throw p1
.end method

.method public greylist-max-o isImsRegistered(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11568
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11572
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11574
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x7e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11576
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11581
    nop

    .line 11582
    return p1

    .line 11579
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11581
    throw p1
.end method

.method public blacklist isInEmergencySmsMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12994
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12998
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12999
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13000
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13001
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 13004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13006
    nop

    .line 13007
    return v2

    .line 13004
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13006
    throw v2
.end method

.method public blacklist isManualNetworkSelectionAllowed(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10915
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10919
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10921
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10922
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10923
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10928
    nop

    .line 10929
    return p1

    .line 10926
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10928
    throw p1
.end method

.method public blacklist isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13215
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13218
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13220
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13221
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13222
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 13223
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 13227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13229
    nop

    .line 13230
    return-void

    .line 13227
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13229
    throw p1
.end method

.method public blacklist isMobileDataPolicyEnabled(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14365
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14368
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x101

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14370
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14375
    nop

    .line 14376
    return p1

    .line 14373
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14375
    throw p1
.end method

.method public blacklist isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14165
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14169
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14170
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14172
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14173
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf6

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14175
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14180
    nop

    .line 14181
    return p1

    .line 14178
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14180
    throw p1
.end method

.method public blacklist isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14002
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14006
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14007
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14008
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14009
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xee

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14010
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14016
    nop

    .line 14017
    return p1

    .line 14014
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14016
    throw p1
.end method

.method public blacklist isMvnoMatched(IILjava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14256
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14260
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14263
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14264
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xfb

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14266
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14271
    nop

    .line 14272
    return p1

    .line 14269
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14271
    throw p1
.end method

.method public blacklist isNrDualConnectivityEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14643
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14647
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14648
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14649
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14650
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14651
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14656
    nop

    .line 14657
    return p1

    .line 14654
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14656
    throw p1
.end method

.method public blacklist isNullCipherAndIntegrityPreferenceEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15869
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15873
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15874
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15875
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15876
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 15879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15881
    nop

    .line 15882
    return v2

    .line 15879
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15881
    throw v2
.end method

.method public blacklist isNullCipherNotificationsEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17461
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17465
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17466
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17468
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 17471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17473
    nop

    .line 17474
    return v2

    .line 17471
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17473
    throw v2
.end method

.method public blacklist isPremiumCapabilityAvailableForPurchase(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15479
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15483
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15486
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x139

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15488
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 15491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15493
    nop

    .line 15494
    return p1

    .line 15491
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15493
    throw p1
.end method

.method public blacklist isProvisioningRequiredForCapability(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15619
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15623
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15626
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15627
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x140

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15629
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 15632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15634
    nop

    .line 15635
    return p1

    .line 15632
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15634
    throw p1
.end method

.method public blacklist isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14667
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14671
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14673
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x110

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14674
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14675
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14680
    nop

    .line 14681
    return p1

    .line 14678
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14680
    throw p1
.end method

.method public blacklist isRadioOn(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8641
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8645
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8647
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8648
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8649
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 8652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8654
    nop

    .line 8655
    return p1

    .line 8652
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8654
    throw p1
.end method

.method public greylist-max-o isRadioOnForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8685
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8689
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8691
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8692
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8693
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8694
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8699
    nop

    .line 8700
    return p1

    .line 8697
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8699
    throw p1
.end method

.method public blacklist isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8711
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8715
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8717
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8718
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8719
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8720
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8721
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 8724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8726
    nop

    .line 8727
    return p1

    .line 8724
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8726
    throw p1
.end method

.method public blacklist isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8665
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8669
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8672
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8673
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8674
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 8677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8679
    nop

    .line 8680
    return p1

    .line 8677
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8679
    throw p1
.end method

.method public blacklist isRcsProvisioningRequiredForCapability(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15644
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15648
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15651
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15652
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x141

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15654
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 15657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15659
    nop

    .line 15660
    return p1

    .line 15657
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15659
    throw p1
.end method

.method public blacklist isRcsVolteSingleRegistrationCapable(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14833
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14837
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14839
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x118

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14841
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14846
    nop

    .line 14847
    return p1

    .line 14844
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14846
    throw p1
.end method

.method public blacklist isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15738
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15742
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15744
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x145

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15746
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15751
    nop

    .line 15752
    return p1

    .line 15749
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15751
    throw p1
.end method

.method public blacklist isRttSupported(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11521
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11525
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11527
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x7c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11529
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11534
    nop

    .line 11535
    return p1

    .line 11532
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11534
    throw p1
.end method

.method public blacklist isTetheringApnRequiredForSubscriber(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10364
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10368
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10370
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10372
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10377
    nop

    .line 10378
    return p1

    .line 10375
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10377
    throw p1
.end method

.method public greylist-max-o isTtyModeSupported()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11504
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11508
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11509
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11511
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 11514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11516
    nop

    .line 11517
    return v2

    .line 11514
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11516
    throw v2
.end method

.method public blacklist isTtyOverVolteEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13530
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13534
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13536
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13538
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13543
    nop

    .line 13544
    return p1

    .line 13541
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13543
    throw p1
.end method

.method public greylist-max-o isUserDataEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10818
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10822
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10823
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10824
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x60

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10826
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10831
    nop

    .line 10832
    return p1

    .line 10829
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10831
    throw p1
.end method

.method public blacklist isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11425
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11429
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11431
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11432
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x78

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11433
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11434
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11439
    nop

    .line 11440
    return p1

    .line 11437
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11439
    throw p1
.end method

.method public greylist-max-o isVideoTelephonyAvailable(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11606
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11610
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11612
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11614
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11619
    nop

    .line 11620
    return p1

    .line 11617
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11619
    throw p1
.end method

.method public blacklist isVoNrEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14594
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14598
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14600
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14602
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 14605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14607
    nop

    .line 14608
    return p1

    .line 14605
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14607
    throw p1
.end method

.method public blacklist isVoWiFiRoamingSettingEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13378
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13382
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13384
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xcd

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13386
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13391
    nop

    .line 13392
    return p1

    .line 13389
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13391
    throw p1
.end method

.method public blacklist isVoWiFiSettingEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13306
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13310
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13312
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13314
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13319
    nop

    .line 13320
    return p1

    .line 13317
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13319
    throw p1
.end method

.method public greylist-max-o isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11991
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11995
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11996
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11997
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11998
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11999
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12002
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12004
    nop

    .line 12005
    return p1

    .line 12002
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12004
    throw p1
.end method

.method public blacklist isVtSettingEnabled(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13270
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13274
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13276
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13278
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 13281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13283
    nop

    .line 13284
    return p1

    .line 13281
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13283
    throw p1
.end method

.method public greylist-max-o isWifiCallingAvailable(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11587
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11591
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11593
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x7f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11595
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 11598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11600
    nop

    .line 11601
    return p1

    .line 11598
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11600
    throw p1
.end method

.method public blacklist isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11479
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11483
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11486
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11487
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x7a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11488
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11489
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11494
    nop

    .line 11495
    return p1

    .line 11492
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11494
    throw p1
.end method

.method public greylist-max-o needMobileRadioShutdown()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11321
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11325
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11326
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11328
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 11331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11333
    nop

    .line 11334
    return v2

    .line 11331
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11333
    throw v2
.end method

.method public blacklist notifyOtaEmergencyNumberDbInstalled()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13908
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13911
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13912
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 13916
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13918
    nop

    .line 13919
    return-void

    .line 13916
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13918
    throw v2
.end method

.method public blacklist notifyRcsAutoConfigurationReceived(I[BZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14394
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14397
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14400
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14401
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x103

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 14405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14407
    nop

    .line 14408
    return-void

    .line 14405
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14407
    throw p1
.end method

.method public blacklist overrideCarrierRoamingNtnEligibilityChanged(ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17904
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17908
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17911
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17913
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 17916
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17918
    nop

    .line 17919
    return p1

    .line 17916
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17918
    throw p1
.end method

.method public blacklist overrideConfigDataVersion(ZI)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17048
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17052
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17054
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17055
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17056
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17057
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 17060
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17062
    nop

    .line 17063
    return p1

    .line 17060
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17062
    throw p1
.end method

.method public blacklist overrideSatelliteEntilementQueryConditions(ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17687
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17691
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17693
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17694
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x195

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17696
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 17699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17701
    nop

    .line 17702
    return p1

    .line 17699
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17701
    throw p1
.end method

.method public blacklist overrideSatelliteEntilementStatusResponseForCtsTest(Ljava/lang/String;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17661
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17665
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17668
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x194

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17670
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 17673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17675
    nop

    .line 17676
    return p1

    .line 17673
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17675
    throw p1
.end method

.method public blacklist persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15817
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15820
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15822
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15823
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 15824
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15825
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15826
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x148

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 15830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15832
    nop

    .line 15833
    return-void

    .line 15830
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15832
    throw p1
.end method

.method public blacklist pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16362
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16365
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16367
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x160

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16373
    nop

    .line 16374
    return-void

    .line 16371
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16373
    throw p1
.end method

.method public blacklist prepareForUnattendedReboot()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15442
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15446
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15447
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x137

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 15452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15454
    nop

    .line 15455
    return v2

    .line 15452
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15454
    throw v2
.end method

.method public blacklist provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17805
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17808
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17809
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 17810
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17811
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x19a

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 17815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17817
    nop

    .line 17818
    return-void

    .line 17815
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17817
    throw p1
.end method

.method public blacklist provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16152
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16156
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16158
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 16159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16160
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x157

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16162
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_35

    .line 16165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16167
    nop

    .line 16168
    return-object p1

    .line 16165
    :catchall_35
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16167
    throw p1
.end method

.method public blacklist purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15499
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15502
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15505
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15506
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13a

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 15510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15512
    nop

    .line 15513
    return-void

    .line 15510
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15512
    throw p1
.end method

.method public blacklist rebootModem(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10314
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10318
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10320
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10321
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10322
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10327
    nop

    .line 10328
    return p1

    .line 10325
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10327
    throw p1
.end method

.method public greylist-max-o refreshUiccProfile(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12935
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12938
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12939
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12940
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb5

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 12944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12946
    nop

    .line 12947
    return-void

    .line 12944
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12946
    throw p1
.end method

.method public blacklist registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13643
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13646
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13649
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xdb

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13650
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13655
    nop

    .line 13656
    return-void

    .line 13653
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13655
    throw p1
.end method

.method public blacklist registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17237
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17241
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17243
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x183

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17250
    nop

    .line 17251
    return p1

    .line 17248
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17250
    throw p1
.end method

.method public blacklist registerForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17559
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17563
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17564
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17565
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17566
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x190

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 17571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17573
    nop

    .line 17574
    return p1

    .line 17571
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17573
    throw p1
.end method

.method public blacklist registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16318
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16322
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16324
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16331
    nop

    .line 16332
    return p1

    .line 16329
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16331
    throw p1
.end method

.method public blacklist registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17195
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17198
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17200
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x181

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17206
    nop

    .line 17207
    return-void

    .line 17204
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17206
    throw p1
.end method

.method public blacklist registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16431
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16434
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16436
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x163

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16437
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16442
    nop

    .line 16443
    return-void

    .line 16440
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16442
    throw p1
.end method

.method public blacklist registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16272
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16276
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16278
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16280
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16285
    nop

    .line 16286
    return p1

    .line 16283
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16285
    throw p1
.end method

.method public blacklist registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16205
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16209
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16211
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x159

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16218
    nop

    .line 16219
    return p1

    .line 16216
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16218
    throw p1
.end method

.method public blacklist registerForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17512
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17516
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17518
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17519
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17520
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17525
    nop

    .line 17526
    return p1

    .line 17523
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17525
    throw p1
.end method

.method public blacklist registerForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16560
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16564
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16566
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x169

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16573
    nop

    .line 16574
    return p1

    .line 16571
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16573
    throw p1
.end method

.method public blacklist registerImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13068
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13071
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13073
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13074
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbc

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13080
    nop

    .line 13081
    return-void

    .line 13078
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13080
    throw p1
.end method

.method public blacklist registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13609
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13612
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13614
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13615
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd9

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13616
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13621
    nop

    .line 13622
    return-void

    .line 13619
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13621
    throw p1
.end method

.method public blacklist registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13034
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13037
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13040
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xba

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13041
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13046
    nop

    .line 13047
    return-void

    .line 13044
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13046
    throw p1
.end method

.method public blacklist registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15517
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15520
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15523
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15524
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15525
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13b

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 15529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15531
    nop

    .line 15532
    return-void

    .line 15529
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15531
    throw p1
.end method

.method public blacklist registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13139
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13142
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13145
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc0

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13151
    nop

    .line 13152
    return-void

    .line 13149
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13151
    throw p1
.end method

.method public blacklist registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10435
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10438
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10440
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10441
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x50

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 10445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10447
    nop

    .line 10448
    return-void

    .line 10445
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10447
    throw p1
.end method

.method public blacklist registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14852
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14855
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14856
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14857
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 14858
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x119

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14859
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 14862
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14864
    nop

    .line 14865
    return-void

    .line 14862
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14864
    throw p1
.end method

.method public blacklist removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17120
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17123
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17126
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17127
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17e

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 17131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17133
    nop

    .line 17134
    return-void

    .line 17131
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17133
    throw p1
.end method

.method public blacklist removeContactFromEab(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15125
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15127
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15128
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x128

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 15133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15135
    nop

    .line 15136
    return p1

    .line 15133
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15135
    throw p1
.end method

.method public blacklist removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15241
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15245
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 15248
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15250
    sget-object p1, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_32

    .line 15253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15255
    nop

    .line 15256
    return-object p1

    .line 15253
    :catchall_32
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15255
    throw p1
.end method

.method public blacklist removeUceRequestDisallowedStatus(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15332
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15336
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15338
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x132

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15340
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15345
    nop

    .line 15346
    return p1

    .line 15343
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15345
    throw p1
.end method

.method public blacklist requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9920
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9923
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9924
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9925
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9926
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9927
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9928
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x3e

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9929
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 9932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9934
    nop

    .line 9935
    return-void

    .line 9932
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9934
    throw p1
.end method

.method public blacklist requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9944
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9947
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9948
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9949
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9950
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9951
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9952
    const/4 p1, 0x0

    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9953
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x3f

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 9957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9959
    nop

    .line 9960
    return-void

    .line 9957
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9959
    throw p1
.end method

.method public blacklist requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16475
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16478
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16480
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16481
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x165

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 16485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16487
    nop

    .line 16488
    return-void

    .line 16485
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16487
    throw p1
.end method

.method public blacklist requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16019
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16022
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16023
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16024
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x151

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16025
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16030
    nop

    .line 16031
    return-void

    .line 16028
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16030
    throw p1
.end method

.method public blacklist requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16040
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16043
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16044
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16045
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x152

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16051
    nop

    .line 16052
    return-void

    .line 16049
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16051
    throw p1
.end method

.method public blacklist requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15998
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16001
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16002
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16003
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x150

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16009
    nop

    .line 16010
    return-void

    .line 16007
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16009
    throw p1
.end method

.method public blacklist requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16250
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16253
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16254
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16255
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15b

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16256
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16261
    nop

    .line 16262
    return-void

    .line 16259
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16261
    throw p1
.end method

.method public blacklist requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16061
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16064
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16065
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16066
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x153

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16067
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16072
    nop

    .line 16073
    return-void

    .line 16070
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16072
    throw p1
.end method

.method public greylist-max-o requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11885
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11887
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11888
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11889
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    .line 11892
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11893
    nop

    .line 11894
    return-void

    .line 11892
    :catchall_1f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11893
    throw p1
.end method

.method public blacklist requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10652
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10656
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10657
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10658
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10659
    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10660
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10661
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10662
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10663
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10664
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x5a

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_3d

    .line 10669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10671
    nop

    .line 10672
    return p1

    .line 10669
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10671
    throw p1
.end method

.method public blacklist requestNtnSignalStrength(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17169
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17172
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17173
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17174
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x180

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17180
    nop

    .line 17181
    return-void

    .line 17178
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17180
    throw p1
.end method

.method public blacklist requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10957
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10960
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10961
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10962
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 10963
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10964
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10965
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x66

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10966
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 10969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10971
    nop

    .line 10972
    return-void

    .line 10969
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10971
    throw p1
.end method

.method public blacklist requestRadioPowerOffForReason(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9063
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9067
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9069
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9070
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x15

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9072
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 9075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9077
    nop

    .line 9078
    return p1

    .line 9075
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9077
    throw p1
.end method

.method public blacklist requestSatelliteAccessConfigurationForCurrentLocation(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16497
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16500
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16501
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16502
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x166

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16508
    nop

    .line 16509
    return-void

    .line 16506
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16508
    throw p1
.end method

.method public blacklist requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16082
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16085
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16086
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16087
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x154

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16088
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16091
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16093
    nop

    .line 16094
    return-void

    .line 16091
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16093
    throw p1
.end method

.method public blacklist requestSatelliteDisplayName(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17783
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17786
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17787
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17788
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x199

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17794
    nop

    .line 17795
    return-void

    .line 17792
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17794
    throw p1
.end method

.method public blacklist requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15974
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15977
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15980
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15981
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15982
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x14f

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 15986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15988
    nop

    .line 15989
    return-void

    .line 15986
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15988
    throw p1
.end method

.method public blacklist requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17738
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17741
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17743
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17744
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x197

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 17748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17750
    nop

    .line 17751
    return-void

    .line 17748
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17750
    throw p1
.end method

.method public blacklist requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17761
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17764
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17765
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17766
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x198

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17770
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17772
    nop

    .line 17773
    return-void

    .line 17770
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17772
    throw p1
.end method

.method public blacklist requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16539
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16542
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16543
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16544
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x168

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16550
    nop

    .line 16551
    return-void

    .line 16548
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16550
    throw p1
.end method

.method public blacklist requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16518
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16521
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16522
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16523
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x167

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16524
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16529
    nop

    .line 16530
    return-void

    .line 16527
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16529
    throw p1
.end method

.method public blacklist requestUserActivityNotification()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14470
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14472
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14473
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x107

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 14476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14477
    nop

    .line 14478
    return-void

    .line 14476
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14477
    throw v1
.end method

.method public blacklist resetIms(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10415
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10418
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10420
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 10424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10426
    nop

    .line 10427
    return-void

    .line 10424
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10426
    throw p1
.end method

.method public blacklist resetModemConfig(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10285
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10289
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10291
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x49

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10293
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 10296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10298
    nop

    .line 10299
    return p1

    .line 10296
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10298
    throw p1
.end method

.method public blacklist resetOtaEmergencyNumberDbFilePath()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13939
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13942
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13943
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 13947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13949
    nop

    .line 13950
    return-void

    .line 13947
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13949
    throw v2
.end method

.method public blacklist sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16386
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16389
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16390
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16391
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16392
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16393
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16394
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x161

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 16398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16400
    nop

    .line 16401
    return-void

    .line 16398
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16400
    throw p1
.end method

.method public blacklist sendDeviceToDeviceMessage(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14990
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14991
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14993
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14995
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14996
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x121

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14997
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 15000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15002
    nop

    .line 15003
    return-void

    .line 15000
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15002
    throw p1
.end method

.method public greylist-max-o sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9736
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9739
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9740
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9741
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9742
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x36

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 9746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9748
    nop

    .line 9749
    return-void

    .line 9746
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9748
    throw p1
.end method

.method public greylist-max-o sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10253
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10257
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10259
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10260
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x48

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10261
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10262
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 10265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10267
    nop

    .line 10268
    return-object p1

    .line 10265
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10267
    throw p1
.end method

.method public blacklist sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14693
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14697
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14698
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14699
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14700
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14701
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x111

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14702
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14703
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14706
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14708
    nop

    .line 14709
    return p1

    .line 14706
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14708
    throw p1
.end method

.method public blacklist sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9714
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9717
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9718
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9719
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9720
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9721
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9722
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9723
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9724
    const/4 p1, 0x0

    invoke-virtual {v0, p7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9725
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x35

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9726
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_39

    .line 9729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9731
    nop

    .line 9732
    return-void

    .line 9729
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9731
    throw p1
.end method

.method public blacklist setActiveDeviceToDeviceTransport(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15007
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15010
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15012
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x122

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 15016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15018
    nop

    .line 15019
    return-void

    .line 15016
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15018
    throw p1
.end method

.method public blacklist setAdvancedCallingSettingEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13253
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13256
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13259
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc6

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13265
    nop

    .line 13266
    return-void

    .line 13263
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13265
    throw p1
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12140
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12144
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12145
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12146
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12153
    nop

    .line 12154
    return p1

    .line 12151
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12153
    throw p1
.end method

.method public blacklist setAllowedNetworkTypesForReason(IIJLjava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10764
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10768
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10769
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10770
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10771
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 10772
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10773
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5e

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10775
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_34

    .line 10778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10780
    nop

    .line 10781
    return p1

    .line 10778
    :catchall_34
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10780
    throw p1
.end method

.method public blacklist setBoundGbaServiceOverride(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14735
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14739
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14740
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14741
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14742
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x113

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14744
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14749
    nop

    .line 14750
    return p1

    .line 14747
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14749
    throw p1
.end method

.method public blacklist setBoundImsServiceOverride(IIZ[ILjava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10512
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10516
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10519
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10520
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 10521
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10522
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x54

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10524
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 10527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10529
    nop

    .line 10530
    return p1

    .line 10527
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10529
    throw p1
.end method

.method public blacklist setCallComposerStatus(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8732
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8735
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8738
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_29

    .line 8742
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8744
    nop

    .line 8745
    return-void

    .line 8742
    :catchall_29
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8744
    throw p1
.end method

.method public blacklist setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12422
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12425
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12427
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12428
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12429
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0xa1

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 12433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12435
    nop

    .line 12436
    return-void

    .line 12433
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12435
    throw p1
.end method

.method public blacklist setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12455
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12458
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12460
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12461
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12462
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa3

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 12466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12468
    nop

    .line 12469
    return-void

    .line 12466
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12468
    throw p1
.end method

.method public blacklist setCapabilitiesRequestTimeout(IJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15354
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15358
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15360
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 15361
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x133

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15363
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 15366
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15368
    nop

    .line 15369
    return p1

    .line 15366
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15368
    throw p1
.end method

.method public blacklist setCarrierServicePackageOverride(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12895
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12898
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12900
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12901
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12902
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb3

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12903
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 12906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12908
    nop

    .line 12909
    return-void

    .line 12906
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12908
    throw p1
.end method

.method public blacklist setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14970
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14974
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14976
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14977
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x120

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14978
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14979
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14982
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14984
    nop

    .line 14985
    return p1

    .line 14982
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14984
    throw p1
.end method

.method public blacklist setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12858
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12861
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12863
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12864
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12865
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12866
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12867
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12868
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12869
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12870
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12871
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12872
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_42

    .line 12876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12878
    nop

    .line 12879
    return-void

    .line 12876
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12878
    throw p1
.end method

.method public blacklist setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Lcom/android/internal/telephony/IIntegerConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15906
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15909
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15910
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15911
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 15912
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15913
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x14c

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15914
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 15917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15919
    nop

    .line 15920
    return-void

    .line 15917
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15919
    throw p1
.end method

.method public blacklist setCellInfoListRate(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9964
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9967
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9969
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9970
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x40

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9971
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 9974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9976
    nop

    .line 9977
    return-void

    .line 9974
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9976
    throw p1
.end method

.method public blacklist setCepEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14381
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14383
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14384
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14385
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x102

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 14388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14389
    nop

    .line 14390
    return-void

    .line 14388
    :catchall_1e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14389
    throw p1
.end method

.method public blacklist setCountryCodes(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16900
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16904
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 16907
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 16908
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16909
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 16910
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x176

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16911
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16912
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 16915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16917
    nop

    .line 16918
    return p1

    .line 16915
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16917
    throw p1
.end method

.method public blacklist setCrossSimCallingEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13361
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13364
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13367
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xcc

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13373
    nop

    .line 13374
    return-void

    .line 13371
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13373
    throw p1
.end method

.method public blacklist setCtsMode(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16630
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16634
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16635
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16636
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16638
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16643
    nop

    .line 16644
    return p1

    .line 16641
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16643
    throw p1
.end method

.method public greylist-max-o setDataActivationState(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9487
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9490
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9493
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x2a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9494
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 9497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9499
    nop

    .line 9500
    return-void

    .line 9497
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9499
    throw p1
.end method

.method public blacklist setDataEnabledForReason(IIZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10867
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10870
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10872
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10873
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10874
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10875
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x62

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 10879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10881
    nop

    .line 10882
    return-void

    .line 10879
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10881
    throw p1
.end method

.method public blacklist setDataRoamingEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12837
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12840
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12842
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12843
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 12847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12849
    nop

    .line 12850
    return-void

    .line 12847
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12849
    throw p1
.end method

.method public blacklist setDatagramControllerBooleanConfig(ZIZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17608
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17612
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17614
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17615
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17616
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x192

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17618
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 17621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17623
    nop

    .line 17624
    return p1

    .line 17621
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17623
    throw p1
.end method

.method public blacklist setDatagramControllerTimeoutDuration(ZIJ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16812
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16816
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16818
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16819
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 16820
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x173

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16821
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16822
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 16825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16827
    nop

    .line 16828
    return p1

    .line 16825
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16827
    throw p1
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16607
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16610
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16612
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16613
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16616
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16618
    nop

    .line 16619
    return-void

    .line 16616
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16618
    throw p1
.end method

.method public blacklist setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14936
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14939
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14941
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 14945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14947
    nop

    .line 14948
    return-void

    .line 14945
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14947
    throw p1
.end method

.method public blacklist setDeviceToDeviceForceEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15026
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15029
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15031
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x123

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15032
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 15035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15037
    nop

    .line 15038
    return-void

    .line 15035
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15037
    throw p1
.end method

.method public blacklist setDeviceUceEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15197
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15200
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15202
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15203
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 15206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15208
    nop

    .line 15209
    return-void

    .line 15206
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15208
    throw p1
.end method

.method public blacklist setDomainSelectionServiceOverride(Landroid/content/ComponentName;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17309
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17313
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17314
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17315
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x186

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17317
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17322
    nop

    .line 17323
    return p1

    .line 17320
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17322
    throw p1
.end method

.method public blacklist setEmergencyCallToSatelliteHandoverType(III)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16873
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16877
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16878
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16879
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16880
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16881
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x175

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16882
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16883
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 16886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16888
    nop

    .line 16889
    return p1

    .line 16886
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16888
    throw p1
.end method

.method public blacklist setEnableCellularIdentifierDisclosureNotifications(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17384
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17387
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17388
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17389
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x189

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17395
    nop

    .line 17396
    return-void

    .line 17393
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17395
    throw p1
.end method

.method public blacklist setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12587
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12591
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12593
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12594
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 12595
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12596
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12597
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa8

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12599
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 12602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12604
    nop

    .line 12605
    return p1

    .line 12602
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12604
    throw p1
.end method

.method public blacklist setGbaReleaseTimeOverride(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14774
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14778
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14781
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x115

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14783
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14788
    nop

    .line 14789
    return p1

    .line 14786
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14788
    throw p1
.end method

.method public blacklist setIccLockEnabled(IZLjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14429
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14433
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14436
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14437
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x105

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 14442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14444
    nop

    .line 14445
    return p1

    .line 14442
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14444
    throw p1
.end method

.method public blacklist setImsFeatureValidationOverride(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15061
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15065
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15066
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15067
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15068
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x125

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15070
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 15073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15075
    nop

    .line 15076
    return p1

    .line 15073
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15075
    throw p1
.end method

.method public blacklist setImsProvisioningInt(III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13797
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13801
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13803
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13804
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13805
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe3

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13806
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13807
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 13810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13812
    nop

    .line 13813
    return p1

    .line 13810
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13812
    throw p1
.end method

.method public blacklist setImsProvisioningStatusForCapability(IIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13677
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13680
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13682
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13683
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13684
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13685
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xdd

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 13689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13691
    nop

    .line 13692
    return-void

    .line 13689
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13691
    throw p1
.end method

.method public blacklist setImsProvisioningString(IILjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13818
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13822
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13823
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13824
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13825
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13826
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe4

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13828
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 13831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13833
    nop

    .line 13834
    return p1

    .line 13831
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13833
    throw p1
.end method

.method public greylist-max-o setImsRegistrationState(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10934
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10937
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10939
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10940
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 10943
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10945
    nop

    .line 10946
    return-void

    .line 10943
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10944
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10945
    throw p1
.end method

.method public blacklist setIsSatelliteCommunicationAllowedForCurrentLocationCache(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17635
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17639
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17640
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17641
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x193

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17643
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17648
    nop

    .line 17649
    return p1

    .line 17646
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17648
    throw p1
.end method

.method public greylist-max-o setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11112
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11116
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11119
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11120
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x6c

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11122
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 11125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11127
    nop

    .line 11128
    return p1

    .line 11125
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11127
    throw p1
.end method

.method public blacklist setMaxAllowedSatelliteDataModeForCtsTest(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17712
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17716
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17718
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x196

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17720
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17723
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17725
    nop

    .line 17726
    return p1

    .line 17723
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17724
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17725
    throw p1
.end method

.method public blacklist setMobileDataPolicyEnabled(IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14344
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14347
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14349
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14350
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14351
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x100

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 14355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14357
    nop

    .line 14358
    return-void

    .line 14355
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14357
    throw p1
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15578
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15582
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15583
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15584
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 15586
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 15589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15591
    nop

    .line 15592
    return p1

    .line 15589
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15591
    throw p1
.end method

.method public blacklist setMultiSimCarrierRestriction(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13977
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13980
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13981
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13982
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xed

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 13986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13988
    nop

    .line 13989
    return-void

    .line 13986
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13988
    throw p1
.end method

.method public greylist-max-o setNetworkSelectionModeAutomatic(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10596
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10599
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10601
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x58

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 10605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10607
    nop

    .line 10608
    return-void

    .line 10605
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10607
    throw p1
.end method

.method public blacklist setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10709
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10713
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10714
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10715
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10716
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10717
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x5c

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10718
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10719
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 10722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10724
    nop

    .line 10725
    return p1

    .line 10722
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10724
    throw p1
.end method

.method public blacklist setNrDualConnectivityState(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14619
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14623
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14626
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10e

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14633
    nop

    .line 14634
    return p1

    .line 14631
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14633
    throw p1
.end method

.method public blacklist setNtnSmsSupported(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17955
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17958
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17959
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17960
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17961
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17966
    nop

    .line 17967
    return-void

    .line 17964
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17966
    throw p1
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15847
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15850
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15852
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x149

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15853
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 15856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15858
    nop

    .line 15859
    return-void

    .line 15856
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15858
    throw p1
.end method

.method public blacklist setNullCipherNotificationsEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17436
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17439
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17441
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17447
    nop

    .line 17448
    return-void

    .line 17445
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17447
    throw p1
.end method

.method public blacklist setOemEnabledSatelliteProvisionStatus(ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17022
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17026
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17028
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17029
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x17a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17030
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17031
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 17034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17036
    nop

    .line 17037
    return p1

    .line 17034
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17036
    throw p1
.end method

.method public greylist-max-o setOperatorBrandOverride(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11257
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11261
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11264
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x71

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11266
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 11269
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11271
    nop

    .line 11272
    return p1

    .line 11269
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11271
    throw p1
.end method

.method public greylist-max-o setRadio(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8987
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8991
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 8993
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8995
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 8998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9000
    nop

    .line 9001
    return p1

    .line 8998
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9000
    throw p1
.end method

.method public greylist-max-o setRadioForSubscriber(IZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9009
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9013
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9014
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9015
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9016
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9018
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 9021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9023
    nop

    .line 9024
    return p1

    .line 9021
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9023
    throw p1
.end method

.method public greylist-max-o setRadioPower(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9029
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9033
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9035
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9036
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9037
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 9040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9042
    nop

    .line 9043
    return p1

    .line 9040
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9041
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9042
    throw p1
.end method

.method public blacklist setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14813
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14816
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14817
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14818
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14819
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x117

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14820
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 14823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14825
    nop

    .line 14826
    return-void

    .line 14823
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14825
    throw p1
.end method

.method public blacklist setRcsProvisioningStatusForCapability(IIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13738
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13741
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13743
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13744
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13745
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13746
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe0

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_30

    .line 13750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13752
    nop

    .line 13753
    return-void

    .line 13750
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13752
    throw p1
.end method

.method public blacklist setRcsSingleRegistrationTestModeEnabled(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14902
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14905
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14907
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14908
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 14911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14913
    nop

    .line 14914
    return-void

    .line 14911
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14913
    throw p1
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15717
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15720
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15723
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x144

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 15727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15729
    nop

    .line 15730
    return-void

    .line 15727
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15729
    throw p1
.end method

.method public greylist-max-o setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11294
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11298
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11301
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11302
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11303
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11304
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x72

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11305
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11306
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 11309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11311
    nop

    .line 11312
    return p1

    .line 11309
    :catchall_37
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11311
    throw p1
.end method

.method public blacklist setRttCapabilitySetting(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13513
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13516
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13519
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd4

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13525
    nop

    .line 13526
    return-void

    .line 13523
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13525
    throw p1
.end method

.method public blacklist setSatelliteAccessAllowedForSubscriptions(ZLjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16964
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16968
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16970
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16971
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x178

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16973
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 16976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16978
    nop

    .line 16979
    return p1

    .line 16976
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16978
    throw p1
.end method

.method public blacklist setSatelliteAccessControlOverlayConfigs(ZZLjava/lang/String;JLjava/util/List;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16930
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16934
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16937
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16938
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 16939
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 16940
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16941
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x177

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16943
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_3a

    .line 16946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16948
    nop

    .line 16949
    return p1

    .line 16946
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16948
    throw p1
.end method

.method public blacklist setSatelliteControllerTimeoutDuration(ZIJ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16839
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16843
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16845
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16846
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 16847
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x174

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16848
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16849
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 16852
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16854
    nop

    .line 16855
    return p1

    .line 16852
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16854
    throw p1
.end method

.method public blacklist setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16683
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16687
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16688
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16689
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16e

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16690
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16691
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16696
    nop

    .line 16697
    return p1

    .line 16694
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16696
    throw p1
.end method

.method public blacklist setSatelliteIgnoreCellularServiceState(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16733
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16737
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16739
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x170

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16740
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16741
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16746
    nop

    .line 16747
    return p1

    .line 16744
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16746
    throw p1
.end method

.method public blacklist setSatelliteIgnorePlmnListFromStorage(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18055
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 18056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 18059
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 18061
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18063
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 18066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18068
    nop

    .line 18069
    return p1

    .line 18066
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 18068
    throw p1
.end method

.method public blacklist setSatelliteListeningTimeoutDuration(J)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16709
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16713
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16714
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 16715
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16f

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16717
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 16720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16722
    nop

    .line 16723
    return p1

    .line 16720
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16722
    throw p1
.end method

.method public blacklist setSatellitePointingUiClassName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16786
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16790
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16791
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16792
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16793
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x172

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16795
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 16798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16800
    nop

    .line 16801
    return p1

    .line 16798
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16800
    throw p1
.end method

.method public blacklist setSatelliteServicePackageName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16657
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16661
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16662
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16663
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16664
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x16d

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16666
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 16669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16671
    nop

    .line 16672
    return p1

    .line 16669
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16671
    throw p1
.end method

.method public blacklist setSatelliteSubscriberIdListChangedIntentComponent(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17834
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17838
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17839
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17840
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17841
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17842
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17847
    nop

    .line 17848
    return p1

    .line 17845
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17847
    throw p1
.end method

.method public blacklist setShouldSendDatagramToModemInDemoMode(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17287
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17291
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17293
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x185

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17295
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 17298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17300
    nop

    .line 17301
    return p1

    .line 17298
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17300
    throw p1
.end method

.method public blacklist setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15377
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15380
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15382
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15383
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15384
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x134

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 15388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15390
    nop

    .line 15391
    return-void

    .line 15388
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15390
    throw p1
.end method

.method public greylist-max-o setSimPowerStateForSlot(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12506
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12509
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12511
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12512
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa5

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 12516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12518
    nop

    .line 12519
    return-void

    .line 12516
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12518
    throw p1
.end method

.method public blacklist setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12529
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12532
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12534
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12535
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12536
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa6

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 12540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12542
    nop

    .line 12543
    return-void

    .line 12540
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12542
    throw p1
.end method

.method public blacklist setSimSlotMapping(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12789
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12793
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12794
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 12795
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12796
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12797
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12802
    nop

    .line 12803
    return p1

    .line 12800
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12802
    throw p1
.end method

.method public blacklist setSupportDisableSatelliteWhileEnableInProgress(ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16759
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16763
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16765
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16766
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x171

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 16768
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 16771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16773
    nop

    .line 16774
    return p1

    .line 16771
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16773
    throw p1
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;I",
            "Lcom/android/internal/telephony/IBooleanConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14224
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14226
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14227
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 14228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14229
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 14230
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v1, 0xf9

    invoke-interface {p1, v1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_25

    .line 14233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14234
    nop

    .line 14235
    return-void

    .line 14233
    :catchall_25
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14234
    throw p1
.end method

.method public blacklist setTestEuiccUiComponent(Landroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17858
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17861
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17862
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 17863
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17864
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17867
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17869
    nop

    .line 17870
    return-void

    .line 17867
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17869
    throw p1
.end method

.method public blacklist setTnScanningSupport(ZZZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16994
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16995
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16998
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16999
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17000
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17001
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17002
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x179

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 17004
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 17007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17009
    nop

    .line 17010
    return p1

    .line 17007
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17009
    throw p1
.end method

.method public blacklist setVoNrEnabled(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14571
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14575
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14577
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14578
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10c

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 14583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14585
    nop

    .line 14586
    return p1

    .line 14583
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14585
    throw p1
.end method

.method public blacklist setVoWiFiModeSetting(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13454
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13457
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13460
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13461
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13466
    nop

    .line 13467
    return-void

    .line 13464
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13466
    throw p1
.end method

.method public blacklist setVoWiFiNonPersistent(IZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13417
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13420
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13423
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13424
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xcf

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 13428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13430
    nop

    .line 13431
    return-void

    .line 13428
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13430
    throw p1
.end method

.method public blacklist setVoWiFiRoamingModeSetting(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13496
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13499
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13502
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd3

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13508
    nop

    .line 13509
    return-void

    .line 13506
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13508
    throw p1
.end method

.method public blacklist setVoWiFiRoamingSettingEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13400
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13403
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13405
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13406
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xce

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13412
    nop

    .line 13413
    return-void

    .line 13410
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13412
    throw p1
.end method

.method public blacklist setVoWiFiSettingEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13325
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13328
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13330
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13331
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xca

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13337
    nop

    .line 13338
    return-void

    .line 13335
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13337
    throw p1
.end method

.method public greylist-max-o setVoiceActivationState(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9470
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9473
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9476
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x29

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 9480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9482
    nop

    .line 9483
    return-void

    .line 9480
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9482
    throw p1
.end method

.method public greylist-max-o setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9449
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9453
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9456
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9457
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x28

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9459
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 9462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9464
    nop

    .line 9465
    return p1

    .line 9462
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9464
    throw p1
.end method

.method public blacklist setVoiceServiceStateOverride(IZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15668
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15671
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15673
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15674
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15675
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x142

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15676
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 15679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15681
    nop

    .line 15682
    return-void

    .line 15679
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15681
    throw p1
.end method

.method public greylist-max-o setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11967
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11970
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11972
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11973
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11974
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x8f

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 11978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11980
    nop

    .line 11981
    return-void

    .line 11978
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11980
    throw p1
.end method

.method public greylist-max-o setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12020
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12023
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12024
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12025
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12026
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12027
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x91

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_2d

    .line 12031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12033
    nop

    .line 12034
    return-void

    .line 12031
    :catchall_2d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12033
    throw p1
.end method

.method public blacklist setVtSettingEnabled(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13289
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13292
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13294
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13295
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc8

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13296
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13301
    nop

    .line 13302
    return-void

    .line 13299
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13301
    throw p1
.end method

.method public blacklist showSwitchToManagedProfileDialog()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14295
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14297
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14298
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xfd

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 14301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14302
    nop

    .line 14303
    return-void

    .line 14301
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14302
    throw v1
.end method

.method public greylist-max-o shutdownMobileRadios()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11339
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11342
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11343
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 11347
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11349
    nop

    .line 11350
    return-void

    .line 11347
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11349
    throw v2
.end method

.method public blacklist startEmergencyCallbackMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13839
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13842
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13843
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 13847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13849
    nop

    .line 13850
    return-void

    .line 13847
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13849
    throw v2
.end method

.method public blacklist startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16103
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16106
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16109
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x155

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 16113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16115
    nop

    .line 16116
    return-void

    .line 16113
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16115
    throw p1
.end method

.method public greylist-max-o stopNetworkScan(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10682
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10685
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10687
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10688
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x5b

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 10692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10694
    nop

    .line 10695
    return-void

    .line 10692
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10694
    throw p1
.end method

.method public blacklist stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16125
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16128
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16131
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x156

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 16135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16137
    nop

    .line 16138
    return-void

    .line 16135
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16137
    throw p1
.end method

.method public greylist-max-o supplyPinForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8774
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8778
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8780
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8781
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8783
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8788
    nop

    .line 8789
    return p1

    .line 8786
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8788
    throw p1
.end method

.method public greylist-max-o supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8828
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8832
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8835
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8836
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8837
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2e

    .line 8840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8842
    nop

    .line 8843
    return-object p1

    .line 8840
    :catchall_2e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8842
    throw p1
.end method

.method public greylist-max-o supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8801
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8805
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8808
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8809
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8810
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8811
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 8814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8816
    nop

    .line 8817
    return p1

    .line 8814
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8816
    throw p1
.end method

.method public greylist-max-o supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8856
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8860
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8861
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8862
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8863
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8864
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8865
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8866
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_31

    .line 8869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8871
    nop

    .line 8872
    return-object p1

    .line 8869
    :catchall_31
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8871
    throw p1
.end method

.method public blacklist switchMultiSimConfig(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14025
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14028
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14030
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xef

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 14034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14036
    nop

    .line 14037
    return-void

    .line 14034
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14036
    throw p1
.end method

.method public greylist-max-o switchSlots([I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12756
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 12757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12760
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 12762
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xae

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12763
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12764
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2b

    .line 12767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12769
    nop

    .line 12770
    return p1

    .line 12767
    :catchall_2b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12769
    throw p1
.end method

.method public greylist-max-o toggleRadioOnOff()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8956
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8957
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8958
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 8961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8963
    nop

    .line 8964
    return-void

    .line 8961
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8963
    throw v2
.end method

.method public greylist-max-o toggleRadioOnOffForSubscriber(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8971
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 8972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8974
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8975
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8976
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 8980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8982
    nop

    .line 8983
    return-void

    .line 8980
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8982
    throw p1
.end method

.method public blacklist triggerRcsReconfiguration(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14886
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14889
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14891
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11b

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 14895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14897
    nop

    .line 14898
    return-void

    .line 14895
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14897
    throw p1
.end method

.method public blacklist unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13660
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13663
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13666
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xdc

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13670
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13672
    nop

    .line 13673
    return-void

    .line 13670
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13672
    throw p1
.end method

.method public blacklist unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17262
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17265
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17267
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x184

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17273
    nop

    .line 17274
    return-void

    .line 17271
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17273
    throw p1
.end method

.method public blacklist unregisterForCommunicationAccessStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAccessStateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17585
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17588
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17591
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x191

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 17595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17597
    nop

    .line 17598
    return-void

    .line 17595
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17597
    throw p1
.end method

.method public blacklist unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16342
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16345
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16347
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16353
    nop

    .line 16354
    return-void

    .line 16351
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16353
    throw p1
.end method

.method public blacklist unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16296
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16299
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16301
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15d

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16305
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16307
    nop

    .line 16308
    return-void

    .line 16305
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16307
    throw p1
.end method

.method public blacklist unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17217
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17220
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17222
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x182

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17228
    nop

    .line 17229
    return-void

    .line 17226
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17228
    throw p1
.end method

.method public blacklist unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16452
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16455
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16457
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x164

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16458
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16463
    nop

    .line 16464
    return-void

    .line 16461
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16463
    throw p1
.end method

.method public blacklist unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16229
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16232
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16234
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16240
    nop

    .line 16241
    return-void

    .line 16238
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16240
    throw p1
.end method

.method public blacklist unregisterForSatelliteSupportedStateChanged(Lcom/android/internal/telephony/IBooleanConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17536
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 17537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17539
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 17540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 17541
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18f

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 17545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17547
    nop

    .line 17548
    return-void

    .line 17545
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17547
    throw p1
.end method

.method public blacklist unregisterForSelectedNbIotSatelliteSubscriptionChanged(Landroid/telephony/satellite/ISelectedNbIotSatelliteSubscriptionCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16586
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 16587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 16589
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 16591
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16a

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 16592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 16595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16597
    nop

    .line 16598
    return-void

    .line 16595
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16597
    throw p1
.end method

.method public blacklist unregisterImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13088
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13091
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13092
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13093
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13094
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbd

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13100
    nop

    .line 13101
    return-void

    .line 13098
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13100
    throw p1
.end method

.method public blacklist unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10456
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 10457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10459
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 10461
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x51

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10462
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 10465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10467
    nop

    .line 10468
    return-void

    .line 10465
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10467
    throw p1
.end method

.method public blacklist unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13626
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13629
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13632
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xda

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13638
    nop

    .line 13639
    return-void

    .line 13636
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13638
    throw p1
.end method

.method public blacklist unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13051
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13054
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13057
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbb

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13058
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13063
    nop

    .line 13064
    return-void

    .line 13061
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13063
    throw p1
.end method

.method public blacklist unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15536
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 15537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 15539
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 15540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15541
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13c

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 15542
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 15545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15547
    nop

    .line 15548
    return-void

    .line 15545
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 15546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 15547
    throw p1
.end method

.method public blacklist unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13156
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13159
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13162
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13168
    nop

    .line 13169
    return-void

    .line 13166
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13168
    throw p1
.end method

.method public blacklist unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14869
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14872
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14874
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 14875
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11a

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 14879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14881
    nop

    .line 14882
    return-void

    .line 14879
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14881
    throw p1
.end method

.method public blacklist updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13854
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13857
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13859
    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13860
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe6

    invoke-interface {p2, v2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13861
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2a

    .line 13864
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13866
    nop

    .line 13867
    return-void

    .line 13864
    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13866
    throw p1
.end method

.method public blacklist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13923
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 13924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13926
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13927
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13928
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xea

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13929
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 13932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13934
    nop

    .line 13935
    return-void

    .line 13932
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13934
    throw p1
.end method

.method public greylist-max-o updateServiceLocation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9139
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9142
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9143
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 9147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9149
    nop

    .line 9150
    return-void

    .line 9147
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9149
    throw v2
.end method

.method public blacklist updateServiceLocationWithPackageName(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9154
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 9155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9157
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9159
    iget-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9160
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 9163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9165
    nop

    .line 9166
    return-void

    .line 9163
    :catchall_27
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9165
    throw p1
.end method

.method public blacklist uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11379
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 11380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11382
    :try_start_c
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11386
    const/4 p1, 0x0

    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11387
    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11388
    iget-object p2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p3, 0x76

    invoke-interface {p2, p3, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_33

    .line 11392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11394
    nop

    .line 11395
    return-void

    .line 11392
    :catchall_33
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11394
    throw p1
.end method

.method public blacklist userActivity()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14485
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 14487
    :try_start_8
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14488
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x108

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1b

    .line 14491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14492
    nop

    .line 14493
    return-void

    .line 14491
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14492
    throw v1
.end method
