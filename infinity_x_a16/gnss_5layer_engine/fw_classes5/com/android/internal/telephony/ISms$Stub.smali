.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final blacklist TRANSACTION_checkSmsShortCodeDestination:I = 0x1e

.field static final blacklist TRANSACTION_clearStorageMonitorMemoryStatusOverride:I = 0x1d

.field static final greylist-max-o TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x3

.field static final greylist-max-o TRANSACTION_createAppSpecificSmsToken:I = 0x1a

.field static final blacklist TRANSACTION_createAppSpecificSmsTokenWithPackageInfo:I = 0x1b

.field static final greylist-max-o TRANSACTION_disableCellBroadcastForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0xd

.field static final greylist-max-o TRANSACTION_enableCellBroadcastForSubscriber:I = 0xa

.field static final greylist-max-o TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0xc

.field static final greylist-max-o TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x1

.field static final blacklist TRANSACTION_getCarrierConfigValuesForSubscriber:I = 0x19

.field static final greylist-max-o TRANSACTION_getImsSmsFormatForSubscriber:I = 0x15

.field static final greylist-max-o TRANSACTION_getPreferredSmsSubscription:I = 0x14

.field static final greylist-max-o TRANSACTION_getPremiumSmsPermission:I = 0xe

.field static final greylist-max-o TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0xf

.field static final blacklist TRANSACTION_getSmsCapacityOnIccForSubscriber:I = 0x21

.field static final blacklist TRANSACTION_getSmscAddressFromIccEfForSubscriber:I = 0x1f

.field static final blacklist TRANSACTION_getWapMessageSize:I = 0x23

.field static final greylist-max-o TRANSACTION_injectSmsPduForSubscriber:I = 0x7

.field static final greylist-max-o TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x12

.field static final greylist-max-o TRANSACTION_isSMSPromptEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isSmsSimPickActivityNeeded:I = 0x13

.field static final blacklist TRANSACTION_resetAllCellBroadcastRanges:I = 0x22

.field static final greylist-max-o TRANSACTION_sendDataForSubscriber:I = 0x4

.field static final greylist-max-o TRANSACTION_sendMultipartTextForSubscriber:I = 0x8

.field static final greylist-max-o TRANSACTION_sendMultipartTextForSubscriberWithOptions:I = 0x9

.field static final greylist-max-o TRANSACTION_sendStoredMultipartText:I = 0x18

.field static final greylist-max-o TRANSACTION_sendStoredText:I = 0x17

.field static final greylist-max-o TRANSACTION_sendTextForSubscriber:I = 0x5

.field static final greylist-max-o TRANSACTION_sendTextForSubscriberWithOptions:I = 0x6

.field static final greylist-max-o TRANSACTION_setPremiumSmsPermission:I = 0x10

.field static final greylist-max-o TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_setSmscAddressOnIccEfForSubscriber:I = 0x20

.field static final blacklist TRANSACTION_setStorageMonitorMemoryStatusOverride:I = 0x1c

