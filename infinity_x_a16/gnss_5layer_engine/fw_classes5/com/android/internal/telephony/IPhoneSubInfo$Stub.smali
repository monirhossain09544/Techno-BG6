.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final greylist-max-o TRANSACTION_getCarrierInfoForImsiEncryption:I = 0x18

.field static final greylist TRANSACTION_getDeviceId:I = 0x1

.field static final greylist-max-o TRANSACTION_getDeviceIdForPhone:I = 0x4

.field static final blacklist TRANSACTION_getDeviceIdWithFeature:I = 0x2

.field static final greylist-max-o TRANSACTION_getDeviceSvn:I = 0x6

.field static final greylist-max-o TRANSACTION_getDeviceSvnUsingSubId:I = 0x7

.field static final greylist-max-o TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xb

.field static final blacklist TRANSACTION_getGroupIdLevel2ForSubscriber:I = 0xc

.field static final greylist-max-o TRANSACTION_getIccSerialNumber:I = 0xd

.field static final greylist-max-o TRANSACTION_getIccSerialNumberForSubscriber:I = 0xf

.field static final blacklist TRANSACTION_getIccSerialNumberWithFeature:I = 0xe

.field static final greylist-max-o TRANSACTION_getIccSimChallengeResponse:I = 0x25

.field static final greylist-max-o TRANSACTION_getImeiForSubscriber:I = 0x5

.field static final blacklist TRANSACTION_getImsPcscfAddresses:I = 0x24

.field static final blacklist TRANSACTION_getImsPrivateUserIdentity:I = 0x1e

.field static final blacklist TRANSACTION_getImsPublicUserIdentities:I = 0x21

.field static final greylist-max-o TRANSACTION_getIsimDomain:I = 0x1f

.field static final greylist-max-o TRANSACTION_getIsimImpi:I = 0x1d

.field static final greylist-max-o TRANSACTION_getIsimImpu:I = 0x20

.field static final greylist-max-o TRANSACTION_getIsimIst:I = 0x22

.field static final greylist-max-o TRANSACTION_getIsimPcscf:I = 0x23

.field static final greylist-max-o TRANSACTION_getLine1AlphaTag:I = 0x12

.field static final greylist-max-o TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_getLine1Number:I = 0x10

.field static final greylist-max-o TRANSACTION_getLine1NumberForSubscriber:I = 0x11

.field static final greylist-max-o TRANSACTION_getMsisdn:I = 0x14

.field static final greylist-max-o TRANSACTION_getMsisdnForSubscriber:I = 0x15

.field static final greylist-max-o TRANSACTION_getNaiForSubscriber:I = 0x3

.field static final blacklist TRANSACTION_getSimServiceTable:I = 0x27

.field static final blacklist TRANSACTION_getSmscIdentity:I = 0x26

.field static final greylist-max-o TRANSACTION_getSubscriberId:I = 0x8

.field static final greylist-max-o TRANSACTION_getSubscriberIdForSubscriber:I = 0xa

.field static final blacklist TRANSACTION_getSubscriberIdWithFeature:I = 0x9

.field static final blacklist TRANSACTION_getUiccIari:I = 0x28

.field static final greylist-max-o TRANSACTION_getVoiceMailAlphaTag:I = 0x1b

.field static final greylist-max-o TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x1c

.field static final greylist-max-o TRANSACTION_getVoiceMailNumber:I = 0x16

.field static final greylist-max-o TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x17

.field static final greylist-max-o TRANSACTION_resetCarrierKeysForImsiEncryption:I = 0x1a

.field static final greylist-max-o TRANSACTION_setCarrierInfoForImsiEncryption:I = 0x19


