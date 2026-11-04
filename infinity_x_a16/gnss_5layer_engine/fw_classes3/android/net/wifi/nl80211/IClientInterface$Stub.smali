.class public abstract Landroid/net/wifi/nl80211/IClientInterface$Stub;
.super Landroid/os/Binder;
.source "IClientInterface.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IClientInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IClientInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_SendMgmtFrame:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceName:I = 0x4

.field static final blacklist TRANSACTION_getMacAddress:I = 0x3

.field static final blacklist TRANSACTION_getPacketCounters:I = 0x1

.field static final blacklist TRANSACTION_getWifiScannerImpl:I = 0x5

.field static final blacklist TRANSACTION_signalPoll:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IClientInterface;
    .registers 3

    .line 90
    if-nez p0, :cond_4

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/nl80211/IClientInterface;

    if-eqz v1, :cond_13

    .line 95
    check-cast v0, Landroid/net/wifi/nl80211/IClientInterface;

    return-object v0

    .line 97
    :cond_13
    new-instance v0, Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 106
    packed-switch p0, :pswitch_data_18

    .line 134
    const/4 p0, 0x0

    return-object p0

    .line 130
    :pswitch_5
    const-string p0, "SendMgmtFrame"

    return-object p0

    .line 126
    :pswitch_8
    const-string p0, "getWifiScannerImpl"

    return-object p0

    .line 122
    :pswitch_b
    const-string p0, "getInterfaceName"

    return-object p0

    .line 118
    :pswitch_e
    const-string p0, "getMacAddress"

    return-object p0

    .line 114
    :pswitch_11
    const-string/jumbo p0, "signalPoll"

    return-object p0

    .line 110
    :pswitch_15
    const-string p0, "getPacketCounters"

    return-object p0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 101
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 360
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 141
    invoke-static {p1}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 145
    nop

    .line 146
    const-string v0, "android.net.wifi.nl80211.IClientInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 147
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 150
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 153
    :cond_17
    packed-switch p1, :pswitch_data_6e

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 193
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/ISendMgmtFrameEvent;

    move-result-object p3

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, p1, p3, p4}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->SendMgmtFrame([BLandroid/net/wifi/nl80211/ISendMgmtFrameEvent;I)V

    .line 200
    goto :goto_6d

    .line 185
    :pswitch_36
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getWifiScannerImpl()Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 188
    goto :goto_6d

    .line 178
    :pswitch_41
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    goto :goto_6d

    .line 171
    :pswitch_4c
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getMacAddress()[B

    move-result-object p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 174
    goto :goto_6d

    .line 164
    :pswitch_57
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->signalPoll()[I

    move-result-object p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 167
    goto :goto_6d

    .line 157
    :pswitch_62
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IClientInterface$Stub;->getPacketCounters()[I

    move-result-object p1

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 160
    nop

    .line 207
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
