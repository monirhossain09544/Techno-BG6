.class public abstract Landroid/service/wearable/IWearableSensingService$Stub;
.super Landroid/os/Binder;
.source "IWearableSensingService.java"

# interfaces
.implements Landroid/service/wearable/IWearableSensingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wearable/IWearableSensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wearable/IWearableSensingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_killProcess:I = 0xf

.field static final blacklist TRANSACTION_onValidatedByHotwordDetectionService:I = 0xa

.field static final blacklist TRANSACTION_provideConcurrentSecureConnection:I = 0x2

.field static final blacklist TRANSACTION_provideData:I = 0x5

.field static final blacklist TRANSACTION_provideDataStream:I = 0x4

.field static final blacklist TRANSACTION_provideReadOnlyParcelFileDescriptor:I = 0x3

.field static final blacklist TRANSACTION_provideSecureConnection:I = 0x1

.field static final blacklist TRANSACTION_queryServiceStatus:I = 0xe

.field static final blacklist TRANSACTION_registerDataRequestObserver:I = 0x6

.field static final blacklist TRANSACTION_startDetection:I = 0xc

.field static final blacklist TRANSACTION_startHotwordRecognition:I = 0x8

.field static final blacklist TRANSACTION_stopActiveHotwordAudio:I = 0xb

.field static final blacklist TRANSACTION_stopDetection:I = 0xd

.field static final blacklist TRANSACTION_stopHotwordRecognition:I = 0x9

