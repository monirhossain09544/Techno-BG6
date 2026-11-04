.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r AID_APP_END:I = 0x4e1f

.field public static final greylist-max-r AID_APP_START:I = 0x2710

.field public static final greylist-max-r AID_CACHE_GID_START:I = 0x4e20

.field public static final greylist-max-r AID_ROOT:I = 0x0

.field public static final greylist-max-r AID_SHARED_GID_START:I = 0xc350

.field public static final whitelist ALL:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist CACHED_USER_HANDLES:[Landroid/os/UserHandle;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CURRENT:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final greylist-max-r ERR_GID:I = -0x1

.field public static final blacklist MAX_EXTRA_USER_HANDLE_CACHE_SIZE:I = 0x20

.field public static final blacklist MAX_SECONDARY_USER_ID:I = 0x53e1

.field public static final blacklist MIN_SECONDARY_USER_ID:I = 0xa

.field public static final greylist MU_ENABLED:Z = true

.field private static final blacklist NULL:Landroid/os/UserHandle;

.field private static final blacklist NUM_CACHED_USERS:I = 0x8

.field public static final greylist OWNER:Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist PER_USER_RANGE:I = 0x186a0

.field public static final whitelist SYSTEM:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist USER_ALL:I = -0x1

.field public static final greylist USER_CURRENT:I = -0x2

.field public static final greylist USER_CURRENT_OR_SELF:I = -0x3

.field public static final greylist USER_NULL:I = -0x2710

.field public static final greylist USER_OWNER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r USER_SERIAL_SYSTEM:I

.field public static final greylist USER_SYSTEM:I

.field public static final blacklist sExtraUserHandleCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist mHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 58
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 67
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 79
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 86
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, -0x2710

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    .line 104
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 117
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 149
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    .line 173
    nop

    :goto_3e
    sget-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v0, v0

    if-ge v1, v0, :cond_51

    .line 174
    sget-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    new-instance v2, Landroid/os/UserHandle;

    add-int/lit8 v3, v1, 0xa

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    aput-object v2, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 668
    :cond_51
    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 2

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    .line 597
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    .line 693
    return-void
.end method

.method public static whitelist formatUid(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-p formatUid(Ljava/io/PrintWriter;I)V
    .registers 4

    .line 519
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 520
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4e

    .line 522
    :cond_8
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 523
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 524
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 525
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 526
    const v0, 0x182b8

    if-le p1, v0, :cond_2d

    .line 527
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 528
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4e

    .line 530
    :cond_2d
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    const v0, 0x15f90

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4e

    .line 533
    :cond_3a
    if-lt p1, v0, :cond_46

    .line 534
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 535
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4e

    .line 537
    :cond_46
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 538
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 541
    :goto_4e
    return-void
.end method

.method public static greylist-max-o formatUid(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 472
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 473
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 475
    :cond_8
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 478
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 479
    const v0, 0x182b8

    if-le p1, v0, :cond_2d

    .line 480
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 483
    :cond_2d
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const v0, 0x15f90

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 486
    :cond_3a
    if-lt p1, v0, :cond_46

    .line 487
    const/16 v1, 0x61

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 490
    :cond_46
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 494
    :goto_4e
    return-void
.end method

.method public static blacklist fromUserHandles(Ljava/util/List;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)[I"
        }
    .end annotation

    .line 310
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 311
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 312
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    aput v3, v1, v2

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 314
    :cond_18
    return-object v1
.end method

.method public static whitelist getAppId(I)I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 406
    const v0, 0x186a0

    rem-int/2addr p0, v0

    return p0
.end method

.method public static greylist getAppIdFromSharedAppGid(I)I
    .registers 2

    .line 444
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x2710

    const v0, 0xc350

    sub-int/2addr p0, v0

    .line 446
    if-ltz p0, :cond_10

    if-lt p0, v0, :cond_f

    goto :goto_10

    .line 449
    :cond_f
    return p0

    .line 447
    :cond_10
    :goto_10
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist-max-o getCacheAppGid(I)I
    .registers 2

    .line 454
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/UserHandle;->getCacheAppGid(II)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o getCacheAppGid(II)I
    .registers 4

    .line 459
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_10

    const/16 v1, 0x4e1f

    if-gt p1, v1, :cond_10

    .line 460
    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x4e20

    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0

    .line 462
    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist-max-o getCallingAppId()I
    .registers 1

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static greylist getCallingUserId()I
    .registers 1

    .line 299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSharedAppGid(I)I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 424
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/UserHandle;->getSharedAppGid(II)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o getSharedAppGid(II)I
    .registers 3

    .line 429
    const/16 p0, 0x2710

    if-lt p1, p0, :cond_e

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_e

    .line 430
    sub-int/2addr p1, p0

    const p0, 0xc350

    add-int/2addr p1, p0

    return p1

    .line 431
    :cond_e
    if-ltz p1, :cond_13

    if-gt p1, p0, :cond_13

    .line 432
    return p1

    .line 434
    :cond_13
    const/4 p0, -0x1

    return p0
.end method

.method public static greylist getUid(II)I
    .registers 3

    .line 381
    if-ltz p1, :cond_9

    .line 382
    const v0, 0x186a0

    mul-int/2addr p0, v0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    .line 384
    :cond_9
    return p1
.end method

.method public static greylist-max-o getUserGid(I)I
    .registers 2

    .line 414
    const/16 v0, 0x270d

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static whitelist getUserHandleForUid(I)Landroid/os/UserHandle;
    .registers 1

    .line 279
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getUserHandleFromExtraCache(I)Landroid/os/UserHandle;
    .registers 5

    .line 359
    sget-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 360
    :try_start_3
    sget-object v1, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 361
    if-eqz v1, :cond_f

    .line 362
    monitor-exit v0

    return-object v1

    .line 364
    :cond_f
    sget-object v1, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_27

    .line 365
    sget-object v1, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 366
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 365
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 368
    :cond_27
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 369
    sget-object v2, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    monitor-exit v0

    return-object v1

    .line 371
    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public static greylist getUserId(I)I
    .registers 2

    .line 290
    const v0, 0x186a0

    div-int/2addr p0, v0

    return p0
.end method

.method public static greylist isApp(I)Z
    .registers 3

    .line 244
    const/4 v0, 0x0

    if-lez p0, :cond_11

    .line 245
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 246
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_10

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 248
    :cond_11
    return v0
.end method

.method public static greylist-max-o isCore(I)Z
    .registers 3

    .line 257
    const/4 v0, 0x0

    if-ltz p0, :cond_d

    .line 258
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 259
    const/16 v1, 0x2710

    if-ge p0, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    .line 261
    :cond_d
    return v0
.end method

.method public static greylist isIsolated(I)Z
    .registers 1

    .line 229
    if-lez p0, :cond_7

    .line 230
    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    move-result p0

    return p0

    .line 232
    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isSameApp(II)Z
    .registers 2

    .line 220
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static greylist-max-o isSameUser(II)Z
    .registers 2

    .line 207
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static blacklist isSharedAppGid(I)Z
    .registers 2

    .line 270
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static whitelist myUserId()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 567
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist of(I)Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 332
    if-nez p0, :cond_5

    .line 333
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object p0

    .line 336
    :cond_5
    packed-switch p0, :pswitch_data_2e

    .line 346
    const/16 v0, 0xa

    if-lt p0, v0, :cond_21

    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p0, v1, :cond_21

    .line 348
    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 338
    :pswitch_18
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object p0

    .line 341
    :pswitch_1b
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object p0

    .line 344
    :pswitch_1e
    sget-object p0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-object p0

    .line 350
    :cond_21
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_28

    .line 351
    sget-object p0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    return-object p0

    .line 353
    :cond_28
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleFromExtraCache(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch -0x3
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static greylist-max-o parseUserArg(Ljava/lang/String;)I
    .registers 4

    .line 546
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 547
    const/4 p0, -0x1

    goto :goto_3b

    .line 548
    :cond_a
    const-string v0, "current"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_3a

    .line 552
    :cond_1b
    :try_start_1b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1f} :catch_20

    .line 555
    goto :goto_3b

    .line 553
    :catch_20
    move-exception v0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_3a
    :goto_3a
    const/4 p0, -0x2

    .line 557
    :goto_3b
    return p0
.end method

.method public static whitelist readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .registers 2

    .line 664
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 665
    const/16 v0, -0x2710

    if-eq p0, v0, :cond_e

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public static blacklist toUserHandles([I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    const/4 v1, 0x0

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 322
    aget v2, p0, v1

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 324
    :cond_16
    return-object v0
.end method

.method public static whitelist writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .registers 3

    .line 645
    if-eqz p0, :cond_7

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 648
    :cond_7
    const/16 p0, -0x2710

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    :goto_c
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 615
    instance-of v0, p1, Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 616
    check-cast p1, Landroid/os/UserHandle;

    .line 617
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    iget p1, p1, Landroid/os/UserHandle;->mHandle:I

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 619
    :cond_f
    return v1
.end method

.method public whitelist getIdentifier()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 605
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist getUid(I)I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 397
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 624
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist isOwner()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSystem()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 590
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 632
    iget p2, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    return-void
.end method
