.class public abstract Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;
.super Landroid/os/Binder;
.source "ISharedConnectivityService.java"

# interfaces
.implements Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connectHotspotNetwork:I = 0x3

.field static final blacklist TRANSACTION_connectKnownNetwork:I = 0x5

.field static final blacklist TRANSACTION_disconnectHotspotNetwork:I = 0x4

.field static final blacklist TRANSACTION_forgetKnownNetwork:I = 0x6

.field static final blacklist TRANSACTION_getHotspotNetworkConnectionStatus:I = 0xa

.field static final blacklist TRANSACTION_getHotspotNetworks:I = 0x7

.field static final blacklist TRANSACTION_getKnownNetworkConnectionStatus:I = 0xb

.field static final blacklist TRANSACTION_getKnownNetworks:I = 0x8

.field static final blacklist TRANSACTION_getSettingsState:I = 0x9

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityService"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 90
    packed-switch p0, :pswitch_data_28

    .line 138
    const/4 p0, 0x0

    return-object p0

    .line 134
    :pswitch_5
    const-string p0, "getKnownNetworkConnectionStatus"

    return-object p0

    .line 130
    :pswitch_8
    const-string p0, "getHotspotNetworkConnectionStatus"

    return-object p0

    .line 126
    :pswitch_b
    const-string p0, "getSettingsState"

    return-object p0

    .line 122
    :pswitch_e
    const-string p0, "getKnownNetworks"

    return-object p0

    .line 118
    :pswitch_11
    const-string p0, "getHotspotNetworks"

    return-object p0

    .line 114
    :pswitch_14
    const-string p0, "forgetKnownNetwork"

    return-object p0

    .line 110
    :pswitch_17
    const-string p0, "connectKnownNetwork"

    return-object p0

    .line 106
    :pswitch_1a
    const-string p0, "disconnectHotspotNetwork"

    return-object p0

    .line 102
    :pswitch_1d
    const-string p0, "connectHotspotNetwork"

    return-object p0

    .line 98
    :pswitch_20
    const-string/jumbo p0, "unregisterCallback"

    return-object p0

    .line 94
    :pswitch_24
    const-string/jumbo p0, "registerCallback"

    return-object p0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 460
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 145
    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 149
    nop

    .line 150
    const-string v0, "android.net.wifi.sharedconnectivity.service.ISharedConnectivityService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 157
    :cond_17
    packed-switch p1, :pswitch_data_c8

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 243
    :pswitch_1f
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    move-result-object p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    goto/16 :goto_c6

    .line 236
    :pswitch_2b
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    move-result-object p1

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 239
    goto/16 :goto_c6

    .line 229
    :pswitch_37
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 232
    goto/16 :goto_c6

    .line 222
    :pswitch_43
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getKnownNetworks()Ljava/util/List;

    move-result-object p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 225
    goto/16 :goto_c6

    .line 215
    :pswitch_4f
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->getHotspotNetworks()Ljava/util/List;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 218
    goto :goto_c6

    .line 207
    :pswitch_5a
    sget-object p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    goto :goto_c6

    .line 198
    :pswitch_6c
    sget-object p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    goto :goto_c6

    .line 189
    :pswitch_7e
    sget-object p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_c6

    .line 180
    :pswitch_90
    sget-object p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_c6

    .line 171
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->unregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_c6

    .line 162
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;->registerCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    nop

    .line 253
    :goto_c6
    return v1

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_a2
        :pswitch_90
        :pswitch_7e
        :pswitch_6c
        :pswitch_5a
        :pswitch_4f
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method
