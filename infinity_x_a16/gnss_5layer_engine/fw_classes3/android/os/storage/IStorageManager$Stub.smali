.class public abstract Landroid/os/storage/IStorageManager$Stub;
.super Landroid/os/Binder;
.source "IStorageManager.java"

# interfaces
.implements Landroid/os/storage/IStorageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageManager"

.field static final blacklist TRANSACTION_abortChanges:I = 0x58

.field static final greylist-max-o TRANSACTION_abortIdleMaintenance:I = 0x51

.field static final greylist-max-o TRANSACTION_allocateBytes:I = 0x4f

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x3c

.field static final blacklist TRANSACTION_commitChanges:I = 0x54

.field static final blacklist TRANSACTION_disableAppDataIsolation:I = 0x5b

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x5a

.field static final greylist-max-o TRANSACTION_forgetAllVolumes:I = 0x39

.field static final greylist-max-o TRANSACTION_forgetVolume:I = 0x38

.field static final greylist-max-o TRANSACTION_format:I = 0x32

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x49

.field static final greylist-max-o TRANSACTION_getAllocatableBytes:I = 0x4e

.field static final greylist-max-o TRANSACTION_getCacheQuotaBytes:I = 0x4c

.field static final greylist-max-o TRANSACTION_getCacheSizeBytes:I = 0x4d

.field static final blacklist TRANSACTION_getCloudMediaProvider:I = 0x62

.field static final greylist-max-o TRANSACTION_getDisks:I = 0x2d

.field static final blacklist TRANSACTION_getExternalStorageMountMode:I = 0x5f

.field static final blacklist TRANSACTION_getInternalStorageBlockDeviceSize:I = 0x63

.field static final blacklist TRANSACTION_getInternalStorageRemainingLifetime:I = 0x64

.field static final blacklist TRANSACTION_getManageSpaceActivityIntent:I = 0x5c

.field static final greylist-max-o TRANSACTION_getMountedObbPath:I = 0x19

.field static final greylist-max-o TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final greylist-max-o TRANSACTION_getVolumeList:I = 0x1e

.field static final greylist-max-o TRANSACTION_getVolumeRecords:I = 0x2f

.field static final greylist-max-o TRANSACTION_getVolumes:I = 0x2e

.field static final blacklist TRANSACTION_isAppIoBlocked:I = 0x60

.field static final blacklist TRANSACTION_isCeStorageUnlocked:I = 0x42

.field static final greylist-max-o TRANSACTION_isObbMounted:I = 0x18

.field static final greylist-max-o TRANSACTION_lastMaintenance:I = 0x2a

.field static final blacklist TRANSACTION_lockCeStorage:I = 0x41

.field static final greylist-max-o TRANSACTION_mkdirs:I = 0x23

.field static final greylist-max-o TRANSACTION_mount:I = 0x30

.field static final greylist-max-o TRANSACTION_mountObb:I = 0x16

.field static final greylist-max-o TRANSACTION_mountProxyFileDescriptorBridge:I = 0x4a

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x57

.field static final blacklist TRANSACTION_notifyAppIoBlocked:I = 0x5d

.field static final blacklist TRANSACTION_notifyAppIoResumed:I = 0x5e

.field static final greylist-max-o TRANSACTION_openProxyFileDescriptor:I = 0x4b

.field static final greylist-max-o TRANSACTION_partitionMixed:I = 0x35

.field static final greylist-max-o TRANSACTION_partitionPrivate:I = 0x34

.field static final greylist-max-o TRANSACTION_partitionPublic:I = 0x33

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x1

.field static final greylist-max-o TRANSACTION_runIdleMaintenance:I = 0x50

.field static final greylist-max-o TRANSACTION_runMaintenance:I = 0x2b

.field static final blacklist TRANSACTION_setCloudMediaProvider:I = 0x61

.field static final greylist-max-o TRANSACTION_setDebugFlags:I = 0x3d

.field static final greylist-max-o TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final greylist-max-o TRANSACTION_setVolumeNickname:I = 0x36

.field static final greylist-max-o TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x14

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x56

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x55

.field static final greylist-max-o TRANSACTION_unmount:I = 0x31

