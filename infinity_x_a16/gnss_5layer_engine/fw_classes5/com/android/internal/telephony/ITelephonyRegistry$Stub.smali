.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final blacklist TRANSACTION_addCarrierConfigChangeListener:I = 0x31

.field static final blacklist TRANSACTION_addCarrierPrivilegesCallback:I = 0x2d

.field static final blacklist TRANSACTION_addOnOpportunisticSubscriptionsChangedListener:I = 0x2

.field static final greylist-max-o TRANSACTION_addOnSubscriptionsChangedListener:I = 0x1

.field static final blacklist TRANSACTION_addSatelliteStateChangeListener:I = 0x3b

.field static final blacklist TRANSACTION_listenWithEventList:I = 0x4

.field static final blacklist TRANSACTION_notifyActiveDataSubIdChanged:I = 0x1e

.field static final blacklist TRANSACTION_notifyAllowedNetworkTypesChanged:I = 0x2a

.field static final blacklist TRANSACTION_notifyBarringInfoChanged:I = 0x27

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_notifyCallForwardingChangedForSubscriber:I = 0xb

.field static final blacklist TRANSACTION_notifyCallQualityChanged:I = 0x23

.field static final greylist-max-o TRANSACTION_notifyCallState:I = 0x6

.field static final blacklist TRANSACTION_notifyCallStateForAllSubs:I = 0x5

.field static final blacklist TRANSACTION_notifyCallbackModeRestarted:I = 0x35

.field static final blacklist TRANSACTION_notifyCallbackModeStarted:I = 0x34

.field static final blacklist TRANSACTION_notifyCallbackModeStopped:I = 0x36

.field static final blacklist TRANSACTION_notifyCarrierConfigChanged:I = 0x33

.field static final greylist-max-o TRANSACTION_notifyCarrierNetworkChange:I = 0x19

.field static final blacklist TRANSACTION_notifyCarrierNetworkChangeForPhoneAndSubId:I = 0x1a

.field static final blacklist TRANSACTION_notifyCarrierPrivilegesChanged:I = 0x2f

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnAvailableServicesChanged:I = 0x39

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnEligibleStateChanged:I = 0x38

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnModeChanged:I = 0x37

.field static final blacklist TRANSACTION_notifyCarrierRoamingNtnSignalStrengthChanged:I = 0x3a

.field static final blacklist TRANSACTION_notifyCarrierServiceChanged:I = 0x30

.field static final greylist-max-o TRANSACTION_notifyCellInfo:I = 0x10

.field static final greylist-max-o TRANSACTION_notifyCellInfoForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_notifyCellLocationForSubscriber:I = 0xf

.field static final blacklist TRANSACTION_notifyCellularIdentifierDisclosedChanged:I = 0x3f

.field static final greylist-max-o TRANSACTION_notifyDataActivityForSubscriber:I = 0xc

.field static final blacklist TRANSACTION_notifyDataActivityForSubscriberWithSlot:I = 0xd

.field static final greylist-max-o TRANSACTION_notifyDataConnectionForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_notifyDataEnabled:I = 0x29

.field static final greylist-max-o TRANSACTION_notifyDisconnectCause:I = 0x12

.field static final blacklist TRANSACTION_notifyDisplayInfoChanged:I = 0x1c

.field static final blacklist TRANSACTION_notifyEmergencyNumberList:I = 0x20

.field static final blacklist TRANSACTION_notifyImsDisconnectCause:I = 0x25

.field static final blacklist TRANSACTION_notifyLinkCapacityEstimateChanged:I = 0x2b

.field static final blacklist TRANSACTION_notifyMediaQualityStatusChanged:I = 0x24

.field static final greylist-max-o TRANSACTION_notifyMessageWaitingChangedForPhoneId:I = 0x9

.field static final greylist-max-o TRANSACTION_notifyOemHookRawEventForSubscriber:I = 0x16

