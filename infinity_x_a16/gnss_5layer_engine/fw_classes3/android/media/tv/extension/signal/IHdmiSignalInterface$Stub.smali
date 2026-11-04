.class public abstract Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;
.super Landroid/os/Binder;
.source "IHdmiSignalInterface.java"

# interfaces
.implements Landroid/media/tv/extension/signal/IHdmiSignalInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/IHdmiSignalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addHdmiSignalInfoListener:I = 0x1

.field static final blacklist TRANSACTION_getHdmiSignalInfo:I = 0x3

.field static final blacklist TRANSACTION_removeHdmiSignalInfoListener:I = 0x2

.field static final blacklist TRANSACTION_setForceVrr:I = 0x5

.field static final blacklist TRANSACTION_setLowLatency:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.media.tv.extension.signal.IHdmiSignalInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IHdmiSignalInterface;
    .registers 3

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "android.media.tv.extension.signal.IHdmiSignalInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/signal/IHdmiSignalInterface;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Landroid/media/tv/extension/signal/IHdmiSignalInterface;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 73
    packed-switch p0, :pswitch_data_18

    .line 97
    const/4 p0, 0x0

    return-object p0

    .line 93
    :pswitch_5
    const-string/jumbo p0, "setForceVrr"

    return-object p0

    .line 89
    :pswitch_9
    const-string/jumbo p0, "setLowLatency"

    return-object p0

    .line 85
    :pswitch_d
    const-string p0, "getHdmiSignalInfo"

    return-object p0

    .line 81
    :pswitch_10
    const-string/jumbo p0, "removeHdmiSignalInfoListener"

    return-object p0

    .line 77
    :pswitch_14
    const-string p0, "addHdmiSignalInfoListener"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 290
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 104
    invoke-static {p1}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 108
    nop

    .line 109
    const-string v0, "android.media.tv.extension.signal.IHdmiSignalInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 116
    :cond_17
    packed-switch p1, :pswitch_data_82

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 164
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;->setForceVrr(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_81

    .line 153
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;->setLowLatency(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_81

    .line 143
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;->getHdmiSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_81

    .line 132
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/signal/IHdmiSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;

    move-result-object p4

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;->removeHdmiSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_81

    .line 121
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/signal/IHdmiSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;

    move-result-object p4

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/signal/IHdmiSignalInterface$Stub;->addHdmiSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IHdmiSignalInfoListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    nop

    .line 177
    :goto_81
    return v1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_55
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
