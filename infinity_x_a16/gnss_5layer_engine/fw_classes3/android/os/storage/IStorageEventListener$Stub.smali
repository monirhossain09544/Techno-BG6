.class public abstract Landroid/os/storage/IStorageEventListener$Stub;
.super Landroid/os/Binder;
.source "IStorageEventListener.java"

# interfaces
.implements Landroid/os/storage/IStorageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageEventListener"

.field static final greylist-max-o TRANSACTION_onDiskDestroyed:I = 0x7

.field static final greylist-max-o TRANSACTION_onDiskScanned:I = 0x6

.field static final greylist-max-o TRANSACTION_onStorageStateChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onUsbMassStorageConnectionChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onVolumeForgotten:I = 0x5

.field static final greylist-max-o TRANSACTION_onVolumeRecordChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onVolumeStateChanged:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string v0, "android.os.storage.IStorageEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;
    .registers 3

    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_4
    const-string v0, "android.os.storage.IStorageEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/storage/IStorageEventListener;

    if-eqz v1, :cond_13

    .line 83
    check-cast v0, Landroid/os/storage/IStorageEventListener;

    return-object v0

    .line 85
    :cond_13
    new-instance v0, Landroid/os/storage/IStorageEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/storage/IStorageEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 94
    packed-switch p0, :pswitch_data_22

    .line 126
    const/4 p0, 0x0

    return-object p0

    .line 122
    :pswitch_5
    const-string/jumbo p0, "onDiskDestroyed"

    return-object p0

    .line 118
    :pswitch_9
    const-string/jumbo p0, "onDiskScanned"

    return-object p0

    .line 114
    :pswitch_d
    const-string/jumbo p0, "onVolumeForgotten"

    return-object p0

    .line 110
    :pswitch_11
    const-string/jumbo p0, "onVolumeRecordChanged"

    return-object p0

    .line 106
    :pswitch_15
    const-string/jumbo p0, "onVolumeStateChanged"

    return-object p0

    .line 102
    :pswitch_19
    const-string/jumbo p0, "onStorageStateChanged"

    return-object p0

    .line 98
    :pswitch_1d
    const-string/jumbo p0, "onUsbMassStorageConnectionChanged"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 89
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 350
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 133
    invoke-static {p1}, Landroid/os/storage/IStorageEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    nop

    .line 138
    const-string v0, "android.os.storage.IStorageEventListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_17
    packed-switch p1, :pswitch_data_92

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 208
    :pswitch_1f
    sget-object p1, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Landroid/os/storage/IStorageEventListener$Stub;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    .line 211
    goto :goto_90

    .line 198
    :pswitch_2e
    sget-object p1, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/DiskInfo;

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1, p3}, Landroid/os/storage/IStorageEventListener$Stub;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 203
    goto :goto_90

    .line 190
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, p1}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeForgotten(Ljava/lang/String;)V

    .line 193
    goto :goto_90

    .line 182
    :pswitch_4c
    sget-object p1, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, p1}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 185
    goto :goto_90

    .line 170
    :pswitch_5b
    sget-object p1, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 177
    goto :goto_90

    .line 158
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/storage/IStorageEventListener$Stub;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    goto :goto_90

    .line 150
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/os/storage/IStorageEventListener$Stub;->onUsbMassStorageConnectionChanged(Z)V

    .line 153
    nop

    .line 218
    :goto_90
    return v1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_85
        :pswitch_72
        :pswitch_5b
        :pswitch_4c
        :pswitch_41
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