.field static final blacklist TRANSACTION_notifyOpportunisticSubscriptionInfoChanged:I = 0x18

.field static final blacklist TRANSACTION_notifyOutgoingEmergencyCall:I = 0x21

.field static final blacklist TRANSACTION_notifyOutgoingEmergencySms:I = 0x22

.field static final blacklist TRANSACTION_notifyPhoneCapabilityChanged:I = 0x1d

.field static final blacklist TRANSACTION_notifyPhysicalChannelConfigForSubscriber:I = 0x28

.field static final greylist-max-o TRANSACTION_notifyPreciseCallState:I = 0x11

.field static final blacklist TRANSACTION_notifyRadioPowerStateChanged:I = 0x1f

.field static final blacklist TRANSACTION_notifyRegistrationFailed:I = 0x26

.field static final blacklist TRANSACTION_notifySatelliteStateChanged:I = 0x3d

.field static final blacklist TRANSACTION_notifySecurityAlgorithmsChanged:I = 0x3e

.field static final greylist-max-o TRANSACTION_notifyServiceStateForPhoneId:I = 0x7

.field static final greylist-max-o TRANSACTION_notifySignalStrengthForPhoneId:I = 0x8

.field static final greylist-max-o TRANSACTION_notifySimActivationStateChangedForPhoneId:I = 0x15

.field static final blacklist TRANSACTION_notifySimultaneousCellularCallingSubscriptionsChanged:I = 0x2c

.field static final blacklist TRANSACTION_notifySrvccStateChanged:I = 0x14

.field static final greylist-max-o TRANSACTION_notifySubscriptionInfoChanged:I = 0x17

.field static final greylist-max-o TRANSACTION_notifyUserMobileDataStateChangedForPhoneId:I = 0x1b

.field static final blacklist TRANSACTION_removeCarrierConfigChangeListener:I = 0x32

.field static final blacklist TRANSACTION_removeCarrierPrivilegesCallback:I = 0x2e

.field static final greylist-max-o TRANSACTION_removeOnSubscriptionsChangedListener:I = 0x3

