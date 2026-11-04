.class public abstract Landroid/media/tv/extension/cam/ICamHostControlService$Stub;
.super Landroid/os/Binder;
.source "ICamHostControlService.java"

# interfaces
.implements Landroid/media/tv/extension/cam/ICamHostControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/cam/ICamHostControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/cam/ICamHostControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCamHostcontrolInfoListener:I = 0x1

.field static final blacklist TRANSACTION_removeCamHostcontrolInfoListener:I = 0x2

.field static final blacklist TRANSACTION_sendCamHostControlAskRelease:I = 0x3

.field static final blacklist TRANSACTION_setHostControlMode:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.media.tv.extension.cam.ICamHostControlService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlService;
    .registers 3

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "android.media.tv.extension.cam.ICamHostControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/tv/extension/cam/ICamHostControlService;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Landroid/media/tv/extension/cam/ICamHostControlService;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Landroid/media/tv/extension/cam/ICamHostControlService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 69
    packed-switch p0, :pswitch_data_14

    .line 89
    const/4 p0, 0x0

    return-object p0

    .line 85
    :pswitch_5
    const-string/jumbo p0, "setHostControlMode"

    return-object p0

    .line 81
    :pswitch_9
    const-string/jumbo p0, "sendCamHostControlAskRelease"

    return-object p0

    .line 77
    :pswitch_d
    const-string/jumbo p0, "removeCamHostcontrolInfoListener"

    return-object p0

    .line 73
    :pswitch_11
    const-string p0, "addCamHostcontrolInfoListener"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 250
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 96
    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    nop

    .line 101
    const-string v0, "android.media.tv.extension.cam.ICamHostControlService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_17
    packed-switch p1, :pswitch_data_70

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 143
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->setHostControlMode(Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_6f

    .line 131
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;

    move-result-object p4

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, p1, p4}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->sendCamHostControlAskRelease(Ljava/lang/String;Landroid/media/tv/extension/cam/ICamHostControlAskReleaseReplyCallback;)I

    move-result p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_6f

    .line 122
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamHostControlInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlInfoListener;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->removeCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_6f

    .line 113
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/extension/cam/ICamHostControlInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/cam/ICamHostControlInfoListener;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/media/tv/extension/cam/ICamHostControlService$Stub;->addCamHostcontrolInfoListener(Landroid/media/tv/extension/cam/ICamHostControlInfoListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    nop

    .line 156
    :goto_6f
    return v1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_4b
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
