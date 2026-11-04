.class public abstract Landroid/service/storage/IExternalStorageService$Stub;
.super Landroid/os/Binder;
.source "IExternalStorageService.java"

# interfaces
.implements Landroid/service/storage/IExternalStorageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/storage/IExternalStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/storage/IExternalStorageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_endSession:I = 0x2

.field static final blacklist TRANSACTION_freeCache:I = 0x4

.field static final blacklist TRANSACTION_notifyAnrDelayStarted:I = 0x5

.field static final blacklist TRANSACTION_notifyVolumeStateChanged:I = 0x3

.field static final blacklist TRANSACTION_startSession:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.service.storage.IExternalStorageService"

    invoke-virtual {p0, p0, v0}, Landroid/service/storage/IExternalStorageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/storage/IExternalStorageService;
    .registers 3

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "android.service.storage.IExternalStorageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/storage/IExternalStorageService;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Landroid/service/storage/IExternalStorageService;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Landroid/service/storage/IExternalStorageService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/storage/IExternalStorageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 67
    packed-switch p0, :pswitch_data_18

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 87
    :pswitch_5
    const-string/jumbo p0, "notifyAnrDelayStarted"

    return-object p0

    .line 83
    :pswitch_9
    const-string p0, "freeCache"

    return-object p0

    .line 79
    :pswitch_c
    const-string/jumbo p0, "notifyVolumeStateChanged"

    return-object p0

    .line 75
    :pswitch_10
    const-string p0, "endSession"

    return-object p0

    .line 71
    :pswitch_13
    const-string/jumbo p0, "startSession"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 285
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {p1}, Landroid/service/storage/IExternalStorageService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    nop

    .line 103
    const-string v3, "android.service.storage.IExternalStorageService"

    const/4 v7, 0x1

    if-lt p1, v7, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 104
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v7

    .line 110
    :cond_17
    packed-switch p1, :pswitch_data_b2

    .line 182
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 169
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/service/storage/IExternalStorageService$Stub;->notifyAnrDelayStarted(Ljava/lang/String;III)V

    .line 178
    goto/16 :goto_b1

    .line 155
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    move-object v5, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 161
    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    move-object v0, p0

    move-object v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/service/storage/IExternalStorageService$Stub;->freeCache(Ljava/lang/String;Ljava/lang/String;JLandroid/os/RemoteCallback;)V

    .line 164
    goto :goto_b1

    .line 143
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    sget-object v3, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 147
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v1, v3, v4}, Landroid/service/storage/IExternalStorageService$Stub;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    .line 150
    goto :goto_b1

    .line 133
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v1, v3}, Landroid/service/storage/IExternalStorageService$Stub;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 138
    goto :goto_b1

    .line 115
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 119
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 121
    move v5, v3

    move-object v3, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 123
    move v6, v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 125
    sget-object v8, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallback;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    move-object v0, p0

    move v2, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/service/storage/IExternalStorageService$Stub;->startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 128
    nop

    .line 185
    :goto_b1
    return v7

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_84
        :pswitch_71
        :pswitch_56
        :pswitch_37
        :pswitch_1f
    .end packed-switch
.end method
