.class public abstract Landroid/os/IExternalVibrationController$Stub;
.super Landroid/os/Binder;
.source "IExternalVibrationController.java"

# interfaces
.implements Landroid/os/IExternalVibrationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IExternalVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IExternalVibrationController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_mute:I = 0x1

.field static final blacklist TRANSACTION_unmute:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.os.IExternalVibrationController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IExternalVibrationController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibrationController;
    .registers 3

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_4
    const-string v0, "android.os.IExternalVibrationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IExternalVibrationController;

    if-eqz v1, :cond_13

    .line 67
    check-cast v0, Landroid/os/IExternalVibrationController;

    return-object v0

    .line 69
    :cond_13
    new-instance v0, Landroid/os/IExternalVibrationController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IExternalVibrationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 78
    packed-switch p0, :pswitch_data_c

    .line 90
    const/4 p0, 0x0

    return-object p0

    .line 86
    :pswitch_5
    const-string/jumbo p0, "unmute"

    return-object p0

    .line 82
    :pswitch_9
    const-string p0, "mute"

    return-object p0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 97
    invoke-static {p1}, Landroid/os/IExternalVibrationController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.os.IExternalVibrationController"

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
    packed-switch p1, :pswitch_data_36

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/IExternalVibrationController$Stub;->unmute()Z

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    goto :goto_35

    .line 113
    :pswitch_2a
    invoke-virtual {p0}, Landroid/os/IExternalVibrationController$Stub;->mute()Z

    move-result p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    nop

    .line 130
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
