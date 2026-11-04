.class public abstract Lcom/android/internal/app/ISoundTriggerSession$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerSession.java"

# interfaces
.implements Lcom/android/internal/app/ISoundTriggerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ISoundTriggerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ISoundTriggerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteSoundModel:I = 0x3

.field static final blacklist TRANSACTION_getModelState:I = 0xc

.field static final blacklist TRANSACTION_getModuleProperties:I = 0xd

.field static final blacklist TRANSACTION_getParameter:I = 0xf

.field static final blacklist TRANSACTION_getSoundModel:I = 0x1

.field static final blacklist TRANSACTION_isRecognitionActive:I = 0xb

.field static final blacklist TRANSACTION_loadGenericSoundModel:I = 0x6

.field static final blacklist TRANSACTION_loadKeyphraseSoundModel:I = 0x7

.field static final blacklist TRANSACTION_queryParameter:I = 0x10

.field static final blacklist TRANSACTION_setParameter:I = 0xe

.field static final blacklist TRANSACTION_startRecognition:I = 0x4

.field static final blacklist TRANSACTION_startRecognitionForService:I = 0x8

.field static final blacklist TRANSACTION_stopRecognition:I = 0x5

.field static final blacklist TRANSACTION_stopRecognitionForService:I = 0x9

.field static final blacklist TRANSACTION_unloadSoundModel:I = 0xa

.field static final blacklist TRANSACTION_updateSoundModel:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "com.android.internal.app.ISoundTriggerSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;
    .registers 3

    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_4
    const-string v0, "com.android.internal.app.ISoundTriggerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v1, :cond_13

    .line 107
    check-cast v0, Lcom/android/internal/app/ISoundTriggerSession;

    return-object v0

    .line 109
    :cond_13
    new-instance v0, Lcom/android/internal/app/ISoundTriggerSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 118
    packed-switch p0, :pswitch_data_36

    .line 186
    const/4 p0, 0x0

    return-object p0

    .line 182
    :pswitch_5
    const-string p0, "queryParameter"

    return-object p0

    .line 178
    :pswitch_8
    const-string p0, "getParameter"

    return-object p0

    .line 174
    :pswitch_b
    const-string p0, "setParameter"

    return-object p0

    .line 170
    :pswitch_e
    const-string p0, "getModuleProperties"

    return-object p0

    .line 166
    :pswitch_11
    const-string p0, "getModelState"

    return-object p0

    .line 162
    :pswitch_14
    const-string p0, "isRecognitionActive"

    return-object p0

    .line 158
    :pswitch_17
    const-string p0, "unloadSoundModel"

    return-object p0

    .line 154
    :pswitch_1a
    const-string p0, "stopRecognitionForService"

    return-object p0

    .line 150
    :pswitch_1d
    const-string p0, "startRecognitionForService"

    return-object p0

    .line 146
    :pswitch_20
    const-string p0, "loadKeyphraseSoundModel"

    return-object p0

    .line 142
    :pswitch_23
    const-string p0, "loadGenericSoundModel"

    return-object p0

    .line 138
    :pswitch_26
    const-string p0, "stopRecognition"

    return-object p0

    .line 134
    :pswitch_29
    const-string p0, "startRecognition"

    return-object p0

    .line 130
    :pswitch_2c
    const-string p0, "deleteSoundModel"

    return-object p0

    .line 126
    :pswitch_2f
    const-string p0, "updateSoundModel"

    return-object p0

    .line 122
    :pswitch_32
    const-string p0, "getSoundModel"

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_32
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

    .line 113
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 719
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 193
    invoke-static {p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 197
    nop

    .line 198
    const-string v0, "com.android.internal.app.ISoundTriggerSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 199
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 202
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v1

    .line 205
    :cond_17
    packed-switch p1, :pswitch_data_1bc

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 375
    :pswitch_1f
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object p1

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 382
    goto/16 :goto_1bb

    .line 363
    :pswitch_3a
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getParameter(Landroid/os/ParcelUuid;I)I

    move-result p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    goto/16 :goto_1bb

    .line 349
    :pswitch_55
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->setParameter(Landroid/os/ParcelUuid;II)I

    move-result p1

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    goto/16 :goto_1bb

    .line 341
    :pswitch_74
    invoke-virtual {p0}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 344
    goto/16 :goto_1bb

    .line 332
    :pswitch_80
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getModelState(Landroid/os/ParcelUuid;)I

    move-result p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    goto/16 :goto_1bb

    .line 322
    :pswitch_97
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->isRecognitionActive(Landroid/os/ParcelUuid;)Z

    move-result p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 327
    goto/16 :goto_1bb

    .line 312
    :pswitch_ae
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    move-result p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    goto/16 :goto_1bb

    .line 302
    :pswitch_c5
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->stopRecognitionForService(Landroid/os/ParcelUuid;)I

    move-result p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    goto/16 :goto_1bb

    .line 286
    :pswitch_dc
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 288
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 290
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 292
    sget-object v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    goto/16 :goto_1bb

    .line 276
    :pswitch_10b
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    goto/16 :goto_1bb

    .line 266
    :pswitch_122
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result p1

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    goto/16 :goto_1bb

    .line 254
    :pswitch_139
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object p4

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->stopRecognition(Landroid/os/ParcelUuid;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;)I

    move-result p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    goto :goto_1bb

    .line 238
    :pswitch_157
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    move-result-object p4

    .line 242
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, p1, p4, v0, v2}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->startRecognition(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    goto :goto_1bb

    .line 229
    :pswitch_181
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->deleteSoundModel(Landroid/os/ParcelUuid;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_1bb

    .line 220
    :pswitch_193
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_1bb

    .line 210
    :pswitch_1a5
    sget-object p1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ISoundTriggerSession$Stub;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    nop

    .line 389
    :goto_1bb
    return v1

    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_1a5
        :pswitch_193
        :pswitch_181
        :pswitch_157
        :pswitch_139
        :pswitch_122
        :pswitch_10b
        :pswitch_dc
        :pswitch_c5
        :pswitch_ae
        :pswitch_97
        :pswitch_80
        :pswitch_74
        :pswitch_55
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
