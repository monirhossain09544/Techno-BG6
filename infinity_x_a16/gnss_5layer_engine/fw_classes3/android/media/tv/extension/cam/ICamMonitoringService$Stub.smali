.class public abstract Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;
.super Landroid/os/Binder;
.source "ICamMonitoringService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamMonitoringService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamMonitoringService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCamInfoListener:I = 0x1

.field static final blacklist TRANSACTION_getCamInfo:I = 0x3

.field static final blacklist TRANSACTION_getSlotIds:I = 0x5

.field static final blacklist TRANSACTION_getSlotInfo:I = 0x4

.field static final blacklist TRANSACTION_isCamSupported:I = 0x6

.field static final blacklist TRANSACTION_removeCamInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.media.tv.extension.cam.ICamMonitoringService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamMonitoringService;
    .registers 3

    .line 64
    if-nez p0, :cond_4

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamMonitoringService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamMonitoringService;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Landroid/media/tv/extension/cam/ICamMonitoringService;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 80
    packed-switch p0, :pswitch_data_18

    .line 108
    const/4 p0, 0x0

    return-object p0

    .line 104
    :pswitch_5
    const-string p0, "isCamSupported"

    return-object p0

    .line 100
    :pswitch_8
    const-string p0, "getSlotIds"

    return-object p0

    .line 96
    :pswitch_b
    const-string p0, "getSlotInfo"

    return-object p0

    .line 92
    :pswitch_e
    const-string p0, "getCamInfo"

    return-object p0

    .line 88
    :pswitch_11
    const-string/jumbo p0, "removeCamInfoListener"

    return-object p0

    .line 84
    :pswitch_15
    const-string p0, "addCamInfoListener"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 75
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 319
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 115
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 119
    nop

    .line 120
    const-string v0, "android.media.tv.extension.cam.ICamMonitoringService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_17
    packed-switch p1, :pswitch_data_7e

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 176
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->isCamSupported()Z

    move-result p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_7d

    .line 169
    :pswitch_2a
    invoke-virtual {p0}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getSlotIds()[I

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 172
    goto :goto_7d

    .line 160
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getSlotInfo(I)Landroid/os/Bundle;

    move-result-object p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_7d

    .line 150
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->getCamInfo(I)Landroid/os/Bundle;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    goto :goto_7d

    .line 141
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamInfoListener;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->removeCamInfoListener(Landroid/media/tv/extension/cam/ICamInfoListener;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_7d

    .line 132
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamInfoListener;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamMonitoringService$Stub;->addCamInfoListener(Landroid/media/tv/extension/cam/ICamInfoListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    nop

    .line 186
    :goto_7d
    return v1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_59
        :pswitch_47
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
