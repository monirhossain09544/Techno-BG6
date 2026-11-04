.class public abstract Landroid/os/IUpdateEngineStableCallback$Stub;
.super Landroid/os/Binder;
.source "IUpdateEngineStableCallback.java"

# interfaces
.implements Landroid/os/IUpdateEngineStableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngineStableCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngineStableCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onPayloadApplicationComplete:I = 0x2

.field static final blacklist TRANSACTION_onStatusUpdate:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    sget-object v0, Landroid/os/IUpdateEngineStableCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/IUpdateEngineStableCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngineStableCallback;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    sget-object v0, Landroid/os/IUpdateEngineStableCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IUpdateEngineStableCallback;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/os/IUpdateEngineStableCallback;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/os/IUpdateEngineStableCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IUpdateEngineStableCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    sget-object v0, Landroid/os/IUpdateEngineStableCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 76
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 80
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v2

    .line 83
    :cond_16
    if-ne p1, v1, :cond_23

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p0}, Landroid/os/IUpdateEngineStableCallback$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v2

    .line 88
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p0}, Landroid/os/IUpdateEngineStableCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v2

    .line 93
    :cond_33
    packed-switch p1, :pswitch_data_56

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, p1}, Landroid/os/IUpdateEngineStableCallback$Stub;->onPayloadApplicationComplete(I)V

    .line 111
    goto :goto_55

    .line 98
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p3

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, p1, p3}, Landroid/os/IUpdateEngineStableCallback$Stub;->onStatusUpdate(IF)V

    .line 103
    nop

    .line 118
    :goto_55
    return v2

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
