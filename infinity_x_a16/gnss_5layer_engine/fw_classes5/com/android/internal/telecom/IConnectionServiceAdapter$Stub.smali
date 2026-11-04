.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final greylist-max-o TRANSACTION_addConferenceCall:I = 0xe

.field static final blacklist TRANSACTION_addConferenceCallFromConnection:I = 0xf

.field static final greylist-max-o TRANSACTION_addExistingConnection:I = 0x1b

.field static final blacklist TRANSACTION_handleCreateConferenceComplete:I = 0x2

.field static final greylist-max-o TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final greylist-max-o TRANSACTION_onConnectionEvent:I = 0x20

.field static final greylist-max-o TRANSACTION_onConnectionServiceFocusReleased:I = 0x26

.field static final greylist-max-o TRANSACTION_onPhoneAccountChanged:I = 0x25

.field static final greylist-max-o TRANSACTION_onPostDialChar:I = 0x12

.field static final greylist-max-o TRANSACTION_onPostDialWait:I = 0x11

.field static final greylist-max-o TRANSACTION_onRemoteRttRequest:I = 0x24

.field static final greylist-max-o TRANSACTION_onRttInitiationFailure:I = 0x22

.field static final greylist-max-o TRANSACTION_onRttInitiationSuccess:I = 0x21

.field static final greylist-max-o TRANSACTION_onRttSessionRemotelyTerminated:I = 0x23

.field static final greylist-max-o TRANSACTION_putExtras:I = 0x1c

.field static final blacklist TRANSACTION_queryLocation:I = 0x2a

.field static final greylist-max-o TRANSACTION_queryRemoteConnectionServices:I = 0x13

.field static final greylist-max-o TRANSACTION_removeCall:I = 0x10

.field static final greylist-max-o TRANSACTION_removeExtras:I = 0x1d

.field static final blacklist TRANSACTION_requestCallEndpointChange:I = 0x1f

.field static final blacklist TRANSACTION_resetConnectionTime:I = 0x27

.field static final greylist-max-o TRANSACTION_setActive:I = 0x3

.field static final greylist-max-o TRANSACTION_setAddress:I = 0x18

.field static final blacklist TRANSACTION_setAudioProcessing:I = 0x2b

.field static final greylist-max-o TRANSACTION_setAudioRoute:I = 0x1e

.field static final blacklist TRANSACTION_setCallDirection:I = 0x29

.field static final greylist-max-o TRANSACTION_setCallerDisplayName:I = 0x19

.field static final greylist-max-o TRANSACTION_setConferenceMergeFailed:I = 0xd

.field static final blacklist TRANSACTION_setConferenceState:I = 0x28

.field static final greylist-max-o TRANSACTION_setConferenceableConnections:I = 0x1a

.field static final greylist-max-o TRANSACTION_setConnectionCapabilities:I = 0xa

.field static final greylist-max-o TRANSACTION_setConnectionProperties:I = 0xb

.field static final greylist-max-o TRANSACTION_setDialing:I = 0x5

.field static final greylist-max-o TRANSACTION_setDisconnected:I = 0x7

.field static final greylist-max-o TRANSACTION_setIsConferenced:I = 0xc

.field static final greylist-max-o TRANSACTION_setIsVoipAudioMode:I = 0x16

.field static final greylist-max-o TRANSACTION_setOnHold:I = 0x8

.field static final greylist-max-o TRANSACTION_setPulling:I = 0x6

.field static final greylist-max-o TRANSACTION_setRingbackRequested:I = 0x9

.field static final greylist-max-o TRANSACTION_setRinging:I = 0x4

.field static final blacklist TRANSACTION_setSimulatedRinging:I = 0x2c

.field static final greylist-max-o TRANSACTION_setStatusHints:I = 0x17

.field static final greylist-max-o TRANSACTION_setVideoProvider:I = 0x14

