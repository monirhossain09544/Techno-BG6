.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final blacklist TRANSACTION_addConferenceParticipants:I = 0x17

.field static final greylist-max-o TRANSACTION_answerCall:I = 0x1

.field static final greylist-max-o TRANSACTION_conference:I = 0x13

.field static final blacklist TRANSACTION_consultativeTransfer:I = 0x6

.field static final greylist-max-o TRANSACTION_deflectCall:I = 0x2

.field static final greylist-max-o TRANSACTION_disconnectCall:I = 0x7

.field static final blacklist TRANSACTION_enterBackgroundAudioProcessing:I = 0xd

.field static final blacklist TRANSACTION_exitBackgroundAudioProcessing:I = 0xe

.field static final greylist-max-o TRANSACTION_handoverTo:I = 0x22

.field static final greylist-max-o TRANSACTION_holdCall:I = 0x8

.field static final greylist-max-o TRANSACTION_mergeConference:I = 0x15

.field static final greylist-max-o TRANSACTION_mute:I = 0xa

.field static final greylist-max-o TRANSACTION_phoneAccountSelected:I = 0x12

.field static final greylist-max-o TRANSACTION_playDtmfTone:I = 0xf

.field static final greylist-max-o TRANSACTION_postDialContinue:I = 0x11

.field static final greylist-max-o TRANSACTION_pullExternalCall:I = 0x1a

.field static final greylist-max-o TRANSACTION_putExtras:I = 0x1c

.field static final greylist-max-o TRANSACTION_rejectCall:I = 0x3

.field static final blacklist TRANSACTION_rejectCallWithReason:I = 0x4

.field static final greylist-max-o TRANSACTION_removeExtras:I = 0x1d

.field static final blacklist TRANSACTION_requestCallEndpointChange:I = 0xc

.field static final greylist-max-o TRANSACTION_respondToRttRequest:I = 0x1f

.field static final greylist-max-o TRANSACTION_sendCallEvent:I = 0x1b

.field static final greylist-max-o TRANSACTION_sendRttRequest:I = 0x1e

.field static final greylist-max-o TRANSACTION_setAudioRoute:I = 0xb

.field static final greylist-max-o TRANSACTION_setRttMode:I = 0x21

.field static final greylist-max-o TRANSACTION_splitFromConference:I = 0x14

.field static final greylist-max-o TRANSACTION_stopDtmfTone:I = 0x10

.field static final greylist-max-o TRANSACTION_stopRtt:I = 0x20

.field static final greylist-max-o TRANSACTION_swapConference:I = 0x16

.field static final blacklist TRANSACTION_transferCall:I = 0x5

.field static final greylist-max-o TRANSACTION_turnOffProximitySensor:I = 0x19

.field static final greylist-max-o TRANSACTION_turnOnProximitySensor:I = 0x18

