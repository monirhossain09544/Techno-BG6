.class public abstract Landroid/media/tv/extension/cam/ICamPinService$Stub;
.super Landroid/os/Binder;
.source "ICamPinService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamPinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamPinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamPinService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCamPinCapabilityListener:I = 0x1

.field static final blacklist TRANSACTION_getCamPinCapability:I = 0x4

.field static final blacklist TRANSACTION_removeCamPinCapabilityListener:I = 0x2

.field static final blacklist TRANSACTION_requestCamPinValidation:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.media.tv.extension.cam.ICamPinService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinService;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamPinService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamPinService;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/media/tv/extension/cam/ICamPinService;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/media/tv/extension/cam/ICamPinService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/cam/ICamPinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_14

    .line 90
    const/4 p0, 0x0

    return-object p0

    .line 86
    :pswitch_5
    const-string p0, "getCamPinCapability"

    return-object p0

    .line 82
    :pswitch_8
    const-string/jumbo p0, "requestCamPinValidation"

    return-object p0

    .line 78
    :pswitch_c
    const-string/jumbo p0, "removeCamPinCapabilityListener"

    return-object p0

    .line 74
    :pswitch_10
    const-string p0, "addCamPinCapabilityListener"

    return-object p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 261
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 97
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 101
    nop

    .line 102
    const-string v0, "android.media.tv.extension.cam.ICamPinService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 109
    :cond_17
    packed-switch p1, :pswitch_data_7c

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 146
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 148
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->getCamPinCapability(ILandroid/os/Bundle;)I

    move-result p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p3, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    goto :goto_7b

    .line 132
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/tv/extension/cam/ICamPinStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinStatusListener;

    move-result-object v0

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1, p4, v0}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->requestCamPinValidation(I[ILandroid/media/tv/extension/cam/ICamPinStatusListener;)I

    move-result p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    goto :goto_7b

    .line 123
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamPinCapabilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinCapabilityListener;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->removeCamPinCapabilityListener(Landroid/media/tv/extension/cam/ICamPinCapabilityListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_7b

    .line 114
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamPinCapabilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamPinCapabilityListener;

    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamPinService$Stub;->addCamPinCapabilityListener(Landroid/media/tv/extension/cam/ICamPinCapabilityListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    nop

    .line 161
    :goto_7b
    return v1

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_69
        :pswitch_57
        :pswitch_39
        :pswitch_1f
    .end packed-switch
.end method