.field static final greylist-max-o TRANSACTION_setVideoState:I = 0x15


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 165
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 166
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .registers 3

    .line 174
    if-nez p0, :cond_4

    .line 175
    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_4
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_13

    .line 179
    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    return-object v0

    .line 181
    :cond_13
    new-instance v0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 190
    packed-switch p0, :pswitch_data_8a

    .line 370
    const/4 p0, 0x0

    return-object p0

    .line 366
    :pswitch_5
    const-string p0, "setSimulatedRinging"

    return-object p0

    .line 362
    :pswitch_8
    const-string p0, "setAudioProcessing"

    return-object p0

    .line 358
    :pswitch_b
    const-string p0, "queryLocation"

    return-object p0

    .line 354
    :pswitch_e
    const-string p0, "setCallDirection"

    return-object p0

    .line 350
    :pswitch_11
    const-string p0, "setConferenceState"

    return-object p0

    .line 346
    :pswitch_14
    const-string p0, "resetConnectionTime"

    return-object p0

    .line 342
    :pswitch_17
    const-string p0, "onConnectionServiceFocusReleased"

    return-object p0

    .line 338
    :pswitch_1a
    const-string p0, "onPhoneAccountChanged"

    return-object p0

    .line 334
    :pswitch_1d
    const-string p0, "onRemoteRttRequest"

    return-object p0

    .line 330
    :pswitch_20
    const-string p0, "onRttSessionRemotelyTerminated"

    return-object p0

    .line 326
    :pswitch_23
    const-string p0, "onRttInitiationFailure"

    return-object p0

    .line 322
    :pswitch_26
    const-string p0, "onRttInitiationSuccess"

    return-object p0

    .line 318
    :pswitch_29
    const-string p0, "onConnectionEvent"

    return-object p0

    .line 314
    :pswitch_2c
    const-string p0, "requestCallEndpointChange"

    return-object p0

    .line 310
    :pswitch_2f
    const-string p0, "setAudioRoute"

    return-object p0

    .line 306
    :pswitch_32
    const-string p0, "removeExtras"

    return-object p0

    .line 302
    :pswitch_35
    const-string p0, "putExtras"

    return-object p0

    .line 298
    :pswitch_38
    const-string p0, "addExistingConnection"

    return-object p0

    .line 294
    :pswitch_3b
    const-string p0, "setConferenceableConnections"

    return-object p0

    .line 290
    :pswitch_3e
    const-string p0, "setCallerDisplayName"

    return-object p0

    .line 286
    :pswitch_41
    const-string p0, "setAddress"

    return-object p0

    .line 282
    :pswitch_44
    const-string p0, "setStatusHints"

    return-object p0

    .line 278
    :pswitch_47
    const-string p0, "setIsVoipAudioMode"

    return-object p0

    .line 274
    :pswitch_4a
    const-string p0, "setVideoState"

    return-object p0

    .line 270
    :pswitch_4d
    const-string p0, "setVideoProvider"

    return-object p0

    .line 266
    :pswitch_50
    const-string p0, "queryRemoteConnectionServices"

    return-object p0

    .line 262
    :pswitch_53
    const-string p0, "onPostDialChar"

    return-object p0

    .line 258
    :pswitch_56
    const-string p0, "onPostDialWait"

    return-object p0

    .line 254
    :pswitch_59
    const-string p0, "removeCall"

    return-object p0

    .line 250
    :pswitch_5c
    const-string p0, "addConferenceCallFromConnection"

    return-object p0

    .line 246
    :pswitch_5f
    const-string p0, "addConferenceCall"

    return-object p0

    .line 242
    :pswitch_62
    const-string p0, "setConferenceMergeFailed"

    return-object p0

    .line 238
    :pswitch_65
    const-string p0, "setIsConferenced"

    return-object p0

    .line 234
    :pswitch_68
    const-string p0, "setConnectionProperties"

    return-object p0

    .line 230
    :pswitch_6b
    const-string p0, "setConnectionCapabilities"

    return-object p0

    .line 226
    :pswitch_6e
    const-string p0, "setRingbackRequested"

    return-object p0

    .line 222
    :pswitch_71
    const-string p0, "setOnHold"

    return-object p0

    .line 218
    :pswitch_74
    const-string p0, "setDisconnected"

    return-object p0

    .line 214
    :pswitch_77
    const-string p0, "setPulling"

    return-object p0

    .line 210
    :pswitch_7a
    const-string p0, "setDialing"

    return-object p0

    .line 206
    :pswitch_7d
    const-string p0, "setRinging"

    return-object p0

    .line 202
    :pswitch_80
    const-string p0, "setActive"

    return-object p0

    .line 198
    :pswitch_83
    const-string p0, "handleCreateConferenceComplete"

    return-object p0

    .line 194
    :pswitch_86
    const-string p0, "handleCreateConnectionComplete"

    return-object p0

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
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

    .line 185
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1592
    const/16 v0, 0x2b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 377
    invoke-static {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    nop

    .line 382
    const-string v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 383
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 386
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    return v1

    .line 389
    :cond_17
    packed-switch p1, :pswitch_data_49e

    .line 911
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 902
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 904
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setSimulatedRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 907
    goto/16 :goto_49d

    .line 890
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 892
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAudioProcessing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;I)V

    .line 897
    goto/16 :goto_49d

    .line 874
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 880
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/os/ResultReceiver;

    .line 882
    sget-object p1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/telecom/Logging/Session$Info;

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V

    .line 885
    goto/16 :goto_49d

    .line 862
    :pswitch_73
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 866
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 869
    goto/16 :goto_49d

    .line 850
    :pswitch_8c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 854
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 857
    goto/16 :goto_49d

    .line 840
    :pswitch_a5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 842
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 845
    goto/16 :goto_49d

    .line 832
    :pswitch_ba
    move-object v2, p0

    sget-object p1, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Logging/Session$Info;

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V

    .line 835
    goto/16 :goto_49d

    .line 820
    :pswitch_cb
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 822
    sget-object p3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/PhoneAccountHandle;

    .line 824
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V

    .line 827
    goto/16 :goto_49d

    .line 810
    :pswitch_e8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 812
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 815
    goto/16 :goto_49d

    .line 800
    :pswitch_fd
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 802
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 805
    goto/16 :goto_49d

    .line 788
    :pswitch_112
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 792
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 795
    goto/16 :goto_49d

    .line 778
    :pswitch_12b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 780
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 783
    goto/16 :goto_49d

    .line 764
    :pswitch_140
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 768
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    .line 770
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 773
    goto/16 :goto_49d

    .line 750
    :pswitch_161
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 752
    sget-object p3, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/CallEndpoint;

    .line 754
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ResultReceiver;

    .line 756
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V

    .line 759
    goto/16 :goto_49d

    .line 736
    :pswitch_186
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 742
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 745
    goto/16 :goto_49d

    .line 724
    :pswitch_1a3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 728
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 731
    goto/16 :goto_49d

    .line 712
    :pswitch_1bc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 714
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    .line 716
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 719
    goto/16 :goto_49d

    .line 700
    :pswitch_1d9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 702
    sget-object p3, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/ParcelableConnection;

    .line 704
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 707
    goto/16 :goto_49d

    .line 688
    :pswitch_1f6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 692
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 695
    goto/16 :goto_49d

    .line 674
    :pswitch_20f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 680
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 683
    goto/16 :goto_49d

    .line 660
    :pswitch_22c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 662
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 666
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V

    .line 669
    goto/16 :goto_49d

    .line 648
    :pswitch_24d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 650
    sget-object p3, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/StatusHints;

    .line 652
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V

    .line 655
    goto/16 :goto_49d

    .line 636
    :pswitch_26a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 640
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 643
    goto/16 :goto_49d

    .line 624
    :pswitch_283
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 628
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 631
    goto/16 :goto_49d

    .line 612
    :pswitch_29c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object p3

    .line 616
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V

    .line 619
    goto/16 :goto_49d

    .line 600
    :pswitch_2b9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object p1

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 604
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 607
    goto/16 :goto_49d

    .line 588
    :pswitch_2d6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    int-to-char p3, p3

    .line 592
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 595
    goto/16 :goto_49d

    .line 576
    :pswitch_2f0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 580
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 583
    goto/16 :goto_49d

    .line 566
    :pswitch_309
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 568
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 571
    goto/16 :goto_49d

    .line 554
    :pswitch_31e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 556
    sget-object p3, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/ParcelableConference;

    .line 558
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCallFromConnection(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 561
    goto/16 :goto_49d

    .line 542
    :pswitch_33b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 544
    sget-object p3, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/ParcelableConference;

    .line 546
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 549
    goto/16 :goto_49d

    .line 532
    :pswitch_358
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 534
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 537
    goto/16 :goto_49d

    .line 520
    :pswitch_36d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 524
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 527
    goto/16 :goto_49d

    .line 508
    :pswitch_386
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 512
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 515
    goto/16 :goto_49d

    .line 496
    :pswitch_39f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 500
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 503
    goto/16 :goto_49d

    .line 484
    :pswitch_3b8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 488
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 491
    goto/16 :goto_49d

    .line 474
    :pswitch_3d1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 476
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 479
    goto/16 :goto_49d

    .line 462
    :pswitch_3e6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 464
    sget-object p3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/DisconnectCause;

    .line 466
    sget-object p4, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/Logging/Session$Info;

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V

    .line 469
    goto/16 :goto_49d

    .line 452
    :pswitch_403
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 454
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 457
    goto/16 :goto_49d

    .line 442
    :pswitch_418
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 444
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 447
    goto/16 :goto_49d

    .line 432
    :pswitch_42d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 434
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 437
    goto :goto_49d

    .line 422
    :pswitch_441
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 424
    sget-object p3, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/Logging/Session$Info;

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 427
    goto :goto_49d

    .line 408
    :pswitch_455
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 410
    sget-object p3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/ConnectionRequest;

    .line 412
    sget-object p4, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/ParcelableConference;

    .line 414
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 417
    goto :goto_49d

    .line 394
    :pswitch_479
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 396
    sget-object p3, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/ConnectionRequest;

    .line 398
    sget-object p4, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telecom/ParcelableConnection;

    .line 400
    sget-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session$Info;

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 403
    nop

    .line 914
    :goto_49d
    return v1

    :pswitch_data_49e
    .packed-switch 0x1
        :pswitch_479
        :pswitch_455
        :pswitch_441
        :pswitch_42d
        :pswitch_418
        :pswitch_403
        :pswitch_3e6
        :pswitch_3d1
        :pswitch_3b8
        :pswitch_39f
        :pswitch_386
        :pswitch_36d
        :pswitch_358
        :pswitch_33b
        :pswitch_31e
        :pswitch_309
        :pswitch_2f0
        :pswitch_2d6
        :pswitch_2b9
        :pswitch_29c
        :pswitch_283
        :pswitch_26a
        :pswitch_24d
        :pswitch_22c
        :pswitch_20f
        :pswitch_1f6
        :pswitch_1d9
        :pswitch_1bc
        :pswitch_1a3
        :pswitch_186
        :pswitch_161
        :pswitch_140
        :pswitch_12b
        :pswitch_112
        :pswitch_fd
        :pswitch_e8
        :pswitch_cb
        :pswitch_ba
        :pswitch_a5
        :pswitch_8c
        :pswitch_73
        :pswitch_4c
        :pswitch_34
        :pswitch_20
    .end packed-switch
.end method