.field static final greylist-max-o TRANSACTION_unmountObb:I = 0x17

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x2


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    nop

    .line 279
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/storage/IStorageManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 280
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 268
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 269
    const-string v0, "android.os.storage.IStorageManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 270
    if-eqz p1, :cond_d

    .line 273
    iput-object p1, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 274
    return-void

    .line 271
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    .registers 3

    .line 287
    if-nez p0, :cond_4

    .line 288
    const/4 p0, 0x0

    return-object p0

    .line 290
    :cond_4
    const-string v0, "android.os.storage.IStorageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/storage/IStorageManager;

    if-eqz v1, :cond_13

    .line 292
    check-cast v0, Landroid/os/storage/IStorageManager;

    return-object v0

    .line 294
    :cond_13
    new-instance v0, Landroid/os/storage/IStorageManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/storage/IStorageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 303
    packed-switch p0, :pswitch_data_be

    .line 527
    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    .line 523
    :pswitch_5
    const-string p0, "getInternalStorageRemainingLifetime"

    return-object p0

    .line 519
    :pswitch_8
    const-string p0, "getInternalStorageBlockDeviceSize"

    return-object p0

    .line 515
    :pswitch_b
    const-string p0, "getCloudMediaProvider"

    return-object p0

    .line 511
    :pswitch_e
    const-string/jumbo p0, "setCloudMediaProvider"

    return-object p0

    .line 507
    :pswitch_12
    const-string p0, "isAppIoBlocked"

    return-object p0

    .line 503
    :pswitch_15
    const-string p0, "getExternalStorageMountMode"

    return-object p0

    .line 499
    :pswitch_18
    const-string/jumbo p0, "notifyAppIoResumed"

    return-object p0

    .line 495
    :pswitch_1c
    const-string/jumbo p0, "notifyAppIoBlocked"

    return-object p0

    .line 491
    :pswitch_20
    const-string p0, "getManageSpaceActivityIntent"

    return-object p0

    .line 487
    :pswitch_23
    const-string p0, "disableAppDataIsolation"

    return-object p0

    .line 483
    :pswitch_26
    const-string p0, "fixupAppDir"

    return-object p0

    .line 479
    :pswitch_29
    const-string p0, "abortChanges"

    return-object p0

    .line 475
    :pswitch_2c
    const-string p0, "needsCheckpoint"

    return-object p0

    .line 471
    :pswitch_2f
    const-string/jumbo p0, "startCheckpoint"

    return-object p0

    .line 467
    :pswitch_33
    const-string/jumbo p0, "supportsCheckpoint"

    return-object p0

    .line 463
    :pswitch_37
    const-string p0, "commitChanges"

    return-object p0

    .line 459
    :pswitch_3a
    const-string p0, "abortIdleMaintenance"

    return-object p0

    .line 455
    :pswitch_3d
    const-string/jumbo p0, "runIdleMaintenance"

    return-object p0

    .line 451
    :pswitch_41
    const-string p0, "allocateBytes"

    return-object p0

    .line 447
    :pswitch_44
    const-string p0, "getAllocatableBytes"

    return-object p0

    .line 443
    :pswitch_47
    const-string p0, "getCacheSizeBytes"

    return-object p0

    .line 439
    :pswitch_4a
    const-string p0, "getCacheQuotaBytes"

    return-object p0

    .line 435
    :pswitch_4d
    const-string/jumbo p0, "openProxyFileDescriptor"

    return-object p0

    .line 431
    :pswitch_51
    const-string p0, "mountProxyFileDescriptorBridge"

    return-object p0

    .line 427
    :pswitch_54
    const-string p0, "fstrim"

    return-object p0

    .line 423
    :pswitch_57
    const-string p0, "isCeStorageUnlocked"

    return-object p0

    .line 419
    :pswitch_5a
    const-string p0, "lockCeStorage"

    return-object p0

    .line 415
    :pswitch_5d
    const-string/jumbo p0, "setDebugFlags"

    return-object p0

    .line 411
    :pswitch_61
    const-string p0, "benchmark"

    return-object p0

    .line 407
    :pswitch_64
    const-string/jumbo p0, "setPrimaryStorageUuid"

    return-object p0

    .line 403
    :pswitch_68
    const-string p0, "getPrimaryStorageUuid"

    return-object p0

    .line 399
    :pswitch_6b
    const-string p0, "forgetAllVolumes"

    return-object p0

    .line 395
    :pswitch_6e
    const-string p0, "forgetVolume"

    return-object p0

    .line 391
    :pswitch_71
    const-string/jumbo p0, "setVolumeUserFlags"

    return-object p0

    .line 387
    :pswitch_75
    const-string/jumbo p0, "setVolumeNickname"

    return-object p0

    .line 383
    :pswitch_79
    const-string/jumbo p0, "partitionMixed"

    return-object p0

    .line 379
    :pswitch_7d
    const-string/jumbo p0, "partitionPrivate"

    return-object p0

    .line 375
    :pswitch_81
    const-string/jumbo p0, "partitionPublic"

    return-object p0

    .line 371
    :pswitch_85
    const-string p0, "format"

    return-object p0

    .line 367
    :pswitch_88
    const-string/jumbo p0, "unmount"

    return-object p0

    .line 363
    :pswitch_8c
    const-string p0, "mount"

    return-object p0

    .line 359
    :pswitch_8f
    const-string p0, "getVolumeRecords"

    return-object p0

    .line 355
    :pswitch_92
    const-string p0, "getVolumes"

    return-object p0

    .line 351
    :pswitch_95
    const-string p0, "getDisks"

    return-object p0

    .line 347
    :pswitch_98
    const-string/jumbo p0, "runMaintenance"

    return-object p0

    .line 343
    :pswitch_9c
    const-string p0, "lastMaintenance"

    return-object p0

    .line 339
    :pswitch_9f
    const-string p0, "mkdirs"

    return-object p0

    .line 335
    :pswitch_a2
    const-string p0, "getVolumeList"

    return-object p0

    .line 331
    :pswitch_a5
    const-string p0, "getMountedObbPath"

    return-object p0

    .line 327
    :pswitch_a8
    const-string p0, "isObbMounted"

    return-object p0

    .line 323
    :pswitch_ab
    const-string/jumbo p0, "unmountObb"

    return-object p0

    .line 319
    :pswitch_af
    const-string p0, "mountObb"

    return-object p0

    .line 315
    :pswitch_b2
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 311
    :pswitch_b6
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    .line 307
    :pswitch_ba
    const-string/jumbo p0, "registerListener"

    return-object p0

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_b6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b2
        :pswitch_3
        :pswitch_af
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9c
        :pswitch_98
        :pswitch_3
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_88
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5a
        :pswitch_57
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_3
        :pswitch_3
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_3
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
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

    .line 298
    return-object p0
