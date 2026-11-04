.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final blacklist TRANSACTION_onActiveDataSubIdChanged:I = 0x17

.field static final blacklist TRANSACTION_onAllowedNetworkTypesChanged:I = 0x23

.field static final blacklist TRANSACTION_onBarringInfoChanged:I = 0x20

.field static final blacklist TRANSACTION_onCallDisconnectCauseChanged:I = 0x1d

.field static final greylist-max-o TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onCallStateChanged:I = 0x7

.field static final blacklist TRANSACTION_onCallStatesChanged:I = 0x19

.field static final blacklist TRANSACTION_onCallbackModeRestarted:I = 0x27

.field static final blacklist TRANSACTION_onCallbackModeStarted:I = 0x26

.field static final blacklist TRANSACTION_onCallbackModeStopped:I = 0x28

.field static final greylist-max-o TRANSACTION_onCarrierNetworkChange:I = 0x13

.field static final blacklist TRANSACTION_onCarrierRoamingNtnAvailableServicesChanged:I = 0x2c

.field static final blacklist TRANSACTION_onCarrierRoamingNtnEligibleStateChanged:I = 0x2b

.field static final blacklist TRANSACTION_onCarrierRoamingNtnModeChanged:I = 0x2a

.field static final blacklist TRANSACTION_onCarrierRoamingNtnSignalStrengthChanged:I = 0x2d

.field static final greylist-max-o TRANSACTION_onCellInfoChanged:I = 0xb

.field static final greylist-max-o TRANSACTION_onCellLocationChanged:I = 0x5

.field static final blacklist TRANSACTION_onCellularIdentifierDisclosedChanged:I = 0x2f

.field static final greylist-max-o TRANSACTION_onDataActivationStateChanged:I = 0x11

.field static final greylist-max-o TRANSACTION_onDataActivity:I = 0x9

.field static final greylist-max-o TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final greylist-max-o TRANSACTION_onDataConnectionStateChanged:I = 0x8

.field static final blacklist TRANSACTION_onDataEnabledChanged:I = 0x22

.field static final blacklist TRANSACTION_onDisplayInfoChanged:I = 0x15

.field static final blacklist TRANSACTION_onEmergencyNumberListChanged:I = 0x1a

.field static final blacklist TRANSACTION_onImsCallDisconnectCauseChanged:I = 0x1e

.field static final blacklist TRANSACTION_onLegacyCallStateChanged:I = 0x6

.field static final blacklist TRANSACTION_onLinkCapacityEstimateChanged:I = 0x24

.field static final blacklist TRANSACTION_onMediaQualityStatusChanged:I = 0x25

.field static final greylist-max-o TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onOemHookRawEvent:I = 0x12

.field static final blacklist TRANSACTION_onOutgoingEmergencyCall:I = 0x1b

.field static final blacklist TRANSACTION_onOutgoingEmergencySms:I = 0x1c

.field static final blacklist TRANSACTION_onPhoneCapabilityChanged:I = 0x16

.field static final blacklist TRANSACTION_onPhysicalChannelConfigChanged:I = 0x21

.field static final greylist-max-o TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final blacklist TRANSACTION_onRadioPowerStateChanged:I = 0x18

.field static final blacklist TRANSACTION_onRegistrationFailed:I = 0x1f

.field static final blacklist TRANSACTION_onSecurityAlgorithmsChanged:I = 0x2e

.field static final greylist-max-o TRANSACTION_onServiceStateChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onSignalStrengthsChanged:I = 0xa

.field static final blacklist TRANSACTION_onSimultaneousCallingStateChanged:I = 0x29