.field static final greylist-max-o TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x2


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 638
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 639
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .registers 3

    .line 647
    if-nez p0, :cond_4

    .line 648
    const/4 p0, 0x0

    return-object p0

    .line 650
    :cond_4
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_13

    .line 652
    check-cast v0, Lcom/android/internal/telephony/ISms;

    return-object v0

    .line 654
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 663
    packed-switch p0, :pswitch_data_6e

    .line 807
    const/4 p0, 0x0

    return-object p0

    .line 803
    :pswitch_5
    const-string p0, "getWapMessageSize"

    return-object p0

    .line 799
    :pswitch_8
    const-string p0, "resetAllCellBroadcastRanges"

    return-object p0

    .line 795
    :pswitch_b
    const-string p0, "getSmsCapacityOnIccForSubscriber"

    return-object p0

    .line 791
    :pswitch_e
    const-string p0, "setSmscAddressOnIccEfForSubscriber"

    return-object p0

    .line 787
    :pswitch_11
    const-string p0, "getSmscAddressFromIccEfForSubscriber"

    return-object p0

    .line 783
    :pswitch_14
    const-string p0, "checkSmsShortCodeDestination"

    return-object p0

    .line 779
    :pswitch_17
    const-string p0, "clearStorageMonitorMemoryStatusOverride"

    return-object p0

    .line 775
    :pswitch_1a
    const-string p0, "setStorageMonitorMemoryStatusOverride"

    return-object p0

    .line 771
    :pswitch_1d
    const-string p0, "createAppSpecificSmsTokenWithPackageInfo"

    return-object p0

    .line 767
    :pswitch_20
    const-string p0, "createAppSpecificSmsToken"

    return-object p0

    .line 763
    :pswitch_23
    const-string p0, "getCarrierConfigValuesForSubscriber"

    return-object p0

    .line 759
    :pswitch_26
    const-string p0, "sendStoredMultipartText"

    return-object p0

    .line 755
    :pswitch_29
    const-string p0, "sendStoredText"

    return-object p0

    .line 751
    :pswitch_2c
    const-string p0, "isSMSPromptEnabled"

    return-object p0

    .line 747
    :pswitch_2f
    const-string p0, "getImsSmsFormatForSubscriber"

    return-object p0

    .line 743
    :pswitch_32
    const-string p0, "getPreferredSmsSubscription"

    return-object p0

    .line 739
    :pswitch_35
    const-string p0, "isSmsSimPickActivityNeeded"

    return-object p0

    .line 735
    :pswitch_38
    const-string p0, "isImsSmsSupportedForSubscriber"

    return-object p0

    .line 731
    :pswitch_3b
    const-string p0, "setPremiumSmsPermissionForSubscriber"

    return-object p0

    .line 727
    :pswitch_3e
    const-string p0, "setPremiumSmsPermission"

    return-object p0

    .line 723
    :pswitch_41
    const-string p0, "getPremiumSmsPermissionForSubscriber"

    return-object p0

    .line 719
    :pswitch_44
    const-string p0, "getPremiumSmsPermission"

    return-object p0

    .line 715
    :pswitch_47
    const-string p0, "disableCellBroadcastRangeForSubscriber"

    return-object p0

    .line 711
    :pswitch_4a
    const-string p0, "enableCellBroadcastRangeForSubscriber"

    return-object p0

    .line 707
    :pswitch_4d
    const-string p0, "disableCellBroadcastForSubscriber"

    return-object p0

    .line 703
    :pswitch_50
    const-string p0, "enableCellBroadcastForSubscriber"

    return-object p0

    .line 699
    :pswitch_53
    const-string p0, "sendMultipartTextForSubscriberWithOptions"

    return-object p0

    .line 695
    :pswitch_56
    const-string p0, "sendMultipartTextForSubscriber"

    return-object p0

    .line 691
    :pswitch_59
    const-string p0, "injectSmsPduForSubscriber"

    return-object p0

    .line 687
    :pswitch_5c
    const-string p0, "sendTextForSubscriberWithOptions"

    return-object p0

    .line 683
    :pswitch_5f
    const-string p0, "sendTextForSubscriber"

    return-object p0

    .line 679
    :pswitch_62
    const-string p0, "sendDataForSubscriber"

    return-object p0

    .line 675
    :pswitch_65
    const-string p0, "copyMessageToIccEfForSubscriber"

    return-object p0

    .line 671
    :pswitch_68
    const-string p0, "updateMessageOnIccEfForSubscriber"

    return-object p0

    .line 667
    :pswitch_6b
    const-string p0, "getAllMessagesFromIccEfForSubscriber"

    return-object p0

    :pswitch_data_6e
    .packed-switch 0x1
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

    .line 658
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2591
    const/16 v0, 0x22

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 814
    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .line 819
    const-string v3, "com.android.internal.telephony.ISms"

    const/4 v14, 0x1

    if-lt v1, v14, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 820
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    :cond_15
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 823
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 824
    return v14

    .line 826
    :cond_1e
    packed-switch v1, :pswitch_data_482

    .line 1360
    move-object v15, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1351
    :pswitch_27
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1353
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getWapMessageSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 1354
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1356
    goto/16 :goto_480

    .line 1341
    :pswitch_3a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1342
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->resetAllCellBroadcastRanges(I)Z

    move-result v0

    .line 1344
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1346
    goto/16 :goto_480

    .line 1331
    :pswitch_4d
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1332
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getSmsCapacityOnIccForSubscriber(I)I

    move-result v0

    .line 1334
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    goto/16 :goto_480

    .line 1317
    :pswitch_60
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1319
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1321
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1322
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 1324
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1326
    goto/16 :goto_480

    .line 1305
    :pswitch_7b
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1307
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1308
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/ISms$Stub;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1310
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1312
    goto/16 :goto_480

    .line 1287
    :pswitch_92
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1295
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1296
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1298
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    goto/16 :goto_480

    .line 1278
    :pswitch_b7
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1279
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->clearStorageMonitorMemoryStatusOverride(I)V

    .line 1281
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    goto/16 :goto_480

    .line 1267
    :pswitch_c7
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1269
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1270
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1271
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setStorageMonitorMemoryStatusOverride(IZ)V

    .line 1272
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    goto/16 :goto_480

    .line 1251
    :pswitch_db
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1253
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1257
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1258
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1262
    goto/16 :goto_480

    .line 1237
    :pswitch_ff
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1239
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1241
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 1242
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1243
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1246
    goto/16 :goto_480

    .line 1227
    :pswitch_11f
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1228
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1230
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1232
    goto/16 :goto_480

    .line 1206
    :pswitch_133
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1208
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1210
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1212
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1214
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1216
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1218
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1219
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    move-object v6, v7

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1221
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    goto/16 :goto_480

    .line 1185
    :pswitch_165
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1187
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1189
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1191
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 1193
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1197
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 1198
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1200
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    goto/16 :goto_480

    .line 1177
    :pswitch_19d
    invoke-virtual {v0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    move-result v0

    .line 1178
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1180
    goto/16 :goto_480

    .line 1168
    :pswitch_1a9
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1169
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1170
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    .line 1171
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    goto/16 :goto_480

    .line 1160
    :pswitch_1bd
    invoke-virtual {v0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()I

    move-result v0

    .line 1161
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    goto/16 :goto_480

    .line 1151
    :pswitch_1c9
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1152
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->isSmsSimPickActivityNeeded(I)Z

    move-result v0

    .line 1154
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1156
    goto/16 :goto_480

    .line 1141
    :pswitch_1dd
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1142
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(I)Z

    move-result v0

    .line 1144
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1146
    goto/16 :goto_480

    .line 1128
    :pswitch_1f1
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1130
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1132
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1133
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    .line 1135
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    goto/16 :goto_480

    .line 1117
    :pswitch_209
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1120
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1122
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    goto/16 :goto_480

    .line 1105
    :pswitch_21d
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1107
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1108
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result v0

    .line 1110
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    goto/16 :goto_480

    .line 1095
    :pswitch_235
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    .line 1098
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    goto/16 :goto_480

    .line 1079
    :pswitch_249
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1081
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1083
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1085
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1086
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v0

    .line 1088
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1090
    goto/16 :goto_480

    .line 1063
    :pswitch_269
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1065
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1067
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1069
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1070
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v0

    .line 1072
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1074
    goto/16 :goto_480

    .line 1049
    :pswitch_289
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1051
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1053
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1054
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1055
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(III)Z

    move-result v0

    .line 1056
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1058
    goto/16 :goto_480

    .line 1035
    :pswitch_2a5
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1037
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1039
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1040
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(III)Z

    move-result v0

    .line 1042
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1044
    goto/16 :goto_480

    .line 1004
    :pswitch_2c1
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1006
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1012
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1014
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1016
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1018
    sget-object v9, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1020
    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 1026
    move-object/from16 v15, p2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1027
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    .line 1029
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    goto/16 :goto_480

    .line 977
    :pswitch_306
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 979
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 981
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 985
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 987
    invoke-virtual {v15}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 989
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 991
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 993
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 995
    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 996
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    .line 998
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    goto/16 :goto_480

    .line 962
    :pswitch_340
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 964
    invoke-virtual {v15}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 966
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 968
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 969
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 971
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    goto/16 :goto_480

    .line 931
    :pswitch_360
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 933
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 935
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 937
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 939
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 941
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 943
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 945
    sget-object v8, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 947
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 949
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 951
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 953
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 954
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 956
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    goto/16 :goto_480

    .line 904
    :pswitch_3a4
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 906
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 912
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 914
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 916
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 918
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 920
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 922
    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 923
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    .line 925
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_480

    .line 879
    :pswitch_3e4
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 887
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 889
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 891
    invoke-virtual {v15}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 893
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 895
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 896
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 898
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto :goto_480

    .line 861
    :pswitch_41f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 863
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 865
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 867
    invoke-virtual {v15}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 869
    invoke-virtual {v15}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 870
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result v0

    .line 872
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 874
    goto :goto_480

    .line 843
    :pswitch_444
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 845
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 847
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 849
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 851
    invoke-virtual {v15}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 852
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result v0

    .line 854
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 856
    goto :goto_480

    .line 831
    :pswitch_469
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 833
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 835
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 836
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 838
    nop

    .line 1363
    :goto_480
    return v14

    nop

    :pswitch_data_482
    .packed-switch 0x1
        :pswitch_469
        :pswitch_444
        :pswitch_41f
        :pswitch_3e4
        :pswitch_3a4
        :pswitch_360
        :pswitch_340
        :pswitch_306
        :pswitch_2c1
        :pswitch_2a5
        :pswitch_289
        :pswitch_269
        :pswitch_249
        :pswitch_235
        :pswitch_21d
        :pswitch_209
        :pswitch_1f1
        :pswitch_1dd
        :pswitch_1c9
        :pswitch_1bd
        :pswitch_1a9
        :pswitch_19d
        :pswitch_165
        :pswitch_133
        :pswitch_11f
        :pswitch_ff
        :pswitch_db
        :pswitch_c7
        :pswitch_b7
        :pswitch_92
        :pswitch_7b
        :pswitch_60
        :pswitch_4d
        :pswitch_3a
        :pswitch_27
    .end packed-switch
.end method
