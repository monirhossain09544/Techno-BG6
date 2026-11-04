.class public abstract Landroid/proximity/IProximityProviderService$Stub;
.super Landroid/os/Binder;
.source "IProximityProviderService.java"

# interfaces
.implements Landroid/proximity/IProximityProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/proximity/IProximityProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/proximity/IProximityProviderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_anyWatchNearby:I = 0x1

.field static final blacklist TRANSACTION_isProximityCheckingAvailable:I = 0x3

.field static final blacklist TRANSACTION_isProximityCheckingSupported:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.proximity.IProximityProviderService"

    invoke-virtual {p0, p0, v0}, Landroid/proximity/IProximityProviderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/proximity/IProximityProviderService;
    .registers 3

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    const-string v0, "android.proximity.IProximityProviderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/proximity/IProximityProviderService;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/proximity/IProximityProviderService;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/proximity/IProximityProviderService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/proximity/IProximityProviderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 77
    packed-switch p0, :pswitch_data_e

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 89
    :pswitch_5
    const-string p0, "isProximityCheckingAvailable"

    return-object p0

    .line 85
    :pswitch_8
    const-string p0, "isProximityCheckingSupported"

    return-object p0

    .line 81
    :pswitch_b
    const-string p0, "anyWatchNearby"

    return-object p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 232
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 100
    invoke-static {p1}, Landroid/proximity/IProximityProviderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 104
    nop

    .line 105
    const-string v0, "android.proximity.IProximityProviderService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 112
    :cond_17
    packed-switch p1, :pswitch_data_54

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 135
    :pswitch_1f
    invoke-virtual {p0}, Landroid/proximity/IProximityProviderService$Stub;->isProximityCheckingAvailable()I

    move-result p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    goto :goto_53

    .line 128
    :pswitch_2a
    invoke-virtual {p0}, Landroid/proximity/IProximityProviderService$Stub;->isProximityCheckingSupported()Z

    move-result p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    goto :goto_53

    .line 117
    :pswitch_35
    sget-object p1, Landroid/proximity/RangingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/proximity/RangingParams;

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/proximity/IProximityResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/proximity/IProximityResultCallback;

    move-result-object p4

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, p1, p4}, Landroid/proximity/IProximityProviderService$Stub;->anyWatchNearby(Landroid/proximity/RangingParams;Landroid/proximity/IProximityResultCallback;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 124
    nop

    .line 145
    :goto_53
    return v1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