.field static final blacklist TRANSACTION_unregisterDataRequestObserver:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.service.wearable.IWearableSensingService"

    invoke-virtual {p0, p0, v0}, Landroid/service/wearable/IWearableSensingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/wearable/IWearableSensingService;
    .registers 3

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_4
    const-string v0, "android.service.wearable.IWearableSensingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/wearable/IWearableSensingService;

    if-eqz v1, :cond_13

    .line 91
    check-cast v0, Landroid/service/wearable/IWearableSensingService;

    return-object v0

    .line 93
    :cond_13
    new-instance v0, Landroid/service/wearable/IWearableSensingService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/service/wearable/IWearableSensingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 102
    packed-switch p0, :pswitch_data_40

    .line 166
    const/4 p0, 0x0

    return-object p0

    .line 162
    :pswitch_5
    const-string p0, "killProcess"

    return-object p0

    .line 158
    :pswitch_8
    const-string/jumbo p0, "queryServiceStatus"

    return-object p0

    .line 154
    :pswitch_c
    const-string/jumbo p0, "stopDetection"

    return-object p0

    .line 150
    :pswitch_10
    const-string/jumbo p0, "startDetection"

    return-object p0

    .line 146
    :pswitch_14
    const-string/jumbo p0, "stopActiveHotwordAudio"

    return-object p0

    .line 142
    :pswitch_18
    const-string/jumbo p0, "onValidatedByHotwordDetectionService"

    return-object p0

    .line 138
    :pswitch_1c
    const-string/jumbo p0, "stopHotwordRecognition"

    return-object p0

    .line 134
    :pswitch_20
    const-string/jumbo p0, "startHotwordRecognition"

    return-object p0

    .line 130
    :pswitch_24
    const-string/jumbo p0, "unregisterDataRequestObserver"

    return-object p0

    .line 126
    :pswitch_28
    const-string/jumbo p0, "registerDataRequestObserver"

    return-object p0

    .line 122
    :pswitch_2c
    const-string/jumbo p0, "provideData"

    return-object p0

    .line 118
    :pswitch_30
    const-string/jumbo p0, "provideDataStream"

    return-object p0

    .line 114
    :pswitch_34
    const-string/jumbo p0, "provideReadOnlyParcelFileDescriptor"

    return-object p0

    .line 110
    :pswitch_38
    const-string/jumbo p0, "provideConcurrentSecureConnection"

    return-object p0

    .line 106
    :pswitch_3c
    const-string/jumbo p0, "provideSecureConnection"

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
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

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 588
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 173
    invoke-static {p1}, Landroid/service/wearable/IWearableSensingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    nop

    .line 178
    const-string v0, "android.service.wearable.IWearableSensingService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 182
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 185
    :cond_17
    packed-switch p1, :pswitch_data_18c

    .line 348
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 343
    :pswitch_20
    invoke-virtual {p0}, Landroid/service/wearable/IWearableSensingService$Stub;->killProcess()V

    .line 344
    goto/16 :goto_18b

    .line 332
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 336
    sget-object p4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/RemoteCallback;

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/wearable/IWearableSensingService$Stub;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 339
    goto/16 :goto_18b

    .line 324
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, p1}, Landroid/service/wearable/IWearableSensingService$Stub;->stopDetection(Ljava/lang/String;)V

    .line 327
    goto/16 :goto_18b

    .line 310
    :pswitch_49
    sget-object p1, Landroid/app/ambientcontext/AmbientContextEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 314
    sget-object p4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/RemoteCallback;

    .line 316
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/service/wearable/IWearableSensingService$Stub;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 319
    goto/16 :goto_18b

    .line 304
    :pswitch_6d
    invoke-virtual {p0}, Landroid/service/wearable/IWearableSensingService$Stub;->stopActiveHotwordAudio()V

    .line 305
    goto/16 :goto_18b

    .line 299
    :pswitch_72
    invoke-virtual {p0}, Landroid/service/wearable/IWearableSensingService$Stub;->onValidatedByHotwordDetectionService()V

    .line 300
    goto/16 :goto_18b

    .line 292
    :pswitch_77
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1}, Landroid/service/wearable/IWearableSensingService$Stub;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V

    .line 295
    goto/16 :goto_18b

    .line 282
    :pswitch_87
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 284
    sget-object p3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/RemoteCallback;

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, p1, p3}, Landroid/service/wearable/IWearableSensingService$Stub;->startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 287
    goto/16 :goto_18b

    .line 268
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 274
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/service/wearable/IWearableSensingService$Stub;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 277
    goto/16 :goto_18b

    .line 252
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/RemoteCallback;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 260
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/RemoteCallback;

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/service/wearable/IWearableSensingService$Stub;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 263
    goto/16 :goto_18b

    .line 240
    :pswitch_e2
    move-object v2, p0

    sget-object p1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    .line 242
    sget-object p3, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/SharedMemory;

    .line 244
    sget-object p4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/RemoteCallback;

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/wearable/IWearableSensingService$Stub;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 247
    goto/16 :goto_18b

    .line 228
    :pswitch_103
    move-object v2, p0

    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p3

    .line 232
    sget-object p4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/RemoteCallback;

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/wearable/IWearableSensingService$Stub;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 235
    goto :goto_18b

    .line 216
    :pswitch_123
    move-object v2, p0

    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 218
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PersistableBundle;

    .line 220
    sget-object p4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/RemoteCallback;

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/wearable/IWearableSensingService$Stub;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 223
    goto :goto_18b

    .line 202
    :pswitch_143
    move-object v2, p0

    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 204
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PersistableBundle;

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p4

    .line 208
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/service/wearable/IWearableSensingService$Stub;->provideConcurrentSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 211
    goto :goto_18b

    .line 190
    :pswitch_16b
    move-object v2, p0

    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/wearable/IWearableSensingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object p3

    .line 194
    sget-object p4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/RemoteCallback;

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, p1, p3, p4}, Landroid/service/wearable/IWearableSensingService$Stub;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 197
    nop

    .line 351
    :goto_18b
    return v1

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_16b
        :pswitch_143
        :pswitch_123
        :pswitch_103
        :pswitch_e2
        :pswitch_bb
        :pswitch_9f
        :pswitch_87
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_49
        :pswitch_3d
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method
