.class public abstract Landroid/os/vibrator/IVibrationSessionCallback$Stub;
.super Landroid/os/Binder;
.source "IVibrationSessionCallback.java"

# interfaces
.implements Landroid/os/vibrator/IVibrationSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/IVibrationSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/IVibrationSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFinished:I = 0x3

.field static final blacklist TRANSACTION_onFinishing:I = 0x2

.field static final blacklist TRANSACTION_onStarted:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.os.vibrator.IVibrationSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/vibrator/IVibrationSessionCallback;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "android.os.vibrator.IVibrationSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/vibrator/IVibrationSessionCallback;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/os/vibrator/IVibrationSessionCallback;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/os/vibrator/IVibrationSessionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/vibrator/IVibrationSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 76
    packed-switch p0, :pswitch_data_12

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 88
    :pswitch_5
    const-string/jumbo p0, "onFinished"

    return-object p0

    .line 84
    :pswitch_9
    const-string/jumbo p0, "onFinishing"

    return-object p0

    .line 80
    :pswitch_d
    const-string/jumbo p0, "onStarted"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 210
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 99
    invoke-static {p1}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    nop

    .line 104
    const-string v0, "android.os.vibrator.IVibrationSessionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 111
    :cond_17
    packed-switch p1, :pswitch_data_3e

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 129
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;->onFinished(I)V

    .line 132
    goto :goto_3d

    .line 123
    :pswitch_2a
    invoke-virtual {p0}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;->onFinishing()V

    .line 124
    goto :goto_3d

    .line 116
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/vibrator/IVibrationSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/vibrator/IVibrationSession;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, p1}, Landroid/os/vibrator/IVibrationSessionCallback$Stub;->onStarted(Landroid/os/vibrator/IVibrationSession;)V

    .line 119
    nop

    .line 139
    :goto_3d
    return v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
