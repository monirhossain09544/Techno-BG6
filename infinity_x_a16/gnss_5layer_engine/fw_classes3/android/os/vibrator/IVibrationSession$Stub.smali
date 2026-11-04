.class public abstract Landroid/os/vibrator/IVibrationSession$Stub;
.super Landroid/os/Binder;
.source "IVibrationSession.java"

# interfaces
.implements Landroid/os/vibrator/IVibrationSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/IVibrationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/IVibrationSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelSession:I = 0x3

.field static final blacklist TRANSACTION_finishSession:I = 0x2

.field static final blacklist TRANSACTION_vibrate:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.os.vibrator.IVibrationSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/vibrator/IVibrationSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/vibrator/IVibrationSession;
    .registers 3

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_4
    const-string v0, "android.os.vibrator.IVibrationSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/vibrator/IVibrationSession;

    if-eqz v1, :cond_13

    .line 71
    check-cast v0, Landroid/os/vibrator/IVibrationSession;

    return-object v0

    .line 73
    :cond_13
    new-instance v0, Landroid/os/vibrator/IVibrationSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/vibrator/IVibrationSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 82
    packed-switch p0, :pswitch_data_10

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string p0, "cancelSession"

    return-object p0

    .line 90
    :pswitch_8
    const-string p0, "finishSession"

    return-object p0

    .line 86
    :pswitch_b
    const-string/jumbo p0, "vibrate"

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 227
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/os/vibrator/IVibrationSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "android.os.vibrator.IVibrationSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_44

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/vibrator/IVibrationSession$Stub;->cancelSession()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    goto :goto_43

    .line 132
    :pswitch_26
    invoke-virtual {p0}, Landroid/os/vibrator/IVibrationSession$Stub;->finishSession()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_43

    .line 122
    :pswitch_2d
    sget-object p1, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/CombinedVibration;

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, p1, p4}, Landroid/os/vibrator/IVibrationSession$Stub;->vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    nop

    .line 147
    :goto_43
    return v1

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
    .end packed-switch
.end method
