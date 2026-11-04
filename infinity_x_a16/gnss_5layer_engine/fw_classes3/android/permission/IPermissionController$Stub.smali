.class public abstract Landroid/permission/IPermissionController$Stub;
.super Landroid/os/Binder;
.source "IPermissionController.java"

# interfaces
.implements Landroid/permission/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_applyStagedRuntimePermissionBackup:I = 0x4

.field static final blacklist TRANSACTION_countPermissionApps:I = 0x7

.field static final blacklist TRANSACTION_getAppPermissions:I = 0x5

.field static final blacklist TRANSACTION_getGroupOfPlatformPermission:I = 0xf

.field static final blacklist TRANSACTION_getHibernationEligibility:I = 0x11

.field static final blacklist TRANSACTION_getPermissionUsages:I = 0x8

.field static final blacklist TRANSACTION_getPlatformPermissionsForGroup:I = 0xe

.field static final blacklist TRANSACTION_getPrivilegesDescriptionStringForProfile:I = 0xd

.field static final blacklist TRANSACTION_getRuntimePermissionBackup:I = 0x2

.field static final blacklist TRANSACTION_getUnusedAppCount:I = 0x10

.field static final blacklist TRANSACTION_grantOrUpgradeDefaultRuntimePermissions:I = 0xa

.field static final blacklist TRANSACTION_notifyOneTimePermissionSessionTimeout:I = 0xb

.field static final blacklist TRANSACTION_revokeRuntimePermission:I = 0x6

.field static final blacklist TRANSACTION_revokeRuntimePermissions:I = 0x1

.field static final blacklist TRANSACTION_revokeSelfPermissionsOnKill:I = 0x12

.field static final blacklist TRANSACTION_setRuntimePermissionGrantStateByDeviceAdminFromParams:I = 0x9

.field static final blacklist TRANSACTION_stageAndApplyRuntimePermissionsBackup:I = 0x3

