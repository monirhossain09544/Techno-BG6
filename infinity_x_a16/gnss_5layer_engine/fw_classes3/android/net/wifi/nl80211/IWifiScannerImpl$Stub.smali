.class public abstract Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;
.super Landroid/os/Binder;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWifiScannerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortScan:I = 0xc

.field static final blacklist TRANSACTION_getMaxSsidsPerScan:I = 0x3

.field static final blacklist TRANSACTION_getPnoScanResults:I = 0x2

.field static final blacklist TRANSACTION_getScanResults:I = 0x1

.field static final blacklist TRANSACTION_scan:I = 0x4

.field static final blacklist TRANSACTION_scanRequest:I = 0x5

.field static final blacklist TRANSACTION_startPnoScan:I = 0xa

.field static final blacklist TRANSACTION_stopPnoScan:I = 0xb

.field static final blacklist TRANSACTION_subscribePnoScanEvents:I = 0x8

.field static final blacklist TRANSACTION_subscribeScanEvents:I = 0x6

.field static final blacklist TRANSACTION_unsubscribePnoScanEvents:I = 0x9

.field static final blacklist TRANSACTION_unsubscribeScanEvents:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .registers 3

    .line 100
    if-nez p0, :cond_4

    .line 101
    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    if-eqz v1, :cond_13

    .line 105
    check-cast v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    return-object v0

    .line 107
    :cond_13
    new-instance v0, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 116
    packed-switch p0, :pswitch_data_32

    .line 168
    const/4 p0, 0x0

    return-object p0

    .line 164
    :pswitch_5
    const-string p0, "abortScan"

    return-object p0

    .line 160
    :pswitch_8
    const-string/jumbo p0, "stopPnoScan"

    return-object p0

    .line 156
    :pswitch_c
    const-string/jumbo p0, "startPnoScan"

    return-object p0

    .line 152
    :pswitch_10
    const-string/jumbo p0, "unsubscribePnoScanEvents"

    return-object p0

    .line 148
    :pswitch_14
    const-string/jumbo p0, "subscribePnoScanEvents"

    return-object p0

    .line 144
    :pswitch_18
    const-string/jumbo p0, "unsubscribeScanEvents"

    return-object p0

    .line 140
    :pswitch_1c
    const-string/jumbo p0, "subscribeScanEvents"

    return-object p0

    .line 136
    :pswitch_20
    const-string/jumbo p0, "scanRequest"

    return-object p0

    .line 132
    :pswitch_24
    const-string/jumbo p0, "scan"

    return-object p0

    .line 128
    :pswitch_28
    const-string p0, "getMaxSsidsPerScan"

    return-object p0

    .line 124
    :pswitch_2b
    const-string p0, "getPnoScanResults"

    return-object p0

    .line 120
    :pswitch_2e
    const-string p0, "getScanResults"

    return-object p0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 111
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 520
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 175
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 179
    nop

    .line 180
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 181
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return v1

    .line 187
    :cond_17
    packed-switch p1, :pswitch_data_c0

    .line 281
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 275
    :pswitch_1f
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->abortScan()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_be

    .line 268
    :pswitch_27
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->stopPnoScan()Z

    move-result p1

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 271
    goto/16 :goto_be

    .line 259
    :pswitch_33
    sget-object p1, Landroid/net/wifi/nl80211/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/nl80211/PnoSettings;

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z

    move-result p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 264
    goto/16 :goto_be

    .line 253
    :pswitch_4a
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribePnoScanEvents()V

    .line 254
    goto/16 :goto_be

    .line 246
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IPnoScanEvent;

    move-result-object p1

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V

    .line 249
    goto :goto_be

    .line 240
    :pswitch_5e
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribeScanEvents()V

    .line 241
    goto :goto_be

    .line 233
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IScanEvent;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V

    .line 236
    goto :goto_be

    .line 223
    :pswitch_71
    sget-object p1, Landroid/net/wifi/nl80211/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/nl80211/SingleScanSettings;

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->scanRequest(Landroid/net/wifi/nl80211/SingleScanSettings;)I

    move-result p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    goto :goto_be

    .line 213
    :pswitch_87
    sget-object p1, Landroid/net/wifi/nl80211/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/nl80211/SingleScanSettings;

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z

    move-result p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 218
    goto :goto_be

    .line 205
    :pswitch_9d
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getMaxSsidsPerScan()I

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_be

    .line 198
    :pswitch_a8
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 201
    goto :goto_be

    .line 191
    :pswitch_b3
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 194
    nop

    .line 284
    :goto_be
    return v1

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_a8
        :pswitch_9d
        :pswitch_87
        :pswitch_71
        :pswitch_62
        :pswitch_5e
        :pswitch_4f
        :pswitch_4a
        :pswitch_33
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method
