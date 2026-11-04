.class public abstract Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;
.super Landroid/os/Binder;
.source "ISendMgmtFrameEvent.java"

# interfaces
.implements Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_OnAck:I = 0x1

.field static final blacklist TRANSACTION_OnFailure:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.net.wifi.nl80211.ISendMgmtFrameEvent"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.net.wifi.nl80211.ISendMgmtFrameEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_c

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 78
    :pswitch_5
    const-string p0, "OnFailure"

    return-object p0

    .line 74
    :pswitch_8
    const-string p0, "OnAck"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
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

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 89
    invoke-static {p1}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    nop

    .line 94
    const-string v0, "android.net.wifi.nl80211.ISendMgmtFrameEvent"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_17
    packed-switch p1, :pswitch_data_36

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 114
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;->OnFailure(I)V

    .line 117
    goto :goto_35

    .line 106
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;->OnAck(I)V

    .line 109
    nop

    .line 124
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