.field static final greylist-max-o TRANSACTION_unholdCall:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .registers 3

    .line 144
    if-nez p0, :cond_4

    .line 145
    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_4
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_13

    .line 149
    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    return-object v0

    .line 151
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 160
    packed-switch p0, :pswitch_data_6c

    .line 300
    const/4 p0, 0x0

    return-object p0

    .line 296
    :pswitch_5
    const-string p0, "handoverTo"

    return-object p0

    .line 292
    :pswitch_8
    const-string p0, "setRttMode"

    return-object p0

    .line 288
    :pswitch_b
    const-string p0, "stopRtt"

    return-object p0

    .line 284
    :pswitch_e
    const-string p0, "respondToRttRequest"

    return-object p0

    .line 280
    :pswitch_11
    const-string p0, "sendRttRequest"

    return-object p0

    .line 276
    :pswitch_14
    const-string p0, "removeExtras"

    return-object p0

    .line 272
    :pswitch_17
    const-string p0, "putExtras"

    return-object p0

    .line 268
    :pswitch_1a
    const-string p0, "sendCallEvent"

    return-object p0

    .line 264
    :pswitch_1d
    const-string p0, "pullExternalCall"

    return-object p0

    .line 260
    :pswitch_20
    const-string p0, "turnOffProximitySensor"

    return-object p0

    .line 256
    :pswitch_23
    const-string p0, "turnOnProximitySensor"

    return-object p0

    .line 252
    :pswitch_26
    const-string p0, "addConferenceParticipants"

    return-object p0

    .line 248
    :pswitch_29
    const-string p0, "swapConference"

    return-object p0

    .line 244
    :pswitch_2c
    const-string p0, "mergeConference"

    return-object p0

    .line 240
    :pswitch_2f
    const-string p0, "splitFromConference"

    return-object p0

    .line 236
    :pswitch_32
    const-string p0, "conference"

    return-object p0

    .line 232
    :pswitch_35
    const-string p0, "phoneAccountSelected"

    return-object p0

    .line 228
    :pswitch_38
    const-string p0, "postDialContinue"

    return-object p0

    .line 224
    :pswitch_3b
    const-string p0, "stopDtmfTone"

    return-object p0

    .line 220
    :pswitch_3e
    const-string p0, "playDtmfTone"

    return-object p0

    .line 216
    :pswitch_41
    const-string p0, "exitBackgroundAudioProcessing"

    return-object p0

    .line 212
    :pswitch_44
    const-string p0, "enterBackgroundAudioProcessing"

    return-object p0

    .line 208
    :pswitch_47
    const-string p0, "requestCallEndpointChange"

    return-object p0

    .line 204
    :pswitch_4a
    const-string p0, "setAudioRoute"

    return-object p0

    .line 200
    :pswitch_4d
    const-string p0, "mute"

    return-object p0

    .line 196
    :pswitch_50
    const-string p0, "unholdCall"

    return-object p0

    .line 192
    :pswitch_53
    const-string p0, "holdCall"

    return-object p0

    .line 188
    :pswitch_56
    const-string p0, "disconnectCall"

    return-object p0

    .line 184
    :pswitch_59
    const-string p0, "consultativeTransfer"

    return-object p0

    .line 180
    :pswitch_5c
    const-string p0, "transferCall"

    return-object p0

    .line 176
    :pswitch_5f
    const-string p0, "rejectCallWithReason"

    return-object p0

    .line 172
    :pswitch_62
    const-string p0, "rejectCall"

    return-object p0

    .line 168
    :pswitch_65
    const-string p0, "deflectCall"

    return-object p0

    .line 164
    :pswitch_68
    const-string p0, "answerCall"

    return-object p0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
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

    .line 155
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1146
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 307
    invoke-static {p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 311
    nop

    .line 312
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 313
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 316
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    return v1

    .line 319
    :cond_17
    packed-switch p1, :pswitch_data_246

    .line 650
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 637
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 639
    sget-object p3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/PhoneAccountHandle;

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 643
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    .line 646
    goto/16 :goto_244

    .line 627
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setRttMode(Ljava/lang/String;I)V

    .line 632
    goto/16 :goto_244

    .line 619
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopRtt(Ljava/lang/String;)V

    .line 622
    goto/16 :goto_244

    .line 607
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->respondToRttRequest(Ljava/lang/String;IZ)V

    .line 614
    goto/16 :goto_244

    .line 599
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendRttRequest(Ljava/lang/String;)V

    .line 602
    goto/16 :goto_244

    .line 589
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 594
    goto/16 :goto_244

    .line 579
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 581
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 583
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 584
    goto/16 :goto_244

    .line 565
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 571
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 574
    goto/16 :goto_244

    .line 557
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    .line 560
    goto/16 :goto_244

    .line 549
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    .line 552
    goto/16 :goto_244

    .line 543
    :pswitch_d3
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    .line 544
    goto/16 :goto_244

    .line 534
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 536
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p3

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 539
    goto/16 :goto_244

    .line 526
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    .line 529
    goto/16 :goto_244

    .line 518
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    .line 521
    goto/16 :goto_244

    .line 510
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    .line 513
    goto/16 :goto_244

    .line 500
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    goto/16 :goto_244

    .line 488
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 490
    sget-object p3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/PhoneAccountHandle;

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 495
    goto/16 :goto_244

    .line 478
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    .line 483
    goto/16 :goto_244

    .line 470
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    .line 473
    goto/16 :goto_244

    .line 460
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    int-to-char p3, p3

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    .line 465
    goto/16 :goto_244

    .line 450
    :pswitch_163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    .line 455
    goto/16 :goto_244

    .line 440
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->enterBackgroundAudioProcessing(Ljava/lang/String;I)V

    .line 445
    goto/16 :goto_244

    .line 430
    :pswitch_183
    sget-object p1, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallEndpoint;

    .line 432
    sget-object p3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ResultReceiver;

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;)V

    .line 435
    goto/16 :goto_244

    .line 420
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(ILjava/lang/String;)V

    .line 425
    goto/16 :goto_244

    .line 412
    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    .line 415
    goto/16 :goto_244

    .line 404
    :pswitch_1b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    .line 407
    goto/16 :goto_244

    .line 396
    :pswitch_1c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    .line 399
    goto/16 :goto_244

    .line 388
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    .line 391
    goto :goto_244

    .line 378
    :pswitch_1da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    goto :goto_244

    .line 366
    :pswitch_1e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 368
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 373
    goto :goto_244

    .line 356
    :pswitch_200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCallWithReason(Ljava/lang/String;I)V

    .line 361
    goto :goto_244

    .line 344
    :pswitch_20f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 351
    goto :goto_244

    .line 334
    :pswitch_222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 336
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    goto :goto_244

    .line 324
    :pswitch_235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    .line 329
    nop

    .line 653
    :goto_244
    return v1

    nop

    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_235
        :pswitch_222
        :pswitch_20f
        :pswitch_200
        :pswitch_1e9
        :pswitch_1da
        :pswitch_1cf
        :pswitch_1c3
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_19b
        :pswitch_183
        :pswitch_173
        :pswitch_163
        :pswitch_152
        :pswitch_146
        :pswitch_136
        :pswitch_11e
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_d8
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_9f
        :pswitch_8b
        :pswitch_7b
        :pswitch_6f
        :pswitch_5b
        :pswitch_4f
        :pswitch_3f
        :pswitch_1f
    .end packed-switch
.end method
