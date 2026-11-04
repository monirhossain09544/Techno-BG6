.class public abstract Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IHotwordRecognitionStatusCallback.java"

# interfaces
.implements Lcom/android/internal/app/IHotwordRecognitionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onGenericSoundTriggerDetected:I = 0x3

.field static final blacklist TRANSACTION_onHotwordDetectionServiceFailure:I = 0x5

.field static final blacklist TRANSACTION_onKeyphraseDetected:I = 0x1

.field static final blacklist TRANSACTION_onKeyphraseDetectedFromExternalSource:I = 0x2

.field static final blacklist TRANSACTION_onOpenFile:I = 0xd

.field static final blacklist TRANSACTION_onProcessRestarted:I = 0xc

.field static final blacklist TRANSACTION_onRecognitionPaused:I = 0x9

.field static final blacklist TRANSACTION_onRecognitionResumed:I = 0xa

.field static final blacklist TRANSACTION_onRejected:I = 0x4

.field static final blacklist TRANSACTION_onSoundTriggerFailure:I = 0x7

.field static final blacklist TRANSACTION_onStatusReported:I = 0xb

.field static final blacklist TRANSACTION_onUnknownFailure:I = 0x8

.field static final blacklist TRANSACTION_onVisualQueryDetectionServiceFailure:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .registers 3

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_4
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    if-eqz v1, :cond_13

    .line 143
    check-cast v0, Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    return-object v0

    .line 145
    :cond_13
    new-instance v0, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 154
    packed-switch p0, :pswitch_data_2c

    .line 210
    const/4 p0, 0x0

    return-object p0

    .line 206
    :pswitch_5
    const-string p0, "onOpenFile"

    return-object p0

    .line 202
    :pswitch_8
    const-string p0, "onProcessRestarted"

    return-object p0

    .line 198
    :pswitch_b
    const-string p0, "onStatusReported"

    return-object p0

    .line 194
    :pswitch_e
    const-string p0, "onRecognitionResumed"

    return-object p0

    .line 190
    :pswitch_11
    const-string p0, "onRecognitionPaused"

    return-object p0

    .line 186
    :pswitch_14
    const-string p0, "onUnknownFailure"

    return-object p0

    .line 182
    :pswitch_17
    const-string p0, "onSoundTriggerFailure"

    return-object p0

    .line 178
    :pswitch_1a
    const-string p0, "onVisualQueryDetectionServiceFailure"

    return-object p0

    .line 174
    :pswitch_1d
    const-string p0, "onHotwordDetectionServiceFailure"

    return-object p0

    .line 170
    :pswitch_20
    const-string p0, "onRejected"

    return-object p0

    .line 166
    :pswitch_23
    const-string p0, "onGenericSoundTriggerDetected"

    return-object p0

    .line 162
    :pswitch_26
    const-string p0, "onKeyphraseDetectedFromExternalSource"

    return-object p0

    .line 158
    :pswitch_29
    const-string p0, "onKeyphraseDetected"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
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

    .line 149
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 587
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 217
    invoke-static {p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 221
    nop

    .line 222
    const-string v0, "com.android.internal.app.IHotwordRecognitionStatusCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 223
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v1

    .line 229
    :cond_17
    packed-switch p1, :pswitch_data_cc

    .line 332
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 323
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 325
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 328
    goto/16 :goto_cb

    .line 317
    :pswitch_33
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onProcessRestarted()V

    .line 318
    goto/16 :goto_cb

    .line 310
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onStatusReported(I)V

    .line 313
    goto/16 :goto_cb

    .line 304
    :pswitch_44
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRecognitionResumed()V

    .line 305
    goto/16 :goto_cb

    .line 299
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRecognitionPaused()V

    .line 300
    goto/16 :goto_cb

    .line 292
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onUnknownFailure(Ljava/lang/String;)V

    .line 295
    goto/16 :goto_cb

    .line 284
    :pswitch_5a
    sget-object p1, Landroid/service/voice/SoundTriggerFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/SoundTriggerFailure;

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    .line 287
    goto :goto_cb

    .line 276
    :pswitch_69
    sget-object p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    .line 279
    goto :goto_cb

    .line 268
    :pswitch_78
    sget-object p1, Landroid/service/voice/HotwordDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    .line 271
    goto :goto_cb

    .line 260
    :pswitch_87
    sget-object p1, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordRejectedResult;

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 263
    goto :goto_cb

    .line 252
    :pswitch_96
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    .line 255
    goto :goto_cb

    .line 244
    :pswitch_a5
    sget-object p1, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/voice/HotwordDetectedResult;

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V

    .line 247
    goto :goto_cb

    .line 234
    :pswitch_b4
    sget-object p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 236
    sget-object p3, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/voice/HotwordDetectedResult;

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V

    .line 239
    nop

    .line 335
    :goto_cb
    return v1

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_a5
        :pswitch_96
        :pswitch_87
        :pswitch_78
        :pswitch_69
        :pswitch_5a
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_38
        :pswitch_33
        :pswitch_1f
    .end packed-switch
.end method