.end method

.method protected blacklist benchmark_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2176
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2177
    return-void
.end method

.method protected blacklist forgetAllVolumes_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2165
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2166
    return-void
.end method

.method protected blacklist forgetVolume_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2160
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2161
    return-void
.end method

.method protected blacklist format_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2130
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2131
    return-void
.end method

.method protected blacklist fstrim_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2192
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2193
    return-void
.end method

.method protected blacklist getExternalStorageMountMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2219
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2220
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2229
    const/16 v0, 0x63

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 534
    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist lockCeStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2186
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2187
    return-void
.end method

.method protected blacklist mount_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2120
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2121
    return-void
.end method

.method protected blacklist needsCheckpoint_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2208
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2209
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    nop

    .line 539
    const-string v3, "android.os.storage.IStorageManager"

    const/4 v6, 0x1

    if-lt p1, v6, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 540
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 543
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    return v6

    .line 546
    :cond_17
    packed-switch p1, :pswitch_data_414

    .line 1107
    :pswitch_1a
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1100
    :pswitch_1f
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getInternalStorageRemainingLifetime()I

    move-result v0

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    goto/16 :goto_413

    .line 1093
    :pswitch_2b
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getInternalStorageBlockDeviceSize()J

    move-result-wide v0

    .line 1094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1096
    goto/16 :goto_413

    .line 1086
    :pswitch_37
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1089
    goto/16 :goto_413

    .line 1078
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->setCloudMediaProvider(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    goto/16 :goto_413

    .line 1062
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1070
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/storage/IStorageManager$Stub;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result v0

    .line 1071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1073
    goto/16 :goto_413

    .line 1050
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {p0, v1, v3}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    .line 1055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    goto/16 :goto_413

    .line 1035
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoResumed(Ljava/lang/String;III)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    goto/16 :goto_413

    .line 1020
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1028
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoBlocked(Ljava/lang/String;III)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    goto/16 :goto_413

    .line 1008
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1012
    invoke-virtual {p0, v1, v3}, Landroid/os/storage/IStorageManager$Stub;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1015
    goto/16 :goto_413

    .line 995
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/storage/IStorageManager$Stub;->disableAppDataIsolation(Ljava/lang/String;II)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    goto/16 :goto_413

    .line 986
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->fixupAppDir(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    goto/16 :goto_413

    .line 975
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {p0, v1, v3}, Landroid/os/storage/IStorageManager$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    goto/16 :goto_413

    .line 967
    :pswitch_10e
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint()Z

    move-result v0

    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 970
    goto/16 :goto_413

    .line 959
    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->startCheckpoint(I)V

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    goto/16 :goto_413

    .line 951
    :pswitch_129
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 952
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 954
    goto/16 :goto_413

    .line 945
    :pswitch_135
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->commitChanges()V

    .line 946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_413

    .line 939
    :pswitch_13d
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->abortIdleMaintenance()V

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    goto/16 :goto_413

    .line 933
    :pswitch_145
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->runIdleMaintenance()V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    goto/16 :goto_413

    .line 919
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_413

    .line 905
    :pswitch_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 909
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 914
    goto/16 :goto_413

    .line 893
    :pswitch_184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v0

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 900
    goto/16 :goto_413

    .line 881
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v0

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 888
    goto/16 :goto_413

    .line 867
    :pswitch_1b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 869
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 876
    goto/16 :goto_413

    .line 859
    :pswitch_1cd
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v0

    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 862
    goto/16 :goto_413

    .line 849
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_413

    .line 839
    :pswitch_1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->isCeStorageUnlocked(I)Z

    move-result v0

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 844
    goto/16 :goto_413

    .line 830
    :pswitch_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->lockCeStorage(I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto/16 :goto_413

    .line 819
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags(II)V

    .line 824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    goto/16 :goto_413

    .line 808
    :pswitch_225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    goto/16 :goto_413

    .line 797
    :pswitch_23c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v2

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    goto/16 :goto_413

    .line 789
    :pswitch_253
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 792
    goto/16 :goto_413

    .line 783
    :pswitch_25f
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes()V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_413

    .line 775
    :pswitch_267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_413

    .line 762
    :pswitch_276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_413

    .line 751
    :pswitch_28d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_413

    .line 740
    :pswitch_2a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    goto/16 :goto_413

    .line 731
    :pswitch_2b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    goto/16 :goto_413

    .line 722
    :pswitch_2c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    goto/16 :goto_413

    .line 713
    :pswitch_2d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 715
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->format(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    goto/16 :goto_413

    .line 704
    :pswitch_2e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->unmount(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    goto/16 :goto_413

    .line 695
    :pswitch_2ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->mount(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    goto/16 :goto_413

    .line 685
    :pswitch_2fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 690
    goto/16 :goto_413

    .line 675
    :pswitch_311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 680
    goto/16 :goto_413

    .line 667
    :pswitch_324
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 670
    goto/16 :goto_413

    .line 661
    :pswitch_330
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance()V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    goto/16 :goto_413

    .line 654
    :pswitch_338
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->lastMaintenance()J

    move-result-wide v0

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 657
    goto/16 :goto_413

    .line 644
    :pswitch_344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    goto/16 :goto_413

    .line 630
    :pswitch_357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 639
    goto/16 :goto_413

    .line 620
    :pswitch_372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    goto/16 :goto_413

    .line 610
    :pswitch_385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v0

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    goto/16 :goto_413

    .line 595
    :pswitch_398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v3

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/storage/IStorageManager$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto :goto_413

    .line 578
    :pswitch_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v3

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 586
    sget-object v5, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ObbInfo;

    .line 587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    goto :goto_413

    .line 569
    :pswitch_3dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageShutdownObserver;

    move-result-object v1

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto :goto_413

    .line 560
    :pswitch_3ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v1

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto :goto_413

    .line 551
    :pswitch_401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v1

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v1}, Landroid/os/storage/IStorageManager$Stub;->registerListener(Landroid/os/storage/IStorageEventListener;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    nop

    .line 1110
    :goto_413
    return v6

    :pswitch_data_414
    .packed-switch 0x1
        :pswitch_401
        :pswitch_3ef
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_3dd
        :pswitch_1a
        :pswitch_3b6
        :pswitch_398
        :pswitch_385
        :pswitch_372
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_357
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_344
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_338
        :pswitch_330
        :pswitch_1a
        :pswitch_324
        :pswitch_311
        :pswitch_2fe
        :pswitch_2ef
        :pswitch_2e0
        :pswitch_2d1
        :pswitch_2c2
        :pswitch_2b3
        :pswitch_2a0
        :pswitch_28d
        :pswitch_276
        :pswitch_267
        :pswitch_25f
        :pswitch_253
        :pswitch_23c
        :pswitch_225
        :pswitch_212
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_203
        :pswitch_1f0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1d9
        :pswitch_1cd
        :pswitch_1b2
        :pswitch_19b
        :pswitch_184
        :pswitch_169
        :pswitch_14d
        :pswitch_145
        :pswitch_13d
        :pswitch_1a
        :pswitch_1a
        :pswitch_135
        :pswitch_129
        :pswitch_11a
        :pswitch_10e
        :pswitch_fb
        :pswitch_1a
        :pswitch_ec
        :pswitch_d5
        :pswitch_be
        :pswitch_a3
        :pswitch_88
        :pswitch_71
        :pswitch_52
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist partitionMixed_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2145
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2146
    return-void
.end method

.method protected blacklist partitionPrivate_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2140
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2141
    return-void
.end method

.method protected blacklist partitionPublic_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2136
    return-void
.end method

.method protected blacklist runMaintenance_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2113
    return-void
.end method

.method protected blacklist setDebugFlags_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2181
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2182
    return-void
.end method

.method protected blacklist setPrimaryStorageUuid_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2171
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2172
    return-void
.end method

.method protected blacklist setVolumeNickname_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2150
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2151
    return-void
.end method

.method protected blacklist setVolumeUserFlags_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2155
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2156
    return-void
.end method

.method protected blacklist shutdown_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2101
    return-void
.end method

.method protected blacklist unmount_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2125
    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 2126
    return-void
.end method