.field static final blacklist TRANSACTION_onSrvccStateChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_onUserMobileDataStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_onVoiceActivationStateChanged:I = 0x10


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 170
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .registers 3

    .line 178
    if-nez p0, :cond_4

    .line 179
    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_4
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_13

    .line 183
    check-cast v0, Lcom/android/internal/telephony/IPhoneStateListener;

    return-object v0

    .line 185
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 194
    packed-switch p0, :pswitch_data_92

    .line 386
    const/4 p0, 0x0

    return-object p0

    .line 382
    :pswitch_5
    const-string p0, "onCellularIdentifierDisclosedChanged"

    return-object p0

    .line 378
    :pswitch_8
    const-string p0, "onSecurityAlgorithmsChanged"

    return-object p0

    .line 374
    :pswitch_b
    const-string p0, "onCarrierRoamingNtnSignalStrengthChanged"

    return-object p0

    .line 370
    :pswitch_e
    const-string p0, "onCarrierRoamingNtnAvailableServicesChanged"

    return-object p0

    .line 366
    :pswitch_11
    const-string p0, "onCarrierRoamingNtnEligibleStateChanged"

    return-object p0

    .line 362
    :pswitch_14
    const-string p0, "onCarrierRoamingNtnModeChanged"

    return-object p0

    .line 358
    :pswitch_17
    const-string p0, "onSimultaneousCallingStateChanged"

    return-object p0

    .line 354
    :pswitch_1a
    const-string p0, "onCallbackModeStopped"

    return-object p0

    .line 350
    :pswitch_1d
    const-string p0, "onCallbackModeRestarted"

    return-object p0

    .line 346
    :pswitch_20
    const-string p0, "onCallbackModeStarted"

    return-object p0

    .line 342
    :pswitch_23
    const-string p0, "onMediaQualityStatusChanged"

    return-object p0

    .line 338
    :pswitch_26
    const-string p0, "onLinkCapacityEstimateChanged"

    return-object p0

    .line 334
    :pswitch_29
    const-string p0, "onAllowedNetworkTypesChanged"

    return-object p0

    .line 330
    :pswitch_2c
    const-string p0, "onDataEnabledChanged"

    return-object p0

    .line 326
    :pswitch_2f
    const-string p0, "onPhysicalChannelConfigChanged"

    return-object p0

    .line 322
    :pswitch_32
    const-string p0, "onBarringInfoChanged"

    return-object p0

    .line 318
    :pswitch_35
    const-string p0, "onRegistrationFailed"

    return-object p0

    .line 314
    :pswitch_38
    const-string p0, "onImsCallDisconnectCauseChanged"

    return-object p0

    .line 310
    :pswitch_3b
    const-string p0, "onCallDisconnectCauseChanged"

    return-object p0

    .line 306
    :pswitch_3e
    const-string p0, "onOutgoingEmergencySms"

    return-object p0

    .line 302
    :pswitch_41
    const-string p0, "onOutgoingEmergencyCall"

    return-object p0

    .line 298
    :pswitch_44
    const-string p0, "onEmergencyNumberListChanged"

    return-object p0

    .line 294
    :pswitch_47
    const-string p0, "onCallStatesChanged"

    return-object p0

    .line 290
    :pswitch_4a
    const-string p0, "onRadioPowerStateChanged"

    return-object p0

    .line 286
    :pswitch_4d
    const-string p0, "onActiveDataSubIdChanged"

    return-object p0

    .line 282
    :pswitch_50
    const-string p0, "onPhoneCapabilityChanged"

    return-object p0

    .line 278
    :pswitch_53
    const-string p0, "onDisplayInfoChanged"

    return-object p0

    .line 274
    :pswitch_56
    const-string p0, "onUserMobileDataStateChanged"

    return-object p0

    .line 270
    :pswitch_59
    const-string p0, "onCarrierNetworkChange"

    return-object p0

    .line 266
    :pswitch_5c
    const-string p0, "onOemHookRawEvent"

    return-object p0

    .line 262
    :pswitch_5f
    const-string p0, "onDataActivationStateChanged"

    return-object p0

    .line 258
    :pswitch_62
    const-string p0, "onVoiceActivationStateChanged"

    return-object p0

    .line 254
    :pswitch_65
    const-string p0, "onSrvccStateChanged"

    return-object p0

    .line 250
    :pswitch_68
    const-string p0, "onDataConnectionRealTimeInfoChanged"

    return-object p0

    .line 246
    :pswitch_6b
    const-string p0, "onPreciseDataConnectionStateChanged"

    return-object p0

    .line 242
    :pswitch_6e
    const-string p0, "onPreciseCallStateChanged"

    return-object p0

    .line 238
    :pswitch_71
    const-string p0, "onCellInfoChanged"

    return-object p0

    .line 234
    :pswitch_74
    const-string p0, "onSignalStrengthsChanged"

    return-object p0

    .line 230
    :pswitch_77
    const-string p0, "onDataActivity"

    return-object p0

    .line 226
    :pswitch_7a
    const-string p0, "onDataConnectionStateChanged"

    return-object p0

    .line 222
    :pswitch_7d
    const-string p0, "onCallStateChanged"

    return-object p0

    .line 218
    :pswitch_80
    const-string p0, "onLegacyCallStateChanged"

    return-object p0

    .line 214
    :pswitch_83
    const-string p0, "onCellLocationChanged"

    return-object p0

    .line 210
    :pswitch_86
    const-string p0, "onCallForwardingIndicatorChanged"

    return-object p0

    .line 206
    :pswitch_89
    const-string p0, "onMessageWaitingIndicatorChanged"

    return-object p0

    .line 202
    :pswitch_8c
    const-string p0, "onSignalStrengthChanged"

    return-object p0

    .line 198
    :pswitch_8f
    const-string p0, "onServiceStateChanged"

    return-object p0

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
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

    .line 189
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1475
    const/16 v0, 0x2e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 393
    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 397
    nop

    .line 398
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 399
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 402
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    return v1

    .line 405
    :cond_17
    packed-switch p1, :pswitch_data_306

    .line 820
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 813
    :pswitch_20
    sget-object p1, Landroid/telephony/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellularIdentifierDisclosure;

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellularIdentifierDisclosedChanged(Landroid/telephony/CellularIdentifierDisclosure;)V

    .line 816
    goto/16 :goto_304

    .line 805
    :pswitch_30
    sget-object p1, Landroid/telephony/SecurityAlgorithmUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SecurityAlgorithmUpdate;

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 807
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSecurityAlgorithmsChanged(Landroid/telephony/SecurityAlgorithmUpdate;)V

    .line 808
    goto/16 :goto_304

    .line 797
    :pswitch_40
    sget-object p1, Landroid/telephony/satellite/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/NtnSignalStrength;

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnSignalStrengthChanged(Landroid/telephony/satellite/NtnSignalStrength;)V

    .line 800
    goto/16 :goto_304

    .line 789
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnAvailableServicesChanged([I)V

    .line 792
    goto/16 :goto_304

    .line 781
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnEligibleStateChanged(Z)V

    .line 784
    goto/16 :goto_304

    .line 773
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierRoamingNtnModeChanged(Z)V

    .line 776
    goto/16 :goto_304

    .line 765
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSimultaneousCallingStateChanged([I)V

    .line 768
    goto/16 :goto_304

    .line 753
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 757
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 759
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallbackModeStopped(III)V

    .line 760
    goto/16 :goto_304

    .line 741
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallbackModeRestarted(IJI)V

    .line 748
    goto/16 :goto_304

    .line 729
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallbackModeStarted(IJI)V

    .line 736
    goto/16 :goto_304

    .line 721
    :pswitch_bc
    sget-object p1, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/MediaQualityStatus;

    .line 722
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V

    .line 724
    goto/16 :goto_304

    .line 713
    :pswitch_cc
    sget-object p1, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLinkCapacityEstimateChanged(Ljava/util/List;)V

    .line 716
    goto/16 :goto_304

    .line 703
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onAllowedNetworkTypesChanged(IJ)V

    .line 708
    goto/16 :goto_304

    .line 693
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataEnabledChanged(ZI)V

    .line 698
    goto/16 :goto_304

    .line 685
    :pswitch_fa
    sget-object p1, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhysicalChannelConfigChanged(Ljava/util/List;)V

    .line 688
    goto/16 :goto_304

    .line 677
    :pswitch_108
    sget-object p1, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/BarringInfo;

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onBarringInfoChanged(Landroid/telephony/BarringInfo;)V

    .line 680
    goto/16 :goto_304

    .line 661
    :pswitch_118
    sget-object p1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/telephony/CellIdentity;

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRegistrationFailed(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 672
    goto/16 :goto_304

    .line 653
    :pswitch_13a
    move-object v2, p0

    sget-object p1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsReasonInfo;

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onImsCallDisconnectCauseChanged(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 656
    goto/16 :goto_304

    .line 643
    :pswitch_14b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallDisconnectCauseChanged(II)V

    .line 648
    goto/16 :goto_304

    .line 633
    :pswitch_15c
    move-object v2, p0

    sget-object p1, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencySms(Landroid/telephony/emergency/EmergencyNumber;I)V

    .line 638
    goto/16 :goto_304

    .line 623
    :pswitch_171
    move-object v2, p0

    sget-object p1, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V

    .line 628
    goto/16 :goto_304

    .line 614
    :pswitch_186
    move-object v2, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 615
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onEmergencyNumberListChanged(Ljava/util/Map;)V

    .line 618
    goto/16 :goto_304

    .line 606
    :pswitch_19b
    move-object v2, p0

    sget-object p1, Landroid/telephony/CallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStatesChanged(Ljava/util/List;)V

    .line 609
    goto/16 :goto_304

    .line 598
    :pswitch_1aa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onRadioPowerStateChanged(I)V

    .line 601
    goto/16 :goto_304

    .line 590
    :pswitch_1b7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onActiveDataSubIdChanged(I)V

    .line 593
    goto/16 :goto_304

    .line 582
    :pswitch_1c4
    move-object v2, p0

    sget-object p1, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PhoneCapability;

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    .line 585
    goto/16 :goto_304

    .line 574
    :pswitch_1d5
    move-object v2, p0

    sget-object p1, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyDisplayInfo;

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 577
    goto/16 :goto_304

    .line 566
    :pswitch_1e6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onUserMobileDataStateChanged(Z)V

    .line 569
    goto/16 :goto_304

    .line 558
    :pswitch_1f3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    .line 561
    goto/16 :goto_304

    .line 550
    :pswitch_200
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    .line 553
    goto/16 :goto_304

    .line 542
    :pswitch_20d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivationStateChanged(I)V

    .line 545
    goto/16 :goto_304

    .line 534
    :pswitch_21a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceActivationStateChanged(I)V

    .line 537
    goto/16 :goto_304

    .line 526
    :pswitch_227
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSrvccStateChanged(I)V

    .line 529
    goto/16 :goto_304

    .line 518
    :pswitch_234
    move-object v2, p0

    sget-object p1, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    .line 521
    goto/16 :goto_304

    .line 510
    :pswitch_245
    move-object v2, p0

    sget-object p1, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PreciseDataConnectionState;

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    .line 513
    goto/16 :goto_304

    .line 502
    :pswitch_256
    move-object v2, p0

    sget-object p1, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/PreciseCallState;

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    .line 505
    goto/16 :goto_304

    .line 494
    :pswitch_267
    move-object v2, p0

    sget-object p1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    .line 497
    goto/16 :goto_304

    .line 486
    :pswitch_276
    move-object v2, p0

    sget-object p1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SignalStrength;

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 489
    goto/16 :goto_304

    .line 478
    :pswitch_287
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    .line 481
    goto/16 :goto_304

    .line 468
    :pswitch_294
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    .line 473
    goto :goto_304

    .line 460
    :pswitch_2a4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(I)V

    .line 463
    goto :goto_304

    .line 450
    :pswitch_2b0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onLegacyCallStateChanged(ILjava/lang/String;)V

    .line 455
    goto :goto_304

    .line 442
    :pswitch_2c0
    move-object v2, p0

    sget-object p1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellIdentity;

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/telephony/CellIdentity;)V

    .line 445
    goto :goto_304

    .line 434
    :pswitch_2d0
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    .line 437
    goto :goto_304

    .line 426
    :pswitch_2dc
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    .line 429
    goto :goto_304

    .line 418
    :pswitch_2e8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    .line 421
    goto :goto_304

    .line 410
    :pswitch_2f4
    move-object v2, p0

    sget-object p1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ServiceState;

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 413
    nop

    .line 823
    :goto_304
    return v1

    nop

    :pswitch_data_306
    .packed-switch 0x1
        :pswitch_2f4
        :pswitch_2e8
        :pswitch_2dc
        :pswitch_2d0
        :pswitch_2c0
        :pswitch_2b0
        :pswitch_2a4
        :pswitch_294
        :pswitch_287
        :pswitch_276
        :pswitch_267
        :pswitch_256
        :pswitch_245
        :pswitch_234
        :pswitch_227
        :pswitch_21a
        :pswitch_20d
        :pswitch_200
        :pswitch_1f3
        :pswitch_1e6
        :pswitch_1d5
        :pswitch_1c4
        :pswitch_1b7
        :pswitch_1aa
        :pswitch_19b
        :pswitch_186
        :pswitch_171
        :pswitch_15c
        :pswitch_14b
        :pswitch_13a
        :pswitch_118
        :pswitch_108
        :pswitch_fa
        :pswitch_ea
        :pswitch_da
        :pswitch_cc
        :pswitch_bc
        :pswitch_a8
        :pswitch_94
        :pswitch_80
        :pswitch_74
        :pswitch_68
        :pswitch_5c
        :pswitch_50
        :pswitch_40
        :pswitch_30
        :pswitch_20
    .end packed-switch
.end method