# direct methods
.method public constructor greylist-max-p <init>()V
    .registers 2

    .line 321
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 322
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 3

    .line 330
    if-nez p0, :cond_4

    .line 331
    const/4 p0, 0x0

    return-object p0

    .line 333
    :cond_4
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_13

    .line 335
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    return-object v0

    .line 337
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 346
    packed-switch p0, :pswitch_data_7e

    .line 510
    const/4 p0, 0x0

    return-object p0

    .line 506
    :pswitch_5
    const-string p0, "getUiccIari"

    return-object p0

    .line 502
    :pswitch_8
    const-string p0, "getSimServiceTable"

    return-object p0

    .line 498
    :pswitch_b
    const-string p0, "getSmscIdentity"

    return-object p0

    .line 494
    :pswitch_e
    const-string p0, "getIccSimChallengeResponse"

    return-object p0

    .line 490
    :pswitch_11
    const-string p0, "getImsPcscfAddresses"

    return-object p0

    .line 486
    :pswitch_14
    const-string p0, "getIsimPcscf"

    return-object p0

    .line 482
    :pswitch_17
    const-string p0, "getIsimIst"

    return-object p0

    .line 478
    :pswitch_1a
    const-string p0, "getImsPublicUserIdentities"

    return-object p0

    .line 474
    :pswitch_1d
    const-string p0, "getIsimImpu"

    return-object p0

    .line 470
    :pswitch_20
    const-string p0, "getIsimDomain"

    return-object p0

    .line 466
    :pswitch_23
    const-string p0, "getImsPrivateUserIdentity"

    return-object p0

    .line 462
    :pswitch_26
    const-string p0, "getIsimImpi"

    return-object p0

    .line 458
    :pswitch_29
    const-string p0, "getVoiceMailAlphaTagForSubscriber"

    return-object p0

    .line 454
    :pswitch_2c
    const-string p0, "getVoiceMailAlphaTag"

    return-object p0

    .line 450
    :pswitch_2f
    const-string p0, "resetCarrierKeysForImsiEncryption"

    return-object p0

    .line 446
    :pswitch_32
    const-string p0, "setCarrierInfoForImsiEncryption"

    return-object p0

    .line 442
    :pswitch_35
    const-string p0, "getCarrierInfoForImsiEncryption"

    return-object p0

    .line 438
    :pswitch_38
    const-string p0, "getVoiceMailNumberForSubscriber"

    return-object p0

    .line 434
    :pswitch_3b
    const-string p0, "getVoiceMailNumber"

    return-object p0

    .line 430
    :pswitch_3e
    const-string p0, "getMsisdnForSubscriber"

    return-object p0

    .line 426
    :pswitch_41
    const-string p0, "getMsisdn"

    return-object p0

    .line 422
    :pswitch_44
    const-string p0, "getLine1AlphaTagForSubscriber"

    return-object p0

    .line 418
    :pswitch_47
    const-string p0, "getLine1AlphaTag"

    return-object p0

    .line 414
    :pswitch_4a
    const-string p0, "getLine1NumberForSubscriber"

    return-object p0

    .line 410
    :pswitch_4d
    const-string p0, "getLine1Number"

    return-object p0

    .line 406
    :pswitch_50
    const-string p0, "getIccSerialNumberForSubscriber"

    return-object p0

    .line 402
    :pswitch_53
    const-string p0, "getIccSerialNumberWithFeature"

    return-object p0

    .line 398
    :pswitch_56
    const-string p0, "getIccSerialNumber"

    return-object p0

    .line 394
    :pswitch_59
    const-string p0, "getGroupIdLevel2ForSubscriber"

    return-object p0

    .line 390
    :pswitch_5c
    const-string p0, "getGroupIdLevel1ForSubscriber"

    return-object p0

    .line 386
    :pswitch_5f
    const-string p0, "getSubscriberIdForSubscriber"

    return-object p0

    .line 382
    :pswitch_62
    const-string p0, "getSubscriberIdWithFeature"

    return-object p0

    .line 378
    :pswitch_65
    const-string p0, "getSubscriberId"

    return-object p0

    .line 374
    :pswitch_68
    const-string p0, "getDeviceSvnUsingSubId"

    return-object p0

    .line 370
    :pswitch_6b
    const-string p0, "getDeviceSvn"

    return-object p0

    .line 366
    :pswitch_6e
    const-string p0, "getImeiForSubscriber"

    return-object p0

    .line 362
    :pswitch_71
    const-string p0, "getDeviceIdForPhone"

    return-object p0

    .line 358
    :pswitch_74
    const-string p0, "getNaiForSubscriber"

    return-object p0

    .line 354
    :pswitch_77
    const-string p0, "getDeviceIdWithFeature"

    return-object p0

    .line 350
    :pswitch_7a
    const-string p0, "getDeviceId"

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
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

    .line 341
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2002
    const/16 v0, 0x27

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 517
    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 521
    nop

    .line 522
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 523
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 526
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    return v1

    .line 529
    :cond_17
    packed-switch p1, :pswitch_data_40a

    .line 1037
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1024
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1030
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUiccIari(IILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 1033
    goto/16 :goto_409

    .line 1012
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSimServiceTable(II)Ljava/lang/String;

    move-result-object p1

    .line 1017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1019
    goto/16 :goto_409

    .line 1000
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSmscIdentity(II)Landroid/net/Uri;

    move-result-object p1

    .line 1005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1007
    goto/16 :goto_409

    .line 980
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    goto/16 :goto_409

    .line 968
    :pswitch_92
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImsPcscfAddresses(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 975
    goto/16 :goto_409

    .line 958
    :pswitch_aa
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf(I)[Ljava/lang/String;

    move-result-object p1

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 963
    goto/16 :goto_409

    .line 948
    :pswitch_be
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst(I)Ljava/lang/String;

    move-result-object p1

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    goto/16 :goto_409

    .line 936
    :pswitch_d2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImsPublicUserIdentities(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 943
    goto/16 :goto_409

    .line 926
    :pswitch_ea
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 928
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object p1

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 931
    goto/16 :goto_409

    .line 916
    :pswitch_fe
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain(I)Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    goto/16 :goto_409

    .line 902
    :pswitch_112
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImsPrivateUserIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 911
    goto/16 :goto_409

    .line 892
    :pswitch_12e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi(I)Ljava/lang/String;

    move-result-object p1

    .line 895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 897
    goto/16 :goto_409

    .line 878
    :pswitch_142
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    goto/16 :goto_409

    .line 866
    :pswitch_15e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 871
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    goto/16 :goto_409

    .line 855
    :pswitch_176
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 857
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    goto/16 :goto_409

    .line 842
    :pswitch_18a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 846
    sget-object v0, Landroid/telephony/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ImsiEncryptionInfo;

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V

    .line 849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_409

    .line 828
    :pswitch_1a6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p1

    .line 835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 837
    goto/16 :goto_409

    .line 814
    :pswitch_1c2
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    goto/16 :goto_409

    .line 802
    :pswitch_1de
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 809
    goto/16 :goto_409

    .line 788
    :pswitch_1f6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 795
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 797
    goto/16 :goto_409

    .line 776
    :pswitch_212
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 783
    goto/16 :goto_409

    .line 762
    :pswitch_22a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    goto/16 :goto_409

    .line 750
    :pswitch_246
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 757
    goto/16 :goto_409

    .line 736
    :pswitch_25e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 745
    goto/16 :goto_409

    .line 724
    :pswitch_27a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    goto/16 :goto_409

    .line 710
    :pswitch_292
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    goto/16 :goto_409

    .line 698
    :pswitch_2ae
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 700
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    goto/16 :goto_409

    .line 688
    :pswitch_2c6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 693
    goto/16 :goto_409

    .line 674
    :pswitch_2da
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel2ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    goto/16 :goto_409

    .line 660
    :pswitch_2f6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    goto/16 :goto_409

    .line 646
    :pswitch_312
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    goto/16 :goto_409

    .line 634
    :pswitch_32e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    goto/16 :goto_409

    .line 624
    :pswitch_346
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    goto/16 :goto_409

    .line 610
    :pswitch_35a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    goto/16 :goto_409

    .line 598
    :pswitch_376
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 605
    goto/16 :goto_409

    .line 584
    :pswitch_38e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    goto :goto_409

    .line 570
    :pswitch_3a9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    goto :goto_409

    .line 556
    :pswitch_3c4
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    goto :goto_409

    .line 544
    :pswitch_3df
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {p0, p1, p4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    goto :goto_409

    .line 534
    :pswitch_3f6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    nop

    .line 1040
    :goto_409
    return v1

    :pswitch_data_40a
    .packed-switch 0x1
        :pswitch_3f6
        :pswitch_3df
        :pswitch_3c4
        :pswitch_3a9
        :pswitch_38e
        :pswitch_376
        :pswitch_35a
        :pswitch_346
        :pswitch_32e
        :pswitch_312
        :pswitch_2f6
        :pswitch_2da
        :pswitch_2c6
        :pswitch_2ae
        :pswitch_292
        :pswitch_27a
        :pswitch_25e
        :pswitch_246
        :pswitch_22a
        :pswitch_212
        :pswitch_1f6
        :pswitch_1de
        :pswitch_1c2
        :pswitch_1a6
        :pswitch_18a
        :pswitch_176
        :pswitch_15e
        :pswitch_142
        :pswitch_12e
        :pswitch_112
        :pswitch_fe
        :pswitch_ea
        :pswitch_d2
        :pswitch_be
        :pswitch_aa
        :pswitch_92
        :pswitch_6a
        :pswitch_53
        :pswitch_3c
        :pswitch_20
    .end packed-switch
.end method
