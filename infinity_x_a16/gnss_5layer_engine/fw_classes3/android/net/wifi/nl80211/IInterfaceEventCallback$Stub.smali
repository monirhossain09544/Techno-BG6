.class public abstract Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;
.super Landroid/os/Binder;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IInterfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IInterfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_OnApInterfaceReady:I = 0x2

.field static final blacklist TRANSACTION_OnApTorndownEvent:I = 0x4

.field static final blacklist TRANSACTION_OnClientInterfaceReady:I = 0x1

.field static final blacklist TRANSACTION_OnClientTorndownEvent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.net.wifi.nl80211.IInterfaceEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;
    .registers 3

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IInterfaceEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 71
    packed-switch p0, :pswitch_data_12

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 87
    :pswitch_5
    const-string p0, "OnApTorndownEvent"

    return-object p0

    .line 83
    :pswitch_8
    const-string p0, "OnClientTorndownEvent"

    return-object p0

    .line 79
    :pswitch_b
    const-string p0, "OnApInterfaceReady"

    return-object p0

    .line 75
    :pswitch_e
    const-string p0, "OnClientInterfaceReady"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 226
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    nop

    .line 103
    const-string v0, "android.net.wifi.nl80211.IInterfaceEventCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_17
    packed-switch p1, :pswitch_data_5c

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnApTorndownEvent(Landroid/net/wifi/nl80211/IApInterface;)V

    .line 142
    goto :goto_5b

    .line 131
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnClientTorndownEvent(Landroid/net/wifi/nl80211/IClientInterface;)V

    .line 134
    goto :goto_5b

    .line 123
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IApInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnApInterfaceReady(Landroid/net/wifi/nl80211/IApInterface;)V

    .line 126
    goto :goto_5b

    .line 115
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->OnClientInterfaceReady(Landroid/net/wifi/nl80211/IClientInterface;)V

    .line 118
    nop

    .line 149
    :goto_5b
    return v1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_3d
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
