.class public abstract Landroid/os/IExternalVibratorService$Stub;
.super Landroid/os/Binder;
.source "IExternalVibratorService.java"

# interfaces
.implements Landroid/os/IExternalVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IExternalVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onExternalVibrationStart:I = 0x1

.field static final blacklist TRANSACTION_onExternalVibrationStop:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.os.IExternalVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IExternalVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibratorService;
    .registers 3

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    const-string v0, "android.os.IExternalVibratorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IExternalVibratorService;

    if-eqz v1, :cond_13

    .line 78
    check-cast v0, Landroid/os/IExternalVibratorService;

    return-object v0

    .line 80
    :cond_13
    new-instance v0, Landroid/os/IExternalVibratorService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IExternalVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 89
    packed-switch p0, :pswitch_data_e

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 97
    :pswitch_5
    const-string/jumbo p0, "onExternalVibrationStop"

    return-object p0

    .line 93
    :pswitch_9
    const-string/jumbo p0, "onExternalVibrationStart"

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 108
    invoke-static {p1}, Landroid/os/IExternalVibratorService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    nop

    .line 113
    const-string v0, "android.os.IExternalVibratorService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_17
    packed-switch p1, :pswitch_data_48

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 135
    :pswitch_1f
    sget-object p1, Landroid/os/ExternalVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ExternalVibration;

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1}, Landroid/os/IExternalVibratorService$Stub;->onExternalVibrationStop(Landroid/os/ExternalVibration;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_47

    .line 125
    :pswitch_31
    sget-object p1, Landroid/os/ExternalVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ExternalVibration;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1}, Landroid/os/IExternalVibratorService$Stub;->onExternalVibrationStart(Landroid/os/ExternalVibration;)Landroid/os/ExternalVibrationScale;

    move-result-object p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    nop

    .line 146
    :goto_47
    return v1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method