.field static final blacklist TRANSACTION_removeSatelliteStateChangeListener:I = 0x3c


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 216
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 217
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .registers 3

    .line 225
    if-nez p0, :cond_4

    .line 226
    const/4 p0, 0x0

    return-object p0

    .line 228
    :cond_4
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_13

    .line 230
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    return-object v0

    .line 232
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 241
    packed-switch p0, :pswitch_data_c2

    .line 497
    const/4 p0, 0x0

    return-object p0

    .line 493
    :pswitch_5
    const-string p0, "notifyCellularIdentifierDisclosedChanged"

    return-object p0

    .line 489
    :pswitch_8
    const-string p0, "notifySecurityAlgorithmsChanged"

    return-object p0

    .line 485
    :pswitch_b
    const-string p0, "notifySatelliteStateChanged"

    return-object p0

    .line 481
    :pswitch_e
    const-string p0, "removeSatelliteStateChangeListener"

    return-object p0

    .line 477
    :pswitch_11
    const-string p0, "addSatelliteStateChangeListener"

    return-object p0

    .line 473
    :pswitch_14
    const-string p0, "notifyCarrierRoamingNtnSignalStrengthChanged"

    return-object p0

    .line 469
    :pswitch_17
    const-string p0, "notifyCarrierRoamingNtnAvailableServicesChanged"

    return-object p0

    .line 465
    :pswitch_1a
    const-string p0, "notifyCarrierRoamingNtnEligibleStateChanged"

    return-object p0

    .line 461
    :pswitch_1d
    const-string p0, "notifyCarrierRoamingNtnModeChanged"

    return-object p0

    .line 457
    :pswitch_20
    const-string p0, "notifyCallbackModeStopped"

    return-object p0

    .line 453
    :pswitch_23
    const-string p0, "notifyCallbackModeRestarted"

    return-object p0

    .line 449
    :pswitch_26
    const-string p0, "notifyCallbackModeStarted"

    return-object p0

    .line 445
    :pswitch_29
    const-string p0, "notifyCarrierConfigChanged"

    return-object p0

    .line 441
    :pswitch_2c
    const-string p0, "removeCarrierConfigChangeListener"

    return-object p0

    .line 437
    :pswitch_2f
    const-string p0, "addCarrierConfigChangeListener"

    return-object p0

    .line 433
    :pswitch_32
    const-string p0, "notifyCarrierServiceChanged"

    return-object p0

    .line 429
    :pswitch_35
    const-string p0, "notifyCarrierPrivilegesChanged"

    return-object p0

    .line 425
    :pswitch_38
    const-string p0, "removeCarrierPrivilegesCallback"

    return-object p0

    .line 421
    :pswitch_3b
    const-string p0, "addCarrierPrivilegesCallback"

    return-object p0

    .line 417
    :pswitch_3e
    const-string p0, "notifySimultaneousCellularCallingSubscriptionsChanged"

    return-object p0

    .line 413
    :pswitch_41
    const-string p0, "notifyLinkCapacityEstimateChanged"

    return-object p0

    .line 409
    :pswitch_44
    const-string p0, "notifyAllowedNetworkTypesChanged"

    return-object p0

    .line 405
    :pswitch_47
    const-string p0, "notifyDataEnabled"

    return-object p0

    .line 401
    :pswitch_4a
    const-string p0, "notifyPhysicalChannelConfigForSubscriber"

    return-object p0

    .line 397
    :pswitch_4d
    const-string p0, "notifyBarringInfoChanged"

    return-object p0

    .line 393
    :pswitch_50
    const-string p0, "notifyRegistrationFailed"

    return-object p0

    .line 389
    :pswitch_53
    const-string p0, "notifyImsDisconnectCause"

    return-object p0

    .line 385
    :pswitch_56
    const-string p0, "notifyMediaQualityStatusChanged"

    return-object p0

    .line 381
    :pswitch_59
    const-string p0, "notifyCallQualityChanged"

    return-object p0

    .line 377
    :pswitch_5c
    const-string p0, "notifyOutgoingEmergencySms"

    return-object p0

    .line 373
    :pswitch_5f
    const-string p0, "notifyOutgoingEmergencyCall"

    return-object p0

    .line 369
    :pswitch_62
    const-string p0, "notifyEmergencyNumberList"

    return-object p0

    .line 365
    :pswitch_65
    const-string p0, "notifyRadioPowerStateChanged"

    return-object p0

    .line 361
    :pswitch_68
    const-string p0, "notifyActiveDataSubIdChanged"

    return-object p0

    .line 357
    :pswitch_6b
    const-string p0, "notifyPhoneCapabilityChanged"

    return-object p0

    .line 353
    :pswitch_6e
    const-string p0, "notifyDisplayInfoChanged"

    return-object p0

    .line 349
    :pswitch_71
    const-string p0, "notifyUserMobileDataStateChangedForPhoneId"

    return-object p0

    .line 345
    :pswitch_74
    const-string p0, "notifyCarrierNetworkChangeForPhoneAndSubId"

    return-object p0

    .line 341
    :pswitch_77
    const-string p0, "notifyCarrierNetworkChange"

    return-object p0

    .line 337
    :pswitch_7a
    const-string p0, "notifyOpportunisticSubscriptionInfoChanged"

    return-object p0

    .line 333
    :pswitch_7d
    const-string p0, "notifySubscriptionInfoChanged"

    return-object p0

    .line 329
    :pswitch_80
    const-string p0, "notifyOemHookRawEventForSubscriber"

    return-object p0

    .line 325
    :pswitch_83
    const-string p0, "notifySimActivationStateChangedForPhoneId"

    return-object p0

    .line 321
    :pswitch_86
    const-string p0, "notifySrvccStateChanged"

    return-object p0

    .line 317
    :pswitch_89
    const-string p0, "notifyCellInfoForSubscriber"

    return-object p0

    .line 313
    :pswitch_8c
    const-string p0, "notifyDisconnectCause"

    return-object p0

    .line 309
    :pswitch_8f
    const-string p0, "notifyPreciseCallState"

    return-object p0

    .line 305
    :pswitch_92
    const-string p0, "notifyCellInfo"

    return-object p0

    .line 301
    :pswitch_95
    const-string p0, "notifyCellLocationForSubscriber"

    return-object p0

    .line 297
    :pswitch_98
    const-string p0, "notifyDataConnectionForSubscriber"

    return-object p0

    .line 293
    :pswitch_9b
    const-string p0, "notifyDataActivityForSubscriberWithSlot"

    return-object p0

    .line 289
    :pswitch_9e
    const-string p0, "notifyDataActivityForSubscriber"

    return-object p0

    .line 285
    :pswitch_a1
    const-string p0, "notifyCallForwardingChangedForSubscriber"

    return-object p0

    .line 281
    :pswitch_a4
    const-string p0, "notifyCallForwardingChanged"

    return-object p0

    .line 277
    :pswitch_a7
    const-string p0, "notifyMessageWaitingChangedForPhoneId"

    return-object p0

    .line 273
    :pswitch_aa
    const-string p0, "notifySignalStrengthForPhoneId"

    return-object p0

    .line 269
    :pswitch_ad
    const-string p0, "notifyServiceStateForPhoneId"

    return-object p0

    .line 265
    :pswitch_b0
    const-string p0, "notifyCallState"

    return-object p0

    .line 261
    :pswitch_b3
    const-string p0, "notifyCallStateForAllSubs"

    return-object p0

    .line 257
    :pswitch_b6
    const-string p0, "listenWithEventList"

    return-object p0

    .line 253
    :pswitch_b9
    const-string p0, "removeOnSubscriptionsChangedListener"

    return-object p0

    .line 249
    :pswitch_bc
    const-string p0, "addOnOpportunisticSubscriptionsChangedListener"

    return-object p0

    .line 245
    :pswitch_bf
    const-string p0, "addOnSubscriptionsChangedListener"

    return-object p0

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
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

    .line 236
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2459
    const/16 v0, 0x3e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 504
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    nop

    .line 509
    const-string v3, "com.android.internal.telephony.ITelephonyRegistry"

    const/4 v9, 0x1

    if-lt p1, v9, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 510
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 513
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    return v9

    .line 516
    :cond_17
    packed-switch p1, :pswitch_data_602

    .line 1311
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1299
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1303
    sget-object v4, Landroid/telephony/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellularIdentifierDisclosure;

    .line 1304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1305
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellularIdentifierDisclosedChanged(IILandroid/telephony/CellularIdentifierDisclosure;)V

    .line 1306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    goto/16 :goto_600

    .line 1286
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1290
    sget-object v4, Landroid/telephony/SecurityAlgorithmUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SecurityAlgorithmUpdate;

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySecurityAlgorithmsChanged(IILandroid/telephony/SecurityAlgorithmUpdate;)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    goto/16 :goto_600

    .line 1277
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySatelliteStateChanged(Z)V

    .line 1280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    goto/16 :goto_600

    .line 1266
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISatelliteStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISatelliteStateChangeListener;

    move-result-object v1

    .line 1268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1270
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    goto/16 :goto_600

    .line 1253
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISatelliteStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISatelliteStateChangeListener;

    move-result-object v1

    .line 1255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addSatelliteStateChangeListener(Lcom/android/internal/telephony/ISatelliteStateChangeListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    goto/16 :goto_600

    .line 1242
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1244
    sget-object v3, Landroid/telephony/satellite/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/satellite/NtnSignalStrength;

    .line 1245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnSignalStrengthChanged(ILandroid/telephony/satellite/NtnSignalStrength;)V

    .line 1247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    goto/16 :goto_600

    .line 1231
    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1233
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1235
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnAvailableServicesChanged(I[I)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    goto/16 :goto_600

    .line 1220
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1222
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnEligibleStateChanged(IZ)V

    .line 1225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    goto/16 :goto_600

    .line 1209
    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierRoamingNtnModeChanged(IZ)V

    .line 1214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    goto/16 :goto_600

    .line 1194
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallbackModeStopped(IIII)V

    .line 1203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    goto/16 :goto_600

    .line 1179
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1185
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1186
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallbackModeRestarted(IIIJ)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    goto/16 :goto_600

    .line 1164
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1170
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallbackModeStarted(IIIJ)V

    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    goto/16 :goto_600

    .line 1149
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1157
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierConfigChanged(IIII)V

    .line 1158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    goto/16 :goto_600

    .line 1138
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    move-result-object v1

    .line 1140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    goto/16 :goto_600

    .line 1125
    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierConfigChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigChangeListener;

    move-result-object v1

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1131
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addCarrierConfigChangeListener(Lcom/android/internal/telephony/ICarrierConfigChangeListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    goto/16 :goto_600

    .line 1112
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierServiceChanged(ILjava/lang/String;I)V

    .line 1119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    goto/16 :goto_600

    .line 1099
    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1101
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    goto/16 :goto_600

    .line 1088
    :pswitch_1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v1

    .line 1090
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1091
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1092
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    goto/16 :goto_600

    .line 1073
    :pswitch_1cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    move-result-object v2

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_600

    .line 1064
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySimultaneousCellularCallingSubscriptionsChanged([I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    goto/16 :goto_600

    .line 1051
    :pswitch_1f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1055
    sget-object v3, Landroid/telephony/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_600

    .line 1036
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1038
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1040
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyAllowedNetworkTypesChanged(IIIJ)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_600

    .line 1021
    :pswitch_22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataEnabled(IIZI)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    goto/16 :goto_600

    .line 1008
    :pswitch_249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1012
    sget-object v3, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1014
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V

    .line 1015
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    goto/16 :goto_600

    .line 995
    :pswitch_262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 999
    sget-object v3, Landroid/telephony/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/BarringInfo;

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    goto/16 :goto_600

    .line 974
    :pswitch_27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 978
    sget-object v3, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    goto/16 :goto_600

    .line 963
    :pswitch_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 965
    sget-object v2, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    goto/16 :goto_600

    .line 950
    :pswitch_2c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 954
    sget-object v3, Landroid/telephony/ims/MediaQualityStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/MediaQualityStatus;

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMediaQualityStatusChanged(IILandroid/telephony/ims/MediaQualityStatus;)V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_600

    .line 935
    :pswitch_2db
    sget-object v1, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallQuality;

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_600

    .line 922
    :pswitch_2fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 926
    sget-object v3, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    goto/16 :goto_600

    .line 909
    :pswitch_315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 913
    sget-object v3, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    goto/16 :goto_600

    .line 898
    :pswitch_330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyEmergencyNumberList(II)V

    .line 903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_600

    .line 885
    :pswitch_343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyRadioPowerStateChanged(III)V

    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    goto/16 :goto_600

    .line 876
    :pswitch_35a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyActiveDataSubIdChanged(I)V

    .line 879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_600

    .line 867
    :pswitch_369
    sget-object v1, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneCapability;

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_600

    .line 854
    :pswitch_37c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 858
    sget-object v3, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyDisplayInfo;

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V

    .line 861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    goto/16 :goto_600

    .line 841
    :pswitch_397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto/16 :goto_600

    .line 828
    :pswitch_3ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChangeForPhoneAndSubId(IIZ)V

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    goto/16 :goto_600

    .line 819
    :pswitch_3c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 820
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCarrierNetworkChange(Z)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_600

    .line 812
    :pswitch_3d4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    goto/16 :goto_600

    .line 806
    :pswitch_3dc
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySubscriptionInfoChanged()V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_600

    .line 794
    :pswitch_3e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOemHookRawEventForSubscriber(II[B)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_600

    .line 779
    :pswitch_3fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 783
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySimActivationStateChangedForPhoneId(IIII)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_600

    .line 768
    :pswitch_416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySrvccStateChanged(II)V

    .line 773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_600

    .line 757
    :pswitch_429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 759
    sget-object v2, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    goto/16 :goto_600

    .line 742
    :pswitch_43e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 746
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDisconnectCause(IIII)V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    goto/16 :goto_600

    .line 723
    :pswitch_459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyPreciseCallState(II[I[Ljava/lang/String;[I[I)V

    .line 736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    goto/16 :goto_600

    .line 714
    :pswitch_47d
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Ljava/util/List;)V

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_600

    .line 703
    :pswitch_48e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    sget-object v2, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellIdentity;

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_600

    .line 690
    :pswitch_4a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    sget-object v3, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PreciseDataConnectionState;

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_600

    .line 677
    :pswitch_4c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriberWithSlot(III)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto/16 :goto_600

    .line 666
    :pswitch_4d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivityForSubscriber(II)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto/16 :goto_600

    .line 655
    :pswitch_4ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    goto/16 :goto_600

    .line 646
    :pswitch_4fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    goto/16 :goto_600

    .line 633
    :pswitch_50c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChangedForPhoneId(IIZ)V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    goto/16 :goto_600

    .line 620
    :pswitch_523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    sget-object v3, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SignalStrength;

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    goto/16 :goto_600

    .line 607
    :pswitch_53e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ServiceState;

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_600

    .line 592
    :pswitch_559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(IIILjava/lang/String;)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    goto/16 :goto_600

    .line 581
    :pswitch_574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallStateForAllSubs(ILjava/lang/String;)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_600

    .line 558
    :pswitch_587
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto :goto_600

    .line 547
    :pswitch_5b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v2

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto :goto_600

    .line 534
    :pswitch_5cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v3

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    goto :goto_600

    .line 521
    :pswitch_5e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    move-result-object v3

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    nop

    .line 1314
    :goto_600
    return v9

    nop

    :pswitch_data_602
    .packed-switch 0x1
        :pswitch_5e6
        :pswitch_5cc
        :pswitch_5b6
        :pswitch_587
        :pswitch_574
        :pswitch_559
        :pswitch_53e
        :pswitch_523
        :pswitch_50c
        :pswitch_4fd
        :pswitch_4ea
        :pswitch_4d7
        :pswitch_4c0
        :pswitch_4a5
        :pswitch_48e
        :pswitch_47d
        :pswitch_459
        :pswitch_43e
        :pswitch_429
        :pswitch_416
        :pswitch_3fb
        :pswitch_3e4
        :pswitch_3dc
        :pswitch_3d4
        :pswitch_3c5
        :pswitch_3ae
        :pswitch_397
        :pswitch_37c
        :pswitch_369
        :pswitch_35a
        :pswitch_343
        :pswitch_330
        :pswitch_315
        :pswitch_2fa
        :pswitch_2db
        :pswitch_2c0
        :pswitch_2a9
        :pswitch_27d
        :pswitch_262
        :pswitch_249
        :pswitch_22e
        :pswitch_212
        :pswitch_1f9
        :pswitch_1ea
        :pswitch_1cb
        :pswitch_1b4
        :pswitch_19d
        :pswitch_186
        :pswitch_16b
        :pswitch_154
        :pswitch_139
        :pswitch_11d
        :pswitch_101
        :pswitch_e6
        :pswitch_d3
        :pswitch_c0
        :pswitch_ad
        :pswitch_96
        :pswitch_7b
        :pswitch_64
        :pswitch_55
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
