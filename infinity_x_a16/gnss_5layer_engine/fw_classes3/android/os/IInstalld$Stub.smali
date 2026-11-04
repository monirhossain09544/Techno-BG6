.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final blacklist TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final greylist-max-o TRANSACTION_clearAppData:I = 0x9

.field static final greylist-max-o TRANSACTION_clearAppProfiles:I = 0x19

.field static final blacklist TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final greylist-max-o TRANSACTION_copySystemProfile:I = 0x18

.field static final greylist-max-o TRANSACTION_createAppData:I = 0x4

.field static final blacklist TRANSACTION_createAppDataBatched:I = 0x5

.field static final blacklist TRANSACTION_createFsveritySetupAuthToken:I = 0x33

.field static final blacklist TRANSACTION_createOatDirs:I = 0x21

.field static final greylist-max-o TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final greylist-max-o TRANSACTION_createUserData:I = 0x1

.field static final greylist-max-o TRANSACTION_deleteOdex:I = 0x24

.field static final blacklist TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final greylist-max-o TRANSACTION_destroyAppData:I = 0xa

.field static final blacklist TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final greylist-max-o TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final greylist-max-o TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final greylist-max-o TRANSACTION_destroyUserData:I = 0x2

.field static final greylist-max-o TRANSACTION_dexopt:I = 0x13

.field static final greylist-max-o TRANSACTION_dumpProfiles:I = 0x17

.field static final blacklist TRANSACTION_enableFsverity:I = 0x34

.field static final greylist-max-o TRANSACTION_fixupAppData:I = 0xb

.field static final greylist-max-o TRANSACTION_freeCache:I = 0x1f

.field static final blacklist TRANSACTION_getAppCrates:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppSize:I = 0xc

.field static final greylist-max-o TRANSACTION_getExternalSize:I = 0xe

.field static final blacklist TRANSACTION_getOdexVisibility:I = 0x32

.field static final blacklist TRANSACTION_getUserCrates:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserSize:I = 0xd

.field static final greylist-max-o TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final greylist-max-o TRANSACTION_invalidateMounts:I = 0x27

.field static final greylist-max-o TRANSACTION_isQuotaSupported:I = 0x28

.field static final greylist-max-o TRANSACTION_linkFile:I = 0x22

.field static final greylist-max-o TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final greylist-max-o TRANSACTION_mergeProfiles:I = 0x16

.field static final greylist-max-o TRANSACTION_migrateAppData:I = 0x8

.field static final blacklist TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final greylist-max-o TRANSACTION_moveAb:I = 0x23

.field static final greylist-max-o TRANSACTION_moveCompleteApp:I = 0x12

.field static final blacklist TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final greylist-max-o TRANSACTION_prepareAppProfile:I = 0x29

.field static final blacklist TRANSACTION_reconcileSdkData:I = 0x6

.field static final greylist-max-o TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final blacklist TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final greylist-max-o TRANSACTION_restoreconAppData:I = 0x7

.field static final greylist-max-o TRANSACTION_rmPackageDir:I = 0x1e

.field static final greylist-max-o TRANSACTION_rmdex:I = 0x15

.field static final greylist-max-o TRANSACTION_setAppQuota:I = 0x11

.field static final blacklist TRANSACTION_setFirstBoot:I = 0x3

.field static final blacklist TRANSACTION_snapshotAppData:I = 0x2a

