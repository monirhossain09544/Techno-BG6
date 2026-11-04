.class public abstract Landroid/speech/tts/ITextToSpeechService$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechService"

.field static final greylist-max-o TRANSACTION_getClientDefaultLanguage:I = 0x8

.field static final greylist-max-o TRANSACTION_getDefaultVoiceNameFor:I = 0xf

.field static final greylist-max-o TRANSACTION_getFeaturesForLanguage:I = 0xa

.field static final greylist-max-o TRANSACTION_getLanguage:I = 0x7

.field static final greylist-max-o TRANSACTION_getVoices:I = 0xd

.field static final greylist-max-o TRANSACTION_isLanguageAvailable:I = 0x9

.field static final greylist-max-o TRANSACTION_isSpeaking:I = 0x5

.field static final greylist-max-o TRANSACTION_loadLanguage:I = 0xb

.field static final greylist-max-o TRANSACTION_loadVoice:I = 0xe

.field static final greylist-max-o TRANSACTION_playAudio:I = 0x3

.field static final greylist-max-o TRANSACTION_playSilence:I = 0x4

.field static final greylist-max-o TRANSACTION_setCallback:I = 0xc

.field static final greylist-max-o TRANSACTION_speak:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x6

.field static final greylist-max-o TRANSACTION_synthesizeToFileDescriptor:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 232
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;
    .registers 3

    .line 240
    if-nez p0, :cond_4

    .line 241
    const/4 p0, 0x0

    return-object p0

    .line 243
    :cond_4
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechService;

    if-eqz v1, :cond_13

    .line 245
    check-cast v0, Landroid/speech/tts/ITextToSpeechService;

    return-object v0

    .line 247
    :cond_13
    new-instance v0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 256
    packed-switch p0, :pswitch_data_38

    .line 320
    const/4 p0, 0x0

    return-object p0

    .line 316
    :pswitch_5
    const-string p0, "getDefaultVoiceNameFor"

    return-object p0

    .line 312
    :pswitch_8
    const-string p0, "loadVoice"

    return-object p0

    .line 308
    :pswitch_b
    const-string p0, "getVoices"

    return-object p0

    .line 304
    :pswitch_e
    const-string/jumbo p0, "setCallback"

    return-object p0

    .line 300
    :pswitch_12
    const-string p0, "loadLanguage"

    return-object p0

    .line 296
    :pswitch_15
    const-string p0, "getFeaturesForLanguage"

    return-object p0

    .line 292
    :pswitch_18
    const-string p0, "isLanguageAvailable"

    return-object p0

    .line 288
    :pswitch_1b
    const-string p0, "getClientDefaultLanguage"

    return-object p0

    .line 284
    :pswitch_1e
    const-string p0, "getLanguage"

    return-object p0

    .line 280
    :pswitch_21
    const-string/jumbo p0, "stop"

    return-object p0

    .line 276
    :pswitch_25
    const-string p0, "isSpeaking"

    return-object p0

    .line 272
    :pswitch_28
    const-string/jumbo p0, "playSilence"

    return-object p0

    .line 268
    :pswitch_2c
    const-string/jumbo p0, "playAudio"

    return-object p0

    .line 264
    :pswitch_30
    const-string/jumbo p0, "synthesizeToFileDescriptor"

    return-object p0

    .line 260
    :pswitch_34
    const-string/jumbo p0, "speak"

    return-object p0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 251
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1015
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 327
    invoke-static {p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 331
    nop

    .line 332
    const-string v0, "android.speech.tts.ITextToSpeechService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 333
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 336
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    return v1

    .line 339
    :cond_17
    packed-switch p1, :pswitch_data_1ae

    .line 532
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 519
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, p1, p4, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    goto/16 :goto_1ac

    .line 507
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, p1, p4}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result p1

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    goto/16 :goto_1ac

    .line 499
    :pswitch_51
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getVoices()Ljava/util/List;

    move-result-object p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 502
    goto/16 :goto_1ac

    .line 489
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p4

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, p1, p4}, Landroid/speech/tts/ITextToSpeechService$Stub;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    goto/16 :goto_1ac

    .line 473
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    goto/16 :goto_1ac

    .line 459
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, p1, p4, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 468
    goto/16 :goto_1ac

    .line 445
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, p1, p4, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    goto/16 :goto_1ac

    .line 437
    :pswitch_c9
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object p1

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 440
    goto/16 :goto_1ac

    .line 430
    :pswitch_d5
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getLanguage()[Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 433
    goto/16 :goto_1ac

    .line 421
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->stop(Landroid/os/IBinder;)I

    move-result p1

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    goto/16 :goto_1ac

    .line 413
    :pswitch_f4
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->isSpeaking()Z

    move-result p1

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 416
    goto/16 :goto_1ac

    .line 398
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/speech/tts/ITextToSpeechService$Stub;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    move-result p1

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    goto/16 :goto_1ac

    .line 380
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 382
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 386
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/speech/tts/ITextToSpeechService$Stub;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    goto :goto_1ac

    .line 362
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 364
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    .line 366
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 368
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/speech/tts/ITextToSpeechService$Stub;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    goto :goto_1ac

    .line 344
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 346
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 350
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/speech/tts/ITextToSpeechService$Stub;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    nop

    .line 535
    :goto_1ac
    return v1

    nop

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_17f
        :pswitch_14d
        :pswitch_120
        :pswitch_100
        :pswitch_f4
        :pswitch_e1
        :pswitch_d5
        :pswitch_c9
        :pswitch_ae
        :pswitch_93
        :pswitch_74
        :pswitch_5d
        :pswitch_51
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
