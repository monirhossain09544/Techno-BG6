.class public abstract Landroid/os/IThermalService$Stub;
.super Landroid/os/Binder;
.source "IThermalService.java"

# interfaces
.implements Landroid/os/IThermalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IThermalService"

.field static final blacklist TRANSACTION_getCurrentCoolingDevices:I = 0x9

.field static final blacklist TRANSACTION_getCurrentCoolingDevicesWithType:I = 0xa

.field static final blacklist TRANSACTION_getCurrentTemperatures:I = 0x4

.field static final blacklist TRANSACTION_getCurrentTemperaturesWithType:I = 0x5

.field static final blacklist TRANSACTION_getCurrentThermalStatus:I = 0x8

.field static final blacklist TRANSACTION_getThermalHeadroom:I = 0xb

.field static final blacklist TRANSACTION_getThermalHeadroomThresholds:I = 0xc

.field static final greylist-max-o TRANSACTION_registerThermalEventListener:I = 0x1

.field static final blacklist TRANSACTION_registerThermalEventListenerWithType:I = 0x2

.field static final blacklist TRANSACTION_registerThermalHeadroomListener:I = 0xd

.field static final blacklist TRANSACTION_registerThermalStatusListener:I = 0x6

.field static final greylist-max-o TRANSACTION_unregisterThermalEventListener:I = 0x3

.field static final blacklist TRANSACTION_unregisterThermalHeadroomListener:I = 0xe

.field static final blacklist TRANSACTION_unregisterThermalStatusListener:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 159
    const-string v0, "android.os.IThermalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IThermalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;
    .registers 3

    .line 167
    if-nez p0, :cond_4

    .line 168
    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_4
    const-string v0, "android.os.IThermalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IThermalService;

    if-eqz v1, :cond_13

    .line 172
    check-cast v0, Landroid/os/IThermalService;

    return-object v0

    .line 174
    :cond_13
    new-instance v0, Landroid/os/IThermalService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IThermalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 183
    packed-switch p0, :pswitch_data_36

    .line 243
    const/4 p0, 0x0

    return-object p0

    .line 239
    :pswitch_5
    const-string/jumbo p0, "unregisterThermalHeadroomListener"

    return-object p0

    .line 235
    :pswitch_9
    const-string/jumbo p0, "registerThermalHeadroomListener"

    return-object p0

    .line 231
    :pswitch_d
    const-string p0, "getThermalHeadroomThresholds"

    return-object p0

    .line 227
    :pswitch_10
    const-string p0, "getThermalHeadroom"

    return-object p0

    .line 223
    :pswitch_13
    const-string p0, "getCurrentCoolingDevicesWithType"

    return-object p0

    .line 219
    :pswitch_16
    const-string p0, "getCurrentCoolingDevices"

    return-object p0

    .line 215
    :pswitch_19
    const-string p0, "getCurrentThermalStatus"

    return-object p0

    .line 211
    :pswitch_1c
    const-string/jumbo p0, "unregisterThermalStatusListener"

    return-object p0

    .line 207
    :pswitch_20
    const-string/jumbo p0, "registerThermalStatusListener"

    return-object p0

    .line 203
    :pswitch_24
    const-string p0, "getCurrentTemperaturesWithType"

    return-object p0

    .line 199
    :pswitch_27
    const-string p0, "getCurrentTemperatures"

    return-object p0

    .line 195
    :pswitch_2a
    const-string/jumbo p0, "unregisterThermalEventListener"

    return-object p0

    .line 191
    :pswitch_2e
    const-string/jumbo p0, "registerThermalEventListenerWithType"

    return-object p0

    .line 187
    :pswitch_32
    const-string/jumbo p0, "registerThermalEventListener"

    return-object p0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 178
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 760
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 250
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 254
    nop

    .line 255
    const-string v0, "android.os.IThermalService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 256
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 259
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    return v1

    .line 262
    :cond_17
    packed-switch p1, :pswitch_data_128

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 387
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalHeadroomListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalHeadroomListener;

    move-result-object p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->unregisterThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result p1

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    goto/16 :goto_127

    .line 377
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalHeadroomListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalHeadroomListener;

    move-result-object p1

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->registerThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result p1

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 382
    goto/16 :goto_127

    .line 369
    :pswitch_4d
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getThermalHeadroomThresholds()[F

    move-result-object p1

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 372
    goto/16 :goto_127

    .line 360
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->getThermalHeadroom(I)F

    move-result p1

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 365
    goto/16 :goto_127

    .line 350
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;

    move-result-object p1

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 355
    goto/16 :goto_127

    .line 342
    :pswitch_7f
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 345
    goto/16 :goto_127

    .line 335
    :pswitch_8b
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentThermalStatus()I

    move-result p1

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    goto/16 :goto_127

    .line 326
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object p1

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    goto/16 :goto_127

    .line 316
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalStatusListener;

    move-result-object p1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result p1

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    goto :goto_127

    .line 306
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object p1

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 311
    goto :goto_127

    .line 298
    :pswitch_d6
    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 301
    goto :goto_127

    .line 289
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object p1

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    goto :goto_127

    .line 277
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, p1, p4}, Landroid/os/IThermalService$Stub;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    move-result p1

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    goto :goto_127

    .line 267
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, p1}, Landroid/os/IThermalService$Stub;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    move-result p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 272
    nop

    .line 399
    :goto_127
    return v1

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_111
        :pswitch_f7
        :pswitch_e1
        :pswitch_d6
        :pswitch_c4
        :pswitch_ae
        :pswitch_97
        :pswitch_8b
        :pswitch_7f
        :pswitch_6c
        :pswitch_59
        :pswitch_4d
        :pswitch_36
        :pswitch_1f
    .end packed-switch
.end method