.field static final blacklist TRANSACTION_tryMountDataMirror:I = 0x2e


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 208
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .registers 3

    .line 216
    if-nez p0, :cond_4

    .line 217
    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_4
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_13

    .line 221
    check-cast v0, Landroid/os/IInstalld;

    return-object v0

    .line 223
    :cond_13
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 232
    packed-switch p0, :pswitch_data_ae

    .line 444
    const/4 p0, 0x0

    return-object p0

    .line 440
    :pswitch_5
    const-string p0, "enableFsverity"

    return-object p0

    .line 436
    :pswitch_8
    const-string p0, "createFsveritySetupAuthToken"

    return-object p0

    .line 432
    :pswitch_b
    const-string p0, "getOdexVisibility"

    return-object p0

    .line 428
    :pswitch_e
    const-string p0, "cleanupInvalidPackageDirs"

    return-object p0

    .line 424
    :pswitch_11
    const-string p0, "migrateLegacyObbData"

    return-object p0

    .line 420
    :pswitch_14
    const-string/jumbo p0, "onPrivateVolumeRemoved"

    return-object p0

    .line 416
    :pswitch_18
    const-string/jumbo p0, "tryMountDataMirror"

    return-object p0

    .line 412
    :pswitch_1c
    const-string p0, "destroyCeSnapshotsNotSpecified"

    return-object p0

    .line 408
    :pswitch_1f
    const-string p0, "destroyAppDataSnapshot"

    return-object p0

    .line 404
    :pswitch_22
    const-string/jumbo p0, "restoreAppDataSnapshot"

    return-object p0

    .line 400
    :pswitch_26
    const-string/jumbo p0, "snapshotAppData"

    return-object p0

    .line 396
    :pswitch_2a
    const-string/jumbo p0, "prepareAppProfile"

    return-object p0

    .line 392
    :pswitch_2e
    const-string p0, "isQuotaSupported"

    return-object p0

    .line 388
    :pswitch_31
    const-string p0, "invalidateMounts"

    return-object p0

    .line 384
    :pswitch_34
    const-string p0, "hashSecondaryDexFile"

    return-object p0

    .line 380
    :pswitch_37
    const-string/jumbo p0, "reconcileSecondaryDexFile"

    return-object p0

    .line 376
    :pswitch_3b
    const-string p0, "deleteOdex"

    return-object p0

    .line 372
    :pswitch_3e
    const-string p0, "moveAb"

    return-object p0

    .line 368
    :pswitch_41
    const-string p0, "linkFile"

    return-object p0

    .line 364
    :pswitch_44
    const-string p0, "createOatDirs"

    return-object p0

    .line 360
    :pswitch_47
    const-string p0, "linkNativeLibraryDirectory"

    return-object p0

    .line 356
    :pswitch_4a
    const-string p0, "freeCache"

    return-object p0

    .line 352
    :pswitch_4d
    const-string/jumbo p0, "rmPackageDir"

    return-object p0

    .line 348
    :pswitch_51
    const-string p0, "destroyProfileSnapshot"

    return-object p0

    .line 344
    :pswitch_54
    const-string p0, "createProfileSnapshot"

    return-object p0

    .line 340
    :pswitch_57
    const-string p0, "deleteReferenceProfile"

    return-object p0

    .line 336
    :pswitch_5a
    const-string p0, "destroyAppProfiles"

    return-object p0

    .line 332
    :pswitch_5d
    const-string p0, "clearAppProfiles"

    return-object p0

    .line 328
    :pswitch_60
    const-string p0, "copySystemProfile"

    return-object p0

    .line 324
    :pswitch_63
    const-string p0, "dumpProfiles"

    return-object p0

    .line 320
    :pswitch_66
    const-string p0, "mergeProfiles"

    return-object p0

    .line 316
    :pswitch_69
    const-string/jumbo p0, "rmdex"

    return-object p0

    .line 312
    :pswitch_6d
    const-string p0, "controlDexOptBlocking"

    return-object p0

    .line 308
    :pswitch_70
    const-string p0, "dexopt"

    return-object p0

    .line 304
    :pswitch_73
    const-string p0, "moveCompleteApp"

    return-object p0

    .line 300
    :pswitch_76
    const-string/jumbo p0, "setAppQuota"

    return-object p0

    .line 296
    :pswitch_7a
    const-string p0, "getUserCrates"

    return-object p0

    .line 292
    :pswitch_7d
    const-string p0, "getAppCrates"

    return-object p0

    .line 288
    :pswitch_80
    const-string p0, "getExternalSize"

    return-object p0

    .line 284
    :pswitch_83
    const-string p0, "getUserSize"

    return-object p0

    .line 280
    :pswitch_86
    const-string p0, "getAppSize"

    return-object p0

    .line 276
    :pswitch_89
    const-string p0, "fixupAppData"

    return-object p0

    .line 272
    :pswitch_8c
    const-string p0, "destroyAppData"

    return-object p0

    .line 268
    :pswitch_8f
    const-string p0, "clearAppData"

    return-object p0

    .line 264
    :pswitch_92
    const-string p0, "migrateAppData"

    return-object p0

    .line 260
    :pswitch_95
    const-string/jumbo p0, "restoreconAppData"

    return-object p0

    .line 256
    :pswitch_99
    const-string/jumbo p0, "reconcileSdkData"

    return-object p0

    .line 252
    :pswitch_9d
    const-string p0, "createAppDataBatched"

    return-object p0

    .line 248
    :pswitch_a0
    const-string p0, "createAppData"

    return-object p0

    .line 244
    :pswitch_a3
    const-string/jumbo p0, "setFirstBoot"

    return-object p0

    .line 240
    :pswitch_a7
    const-string p0, "destroyUserData"

    return-object p0

    .line 236
    :pswitch_aa
    const-string p0, "createUserData"

    return-object p0

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9d
        :pswitch_99
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
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
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

    .line 227
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2267
    const/16 v0, 0x33

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 451
    invoke-static {p1}, Landroid/os/IInstalld$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    .line 456
    const-string v3, "android.os.IInstalld"

    const/4 v9, 0x1

    if-lt v1, v9, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 457
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    :cond_15
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 460
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    return v9

    .line 463
    :cond_1e
    packed-switch v1, :pswitch_data_5be

    .line 1213
    move-object v11, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1200
    :pswitch_27
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1

    .line 1202
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1205
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/IInstalld$Stub;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1207
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    goto/16 :goto_5bd

    .line 1188
    :pswitch_46
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 1190
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1191
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1192
    invoke-virtual {v0, v1, v3}, Landroid/os/IInstalld$Stub;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v0

    .line 1193
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1195
    goto/16 :goto_5bd

    .line 1172
    :pswitch_61
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1176
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1178
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1179
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/os/IInstalld$Stub;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1181
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    goto/16 :goto_5bd

    .line 1159
    :pswitch_80
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1163
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1164
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/IInstalld$Stub;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 1166
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_5bd

    .line 1152
    :pswitch_97
    invoke-virtual {v0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    .line 1153
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    goto/16 :goto_5bd

    .line 1144
    :pswitch_9f
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1145
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    goto/16 :goto_5bd

    .line 1135
    :pswitch_ae
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->tryMountDataMirror(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    goto/16 :goto_5bd

    .line 1122
    :pswitch_bd
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1126
    invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1127
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1128
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/IInstalld$Stub;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 1129
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    goto/16 :goto_5bd

    .line 1103
    :pswitch_d4
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 1116
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    goto/16 :goto_5bd

    .line 1082
    :pswitch_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 1097
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    goto/16 :goto_5bd

    .line 1064
    :pswitch_120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 1075
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1077
    goto/16 :goto_5bd

    .line 1044
    :pswitch_145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1057
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1059
    goto/16 :goto_5bd

    .line 1034
    :pswitch_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0

    .line 1037
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1039
    goto/16 :goto_5bd

    .line 1027
    :pswitch_181
    invoke-virtual {v0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    .line 1028
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    goto/16 :goto_5bd

    .line 1010
    :pswitch_189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 1021
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1023
    goto/16 :goto_5bd

    .line 990
    :pswitch_1ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1003
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1005
    goto/16 :goto_5bd

    .line 974
    :pswitch_1d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 983
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 985
    goto/16 :goto_5bd

    .line 959
    :pswitch_1f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    goto/16 :goto_5bd

    .line 944
    :pswitch_20f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_5bd

    .line 931
    :pswitch_22a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createOatDirs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 938
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    goto/16 :goto_5bd

    .line 916
    :pswitch_241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 925
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_5bd

    .line 903
    :pswitch_25c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JI)V

    .line 910
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_5bd

    .line 892
    :pswitch_273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    goto/16 :goto_5bd

    .line 881
    :pswitch_286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    goto/16 :goto_5bd

    .line 865
    :pswitch_299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 874
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 876
    goto/16 :goto_5bd

    .line 854
    :pswitch_2b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    goto/16 :goto_5bd

    .line 845
    :pswitch_2cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto/16 :goto_5bd

    .line 834
    :pswitch_2da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    goto/16 :goto_5bd

    .line 818
    :pswitch_2ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 827
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 829
    goto/16 :goto_5bd

    .line 800
    :pswitch_30c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 811
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 813
    goto/16 :goto_5bd

    .line 786
    :pswitch_32f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 793
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    goto/16 :goto_5bd

    .line 775
    :pswitch_34a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    goto/16 :goto_5bd

    .line 766
    :pswitch_35d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->controlDexOptBlocking(Z)V

    .line 769
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_5bd

    .line 726
    :pswitch_36c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 740
    move v1, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    move-object v1, v0

    move-object/from16 v0, p3

    invoke-virtual/range {v1 .. v17}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 761
    const/4 v9, 0x1

    goto/16 :goto_5bd

    .line 705
    :pswitch_3c0
    move-object v0, v8

    move-object/from16 v11, p2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 713
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 715
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 717
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 718
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 720
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    const/4 v9, 0x1

    goto/16 :goto_5bd

    .line 690
    :pswitch_3ed
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 696
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 697
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 699
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v9, 0x1

    goto/16 :goto_5bd

    .line 678
    :pswitch_40c
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 680
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 683
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 685
    goto/16 :goto_5bd

    .line 664
    :pswitch_425
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 669
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v0

    .line 671
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 673
    goto/16 :goto_5bd

    .line 648
    :pswitch_441
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 652
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 654
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 655
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 657
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 659
    goto/16 :goto_5bd

    .line 632
    :pswitch_461
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 636
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 638
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 639
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 641
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 643
    goto/16 :goto_5bd

    .line 610
    :pswitch_481
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 616
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 618
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 620
    invoke-virtual {v11}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v6

    .line 622
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 623
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 625
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 627
    goto/16 :goto_5bd

    .line 599
    :pswitch_4ad
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    .line 604
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_5bd

    .line 582
    :pswitch_4c1
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 588
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 590
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 591
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 593
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_5bd

    .line 565
    :pswitch_4e1
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 571
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 573
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 574
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 576
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_5bd

    .line 550
    :pswitch_503
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 556
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 557
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 559
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_5bd

    .line 531
    :pswitch_51f
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 537
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 539
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 541
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 542
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 544
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_5bd

    .line 522
    :pswitch_543
    move-object v11, v2

    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 523
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 525
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto :goto_5bd

    .line 512
    :pswitch_556
    move-object v11, v2

    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 513
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 515
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 517
    goto :goto_5bd

    .line 502
    :pswitch_56d
    move-object v11, v2

    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 503
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v0

    .line 505
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 507
    goto :goto_5bd

    .line 495
    :pswitch_584
    invoke-virtual {v0}, Landroid/os/IInstalld$Stub;->setFirstBoot()V

    .line 496
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    goto :goto_5bd

    .line 483
    :pswitch_58b
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    .line 490
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto :goto_5bd

    .line 468
    :pswitch_5a2
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 474
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 475
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    .line 477
    invoke-virtual {v8}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    nop

    .line 1216
    :goto_5bd
    return v9

    :pswitch_data_5be
    .packed-switch 0x1
        :pswitch_5a2
        :pswitch_58b
        :pswitch_584
        :pswitch_56d
        :pswitch_556
        :pswitch_543
        :pswitch_51f
        :pswitch_503
        :pswitch_4e1
        :pswitch_4c1
        :pswitch_4ad
        :pswitch_481
        :pswitch_461
        :pswitch_441
        :pswitch_425
        :pswitch_40c
        :pswitch_3ed
        :pswitch_3c0
        :pswitch_36c
        :pswitch_35d
        :pswitch_34a
        :pswitch_32f
        :pswitch_30c
        :pswitch_2ed
        :pswitch_2da
        :pswitch_2cb
        :pswitch_2b8
        :pswitch_299
        :pswitch_286
        :pswitch_273
        :pswitch_25c
        :pswitch_241
        :pswitch_22a
        :pswitch_20f
        :pswitch_1f4
        :pswitch_1d5
        :pswitch_1ac
        :pswitch_189
        :pswitch_181
        :pswitch_16e
        :pswitch_145
        :pswitch_120
        :pswitch_f7
        :pswitch_d4
        :pswitch_bd
        :pswitch_ae
        :pswitch_9f
        :pswitch_97
        :pswitch_80
        :pswitch_61
        :pswitch_46
        :pswitch_27
    .end packed-switch
.end method