.field static final blacklist TRANSACTION_updateUserSensitiveForApp:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    const-string v0, "android.permission.IPermissionController"

    invoke-virtual {p0, p0, v0}, Landroid/permission/IPermissionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionController;
    .registers 3

    .line 94
    if-nez p0, :cond_4

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    const-string v0, "android.permission.IPermissionController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/permission/IPermissionController;

    if-eqz v1, :cond_13

    .line 99
    check-cast v0, Landroid/permission/IPermissionController;

    return-object v0

    .line 101
    :cond_13
    new-instance v0, Landroid/permission/IPermissionController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/permission/IPermissionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 110
    packed-switch p0, :pswitch_data_42

    .line 186
    const/4 p0, 0x0

    return-object p0

    .line 182
    :pswitch_5
    const-string/jumbo p0, "revokeSelfPermissionsOnKill"

    return-object p0

    .line 178
    :pswitch_9
    const-string p0, "getHibernationEligibility"

    return-object p0

    .line 174
    :pswitch_c
    const-string p0, "getUnusedAppCount"

    return-object p0

    .line 170
    :pswitch_f
    const-string p0, "getGroupOfPlatformPermission"

    return-object p0

    .line 166
    :pswitch_12
    const-string p0, "getPlatformPermissionsForGroup"

    return-object p0

    .line 162
    :pswitch_15
    const-string p0, "getPrivilegesDescriptionStringForProfile"

    return-object p0

    .line 158
    :pswitch_18
    const-string/jumbo p0, "updateUserSensitiveForApp"

    return-object p0

    .line 154
    :pswitch_1c
    const-string/jumbo p0, "notifyOneTimePermissionSessionTimeout"

    return-object p0

    .line 150
    :pswitch_20
    const-string p0, "grantOrUpgradeDefaultRuntimePermissions"

    return-object p0

    .line 146
    :pswitch_23
    const-string/jumbo p0, "setRuntimePermissionGrantStateByDeviceAdminFromParams"

    return-object p0

    .line 142
    :pswitch_27
    const-string p0, "getPermissionUsages"

    return-object p0

    .line 138
    :pswitch_2a
    const-string p0, "countPermissionApps"

    return-object p0

    .line 134
    :pswitch_2d
    const-string/jumbo p0, "revokeRuntimePermission"

    return-object p0

    .line 130
    :pswitch_31
    const-string p0, "getAppPermissions"

    return-object p0

    .line 126
    :pswitch_34
    const-string p0, "applyStagedRuntimePermissionBackup"

    return-object p0

    .line 122
    :pswitch_37
    const-string/jumbo p0, "stageAndApplyRuntimePermissionsBackup"

    return-object p0

    .line 118
    :pswitch_3b
    const-string p0, "getRuntimePermissionBackup"

    return-object p0

    .line 114
    :pswitch_3e
    const-string/jumbo p0, "revokeRuntimePermissions"

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 686
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 193
    invoke-static {p1}, Landroid/permission/IPermissionController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 197
    nop

    .line 198
    const-string v0, "android.permission.IPermissionController"

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
    packed-switch p1, :pswitch_data_1ae

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 390
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 396
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AndroidFuture;

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/permission/IPermissionController$Stub;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 399
    goto/16 :goto_1ad

    .line 380
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 382
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 385
    goto/16 :goto_1ad

    .line 372
    :pswitch_4f
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, p1}, Landroid/permission/IPermissionController$Stub;->getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V

    .line 375
    goto/16 :goto_1ad

    .line 362
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 364
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 367
    goto/16 :goto_1ad

    .line 352
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 354
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 357
    goto/16 :goto_1ad

    .line 342
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 344
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 347
    goto/16 :goto_1ad

    .line 332
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 334
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V

    .line 337
    goto/16 :goto_1ad

    .line 322
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;I)V

    .line 327
    goto/16 :goto_1ad

    .line 314
    :pswitch_bf
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, p1}, Landroid/permission/IPermissionController$Stub;->grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V

    .line 317
    goto/16 :goto_1ad

    .line 302
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    sget-object p3, Landroid/permission/AdminPermissionControlParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/permission/AdminPermissionControlParams;

    .line 306
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, p1, p3, p4}, Landroid/permission/IPermissionController$Stub;->setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V

    .line 309
    goto/16 :goto_1ad

    .line 290
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 294
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AndroidFuture;

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/permission/IPermissionController$Stub;->getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V

    .line 297
    goto/16 :goto_1ad

    .line 278
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 282
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, p1, p3, p4}, Landroid/permission/IPermissionController$Stub;->countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 285
    goto/16 :goto_1ad

    .line 268
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    goto/16 :goto_1ad

    .line 258
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 260
    sget-object p3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/infra/AndroidFuture;

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 263
    goto :goto_1ad

    .line 246
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 248
    sget-object p3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    .line 250
    sget-object p4, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/infra/AndroidFuture;

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, p1, p3, p4}, Landroid/permission/IPermissionController$Stub;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 253
    goto :goto_1ad

    .line 236
    :pswitch_159
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 238
    sget-object p3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 241
    goto :goto_1ad

    .line 226
    :pswitch_170
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 228
    sget-object p3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, p1, p3}, Landroid/permission/IPermissionController$Stub;->getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 231
    goto :goto_1ad

    .line 210
    :pswitch_187
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 218
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/android/internal/infra/AndroidFuture;

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/permission/IPermissionController$Stub;->revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 221
    nop

    .line 406
    :goto_1ad
    return v1

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_187
        :pswitch_170
        :pswitch_159
        :pswitch_13e
        :pswitch_12b
        :pswitch_11b
        :pswitch_103
        :pswitch_eb
        :pswitch_cf
        :pswitch_bf
        :pswitch_af
        :pswitch_9b
        :pswitch_87
        :pswitch_73
        :pswitch_5f
        :pswitch_4f
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
