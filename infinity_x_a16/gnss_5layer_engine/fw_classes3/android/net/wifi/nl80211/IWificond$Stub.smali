.class public abstract Landroid/net/wifi/nl80211/IWificond$Stub;
.super Landroid/os/Binder;
.source "IWificond.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWificond;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWificond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_GetApInterfaces:I = 0x7

.field static final blacklist TRANSACTION_GetClientInterfaces:I = 0x6

.field static final blacklist TRANSACTION_RegisterCallback:I = 0xd

.field static final blacklist TRANSACTION_UnregisterCallback:I = 0xe

.field static final blacklist TRANSACTION_createApInterface:I = 0x1

.field static final blacklist TRANSACTION_createClientInterface:I = 0x2

.field static final blacklist TRANSACTION_getAvailable2gChannels:I = 0x8

.field static final blacklist TRANSACTION_getAvailable5gNonDFSChannels:I = 0x9

.field static final blacklist TRANSACTION_getAvailable60gChannels:I = 0xc

.field static final blacklist TRANSACTION_getAvailable6gChannels:I = 0xb

.field static final blacklist TRANSACTION_getAvailableDFSChannels:I = 0xa

.field static final blacklist TRANSACTION_getDeviceWiphyCapabilities:I = 0x11

.field static final blacklist TRANSACTION_notifyCountryCodeChanged:I = 0x12

.field static final blacklist TRANSACTION_registerWificondEventCallback:I = 0xf

.field static final blacklist TRANSACTION_tearDownApInterface:I = 0x3

.field static final blacklist TRANSACTION_tearDownClientInterface:I = 0x4

.field static final blacklist TRANSACTION_tearDownInterfaces:I = 0x5

.field static final blacklist TRANSACTION_unregisterWificondEventCallback:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 144
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;
    .registers 3

    .line 152
    if-nez p0, :cond_4

    .line 153
    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_4
    const-string v0, "android.net.wifi.nl80211.IWificond"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWificond;

    if-eqz v1, :cond_13

    .line 157
    check-cast v0, Landroid/net/wifi/nl80211/IWificond;

    return-object v0

    .line 159
    :cond_13
    new-instance v0, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/IWificond$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 168
    packed-switch p0, :pswitch_data_42

    .line 244
    const/4 p0, 0x0

    return-object p0

    .line 240
    :pswitch_5
    const-string/jumbo p0, "notifyCountryCodeChanged"

    return-object p0

    .line 236
    :pswitch_9
    const-string p0, "getDeviceWiphyCapabilities"

    return-object p0

    .line 232
    :pswitch_c
    const-string/jumbo p0, "unregisterWificondEventCallback"

    return-object p0

    .line 228
    :pswitch_10
    const-string/jumbo p0, "registerWificondEventCallback"

    return-object p0

    .line 224
    :pswitch_14
    const-string p0, "UnregisterCallback"

    return-object p0

    .line 220
    :pswitch_17
    const-string p0, "RegisterCallback"

    return-object p0

    .line 216
    :pswitch_1a
    const-string p0, "getAvailable60gChannels"

    return-object p0

    .line 212
    :pswitch_1d
    const-string p0, "getAvailable6gChannels"

    return-object p0

    .line 208
    :pswitch_20
    const-string p0, "getAvailableDFSChannels"

    return-object p0

    .line 204
    :pswitch_23
    const-string p0, "getAvailable5gNonDFSChannels"

    return-object p0

    .line 200
    :pswitch_26
    const-string p0, "getAvailable2gChannels"

    return-object p0

    .line 196
    :pswitch_29
    const-string p0, "GetApInterfaces"

    return-object p0

    .line 192
    :pswitch_2c
    const-string p0, "GetClientInterfaces"

    return-object p0

    .line 188
    :pswitch_2f
    const-string/jumbo p0, "tearDownInterfaces"

    return-object p0

    .line 184
    :pswitch_33
    const-string/jumbo p0, "tearDownClientInterface"

    return-object p0

    .line 180
    :pswitch_37
    const-string/jumbo p0, "tearDownApInterface"

    return-object p0

    .line 176
    :pswitch_3b
    const-string p0, "createClientInterface"

    return-object p0

    .line 172
    :pswitch_3e
    const-string p0, "createApInterface"

    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 163
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 779
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 251
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 255
    nop

    .line 256
    const-string v0, "android.net.wifi.nl80211.IWificond"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 257
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    return v1

    .line 263
    :cond_17
    packed-switch p1, :pswitch_data_118

    .line 409
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 404
    :pswitch_1f
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->notifyCountryCodeChanged()V

    .line 405
    goto/16 :goto_117

    .line 395
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object p1

    .line 398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    goto/16 :goto_117

    .line 387
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->unregisterWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 390
    goto/16 :goto_117

    .line 379
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IWificondEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificondEventCallback;

    move-result-object p1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V

    .line 382
    goto/16 :goto_117

    .line 371
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->UnregisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 374
    goto/16 :goto_117

    .line 363
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IInterfaceEventCallback;

    move-result-object p1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->RegisterCallback(Landroid/net/wifi/nl80211/IInterfaceEventCallback;)V

    .line 366
    goto/16 :goto_117

    .line 355
    :pswitch_77
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable60gChannels()[I

    move-result-object p1

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 358
    goto/16 :goto_117

    .line 348
    :pswitch_83
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable6gChannels()[I

    move-result-object p1

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 351
    goto/16 :goto_117

    .line 341
    :pswitch_8f
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailableDFSChannels()[I

    move-result-object p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 344
    goto/16 :goto_117

    .line 334
    :pswitch_9b
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable5gNonDFSChannels()[I

    move-result-object p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 337
    goto/16 :goto_117

    .line 327
    :pswitch_a7
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->getAvailable2gChannels()[I

    move-result-object p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 330
    goto :goto_117

    .line 320
    :pswitch_b2
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetApInterfaces()Ljava/util/List;

    move-result-object p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 323
    goto :goto_117

    .line 313
    :pswitch_bd
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->GetClientInterfaces()Ljava/util/List;

    move-result-object p1

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 316
    goto :goto_117

    .line 307
    :pswitch_c8
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownInterfaces()V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    goto :goto_117

    .line 298
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    goto :goto_117

    .line 288
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->tearDownApInterface(Ljava/lang/String;)Z

    move-result p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 293
    goto :goto_117

    .line 278
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object p1

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 283
    goto :goto_117

    .line 268
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/IWificond$Stub;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object p1

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 273
    nop

    .line 412
    :goto_117
    return v1

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_105
        :pswitch_f3
        :pswitch_e1
        :pswitch_cf
        :pswitch_c8
        :pswitch_bd
        :pswitch_b2
        :pswitch_a7
        :pswitch_9b
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_67
        :pswitch_57
        :pswitch_47
        :pswitch_37
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
