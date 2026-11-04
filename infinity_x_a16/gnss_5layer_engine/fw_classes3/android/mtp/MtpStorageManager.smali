.class public Landroid/mtp/MtpStorageManager;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpStorageManager$MtpNotifier;,
        Landroid/mtp/MtpStorageManager$MtpObject;,
        Landroid/mtp/MtpStorageManager$MtpObjectObserver;,
        Landroid/mtp/MtpStorageManager$MtpOperation;,
        Landroid/mtp/MtpStorageManager$MtpObjectState;
    }
.end annotation


# static fields
.field private static final greylist-max-o IN_IGNORED:I = 0x8000

.field private static final greylist-max-o IN_ISDIR:I = 0x40000000

.field private static final greylist-max-o IN_ONLYDIR:I = 0x1000000

.field private static final greylist-max-o IN_Q_OVERFLOW:I = 0x4000

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static greylist-max-o sDebug:Z


# instance fields
.field private volatile greylist-max-o mCheckConsistency:Z

.field private greylist-max-o mConsistencyThread:Ljava/lang/Thread;

.field private greylist-max-o mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

.field private greylist-max-o mNextObjectId:I

.field private greylist-max-o mNextStorageId:I

.field private greylist-max-o mObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSubdirectories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$UnbKBGmLOBDQA2Y79rPJULPQTU8(Landroid/mtp/MtpStorageManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleAddedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleChangedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->handleChangedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRemovedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpNotifier;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    .line 391
    iput-object p2, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 392
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 393
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    .line 394
    const/4 p1, 0x1

    iput p1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 395
    iput p1, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    .line 397
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    .line 398
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Landroid/mtp/MtpStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Landroid/mtp/MtpStorageManager$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpStorageManager;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    .line 412
    iget-boolean p1, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz p1, :cond_32

    .line 413
    iget-object p1, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 414
    :cond_32
    return-void
.end method

.method private declared-synchronized greylist-max-o addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 10

    monitor-enter p0

    .line 652
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_52

    if-eq v0, p1, :cond_14

    .line 654
    monitor-exit p0

    return-object v1

    .line 655
    :cond_14
    :try_start_14
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_52

    if-eqz v0, :cond_1c

    .line 657
    monitor-exit p0

    return-object v1

    .line 659
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_52

    if-nez v0, :cond_30

    .line 661
    monitor-exit p0

    return-object v1

    .line 664
    :cond_30
    :try_start_30
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v2

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmStorage(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorage;

    move-result-object v3

    move-object v4, p1

    move-object v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 665
    iget-object p1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {v4, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    :try_end_50
    .catchall {:try_start_30 .. :try_end_50} :catchall_52

    .line 667
    monitor-exit p0

    return-object v0

    .line 651
    :catchall_52
    move-exception v0

    move-object p1, v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_52

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 5

    monitor-enter p0

    .line 1262
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1263
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1264
    if-eqz p2, :cond_21

    .line 1265
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetId(Landroid/mtp/MtpStorageManager$MtpObject;I)V

    .line 1266
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    :cond_21
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1269
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1270
    invoke-direct {p0, v0, p2}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_47

    if-nez v0, :cond_2f

    .line 1271
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1272
    :cond_44
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1261
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    .registers 4

    monitor-enter p0

    .line 1252
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1253
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1254
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1255
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1256
    invoke-direct {p0, v0, p2}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2a

    goto :goto_17

    .line 1258
    :cond_27
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1251
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 4

    monitor-enter p0

    .line 1238
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1239
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1240
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1241
    sget-object p1, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p2, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 1242
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1237
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 6

    monitor-enter p0

    .line 1159
    :try_start_1
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_55

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_58

    .line 1193
    monitor-exit p0

    return v1

    .line 1184
    :pswitch_f
    :try_start_f
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_55

    if-nez p3, :cond_17

    .line 1185
    monitor-exit p0

    return v1

    .line 1186
    :cond_17
    if-eqz p2, :cond_52

    .line 1188
    :try_start_19
    iget-object p2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_52

    .line 1173
    :pswitch_23
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1174
    if-nez p2, :cond_52

    .line 1175
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    .line 1177
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p3
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_55

    if-nez p3, :cond_36

    .line 1178
    monitor-exit p0

    return v1

    .line 1179
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    .line 1180
    goto :goto_52

    .line 1162
    :pswitch_42
    if-eqz p2, :cond_4a

    .line 1164
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_52

    .line 1167
    :cond_4a
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p1
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_55

    if-nez p1, :cond_52

    .line 1168
    monitor-exit p0

    return v1

    .line 1195
    :cond_52
    :goto_52
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1158
    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p1

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_42
        :pswitch_23
        :pswitch_f
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 11

    monitor-enter p0

    .line 1276
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    .line 1277
    :try_start_5
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    :cond_12
    nop

    .line 1279
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    .line 1280
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1281
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_48

    .line 1282
    invoke-direct {p0, v4, p2, p3}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v4

    if-eqz v4, :cond_47

    if-eqz v3, :cond_47

    move v3, v2

    goto :goto_48

    :cond_47
    move v3, v1

    .line 1283
    :cond_48
    :goto_48
    goto :goto_29

    .line 1279
    :cond_49
    move v3, v2

    .line 1285
    :cond_4a
    if-nez p2, :cond_51

    if-nez p3, :cond_4f

    goto :goto_51

    :cond_4f
    move p3, v1

    goto :goto_52

    :cond_51
    :goto_51
    move p3, v2

    :goto_52
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p1
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_5d

    if-eqz p1, :cond_5b

    if-eqz v3, :cond_5b

    move v1, v2

    .line 1286
    :cond_5b
    monitor-exit p0

    return v1

    .line 1275
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 6

    monitor-enter p0

    .line 1200
    :try_start_1
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_53

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_56

    .line 1232
    monitor-exit p0

    return v1

    .line 1223
    :pswitch_f
    :try_start_f
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_53

    if-nez p3, :cond_17

    .line 1224
    monitor-exit p0

    return v1

    .line 1225
    :cond_17
    if-nez p2, :cond_50

    .line 1227
    :try_start_19
    iget-object p2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_50

    .line 1212
    :pswitch_23
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1213
    if-eqz p2, :cond_50

    .line 1215
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    .line 1216
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p3
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_53

    if-nez p3, :cond_36

    .line 1217
    monitor-exit p0

    return v1

    .line 1218
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    .line 1219
    goto :goto_50

    .line 1202
    :pswitch_42
    if-eqz p2, :cond_4a

    .line 1204
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_50

    .line 1207
    :cond_4a
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_53

    .line 1209
    nop

    .line 1234
    :cond_50
    :goto_50
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1199
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_42
        :pswitch_23
        :pswitch_f
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 7

    monitor-enter p0

    .line 1247
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    :try_start_8
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p1

    .line 1248
    invoke-direct {p0, p2, p3, p3}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_18

    if-eqz p2, :cond_15

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    monitor-exit p0

    return v0

    .line 1246
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private declared-synchronized greylist-max-o getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 612
    const/4 v0, 0x0

    if-eqz p1, :cond_8d

    :try_start_4
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_8d

    .line 616
    :cond_c
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 617
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 624
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 625
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Observer is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_23
    new-instance v2, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {v2, p0, p1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 627
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_b5

    .line 628
    :try_start_32
    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_71
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_32 .. :try_end_36} :catch_71
    .catchall {:try_start_32 .. :try_end_36} :catchall_b5

    .line 629
    :try_start_36
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 630
    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 630
    invoke-direct {p0, p1, v4, v3}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_65

    .line 632
    goto :goto_3a

    .line 633
    :cond_5a
    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_71
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5c .. :try_end_5f} :catch_71
    .catchall {:try_start_5c .. :try_end_5f} :catchall_b5

    .line 638
    :cond_5f
    nop

    .line 639
    const/4 v0, 0x1

    :try_start_61
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_b5

    goto :goto_87

    .line 628
    :catchall_65
    move-exception v2

    if-eqz v1, :cond_70

    :try_start_68
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v1

    :try_start_6d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw v2
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_71} :catch_71
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_6d .. :try_end_71} :catch_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_b5

    .line 633
    :catch_71
    move-exception v1

    .line 634
    :try_start_72
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 636
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_b5

    .line 637
    monitor-exit p0

    return-object v0

    .line 641
    :cond_87
    :goto_87
    :try_start_87
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_b5

    monitor-exit p0

    return-object p1

    .line 613
    :cond_8d
    :goto_8d
    :try_start_8d
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find children of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_a0

    const-string/jumbo p1, "null"

    goto :goto_a8

    :cond_a0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_a8
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_8d .. :try_end_b3} :catchall_b5

    .line 614
    monitor-exit p0

    return-object v0

    .line 611
    :catchall_b5
    move-exception p1

    :try_start_b6
    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p1
.end method

.method private greylist-max-o getNextObjectId()I
    .registers 6

    .line 544
    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 546
    iget v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 547
    return v0
.end method

.method private greylist-max-o getNextStorageId()I
    .registers 3

    .line 551
    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    return v0
.end method

.method private declared-synchronized blacklist getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            "IZ)Z"
        }
    .end annotation

    monitor-enter p0

    .line 585
    :try_start_1
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4a

    .line 586
    if-nez p2, :cond_a

    .line 587
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 589
    :cond_a
    :try_start_a
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 590
    if-eqz p3, :cond_22

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    if-ne v2, p3, :cond_25

    .line 591
    :cond_22
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_25
    goto :goto_e

    .line 594
    :cond_26
    nop

    .line 595
    const/4 v0, 0x1

    if-eqz p4, :cond_48

    .line 597
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p4, v0

    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 598
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 599
    invoke-direct {p0, p1, v1, p3, v0}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z

    move-result v1
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_4a

    and-int/2addr p4, v1

    .line 600
    :cond_46
    goto :goto_2f

    .line 597
    :cond_47
    move v0, p4

    .line 602
    :cond_48
    monitor-exit p0

    return v0

    .line 584
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method private declared-synchronized greylist-max-o handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .registers 9

    monitor-enter p0

    .line 705
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 706
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 707
    if-eqz v1, :cond_a1

    .line 708
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object p1

    .line 709
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v0

    .line 710
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    if-eq v2, p3, :cond_37

    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq p1, v2, :cond_37

    .line 711
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent directory info! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_37
    invoke-static {v1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetDir(Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 713
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_188

    .line 726
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    goto :goto_52

    .line 719
    :pswitch_44
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 720
    goto :goto_72

    .line 716
    :pswitch_4a
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_184

    .line 717
    goto :goto_72

    .line 724
    :pswitch_50
    monitor-exit p0

    return-void

    .line 726
    :goto_52
    :try_start_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state in add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_72
    sget-boolean p2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz p2, :cond_a0

    .line 729
    sget-object p2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " transitioned to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " in op "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_a0
    goto :goto_b0

    .line 731
    :cond_a1
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 732
    if-eqz v1, :cond_15f

    .line 733
    iget-object p1, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectAdded(I)V

    .line 740
    :goto_b0
    if-eqz p3, :cond_15d

    .line 742
    sget-object p1, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;
    :try_end_b4
    .catchall {:try_start_52 .. :try_end_b4} :catchall_184

    if-ne v0, p1, :cond_b8

    .line 743
    monitor-exit p0

    return-void

    .line 746
    :cond_b8
    :try_start_b8
    sget-object p1, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v0, p1, :cond_c4

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result p1
    :try_end_c0
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_184

    if-nez p1, :cond_c4

    .line 747
    monitor-exit p0

    return-void

    .line 749
    :cond_c4
    :try_start_c4
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 750
    sget-object p1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string p2, "Observer is not null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_184

    .line 751
    monitor-exit p0

    return-void

    .line 753
    :cond_d3
    :try_start_d3
    new-instance p1, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {p1, p0, v1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 754
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V

    .line 755
    const/4 p1, 0x1

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    :try_end_e6
    .catchall {:try_start_d3 .. :try_end_e6} :catchall_184

    .line 759
    :try_start_e6
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p1
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ee} :catch_148
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_e6 .. :try_end_ee} :catch_148
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_184

    .line 760
    :try_start_ee
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_136

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/file/Path;

    .line 761
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_122

    .line 762
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manually handling event for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_122
    invoke-interface {p3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-interface {p3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p3

    .line 763
    invoke-direct {p0, v1, v0, p3}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    :try_end_135
    .catchall {:try_start_ee .. :try_end_135} :catchall_13c

    .line 765
    goto :goto_f2

    .line 766
    :cond_136
    if-eqz p1, :cond_13b

    :try_start_138
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_148
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_138 .. :try_end_13b} :catch_148
    .catchall {:try_start_138 .. :try_end_13b} :catchall_184

    .line 770
    :cond_13b
    goto :goto_15d

    .line 759
    :catchall_13c
    move-exception p2

    if-eqz p1, :cond_147

    :try_start_13f
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_143

    goto :goto_147

    :catchall_143
    move-exception p1

    :try_start_144
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_147
    :goto_147
    throw p2
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_148} :catch_148
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_144 .. :try_end_148} :catch_148
    .catchall {:try_start_144 .. :try_end_148} :catchall_184

    .line 766
    :catch_148
    move-exception p1

    .line 767
    :try_start_149
    sget-object p2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    .line 769
    const/4 p1, 0x0

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_15d
    .catchall {:try_start_149 .. :try_end_15d} :catchall_184

    .line 772
    :cond_15d
    :goto_15d
    monitor-exit p0

    return-void

    .line 735
    :cond_15f
    :try_start_15f
    sget-boolean p1, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz p1, :cond_182

    .line 736
    sget-object p1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "object "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " already exists"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catchall {:try_start_15f .. :try_end_182} :catchall_184

    .line 737
    :cond_182
    monitor-exit p0

    return-void

    .line 704
    :catchall_184
    move-exception p1

    :try_start_185
    monitor-exit p0
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_184

    throw p1

    nop

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4a
        :pswitch_50
        :pswitch_4a
        :pswitch_44
    .end packed-switch
.end method

.method private declared-synchronized blacklist handleChangedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 800
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 801
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 802
    if-eqz p1, :cond_58

    .line 804
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result p2

    if-nez p2, :cond_7b

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_7b

    .line 806
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 807
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 808
    iget-object p2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectInfoChanged(I)V

    .line 809
    sget-boolean p2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz p2, :cond_57

    .line 810
    sget-object p2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendObjectInfoChanged: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_57
    goto :goto_7b

    .line 813
    :cond_58
    sget-boolean p1, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz p1, :cond_7b

    .line 814
    sget-object p1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_1 .. :try_end_7b} :catchall_7d

    .line 816
    :cond_7b
    :goto_7b
    monitor-exit p0

    return-void

    .line 799
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method private declared-synchronized greylist-max-o handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 7

    monitor-enter p0

    .line 775
    :try_start_1
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    .line 776
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v1

    .line 777
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_88

    .line 793
    :pswitch_11
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    goto :goto_3b

    .line 782
    :pswitch_14
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, v4

    :goto_1b
    invoke-direct {p0, p1, v3, v4}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    .line 783
    goto :goto_55

    .line 779
    :pswitch_1f
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 780
    goto :goto_55

    .line 785
    :pswitch_25
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 786
    goto :goto_55

    .line 788
    :pswitch_2b
    invoke-direct {p0, p1, v3, v3}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 789
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_55

    .line 793
    :goto_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unexpected object remove for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_55
    :goto_55
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_83

    .line 796
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " transitioned to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in op "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_85

    .line 797
    :cond_83
    monitor-exit p0

    return-void

    .line 774
    :catchall_85
    move-exception p1

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_11
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 3

    monitor-enter p0

    .line 484
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 485
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_20

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 484
    :goto_1e
    monitor-exit p0

    return p1

    .line 483
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 3

    .line 399
    nop

    :goto_1
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_23

    .line 401
    const-wide/16 v0, 0x3a98

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_21

    .line 404
    nop

    .line 405
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager;->checkConsistency()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 406
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    :cond_19
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is not consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    :catch_21
    move-exception v0

    .line 403
    return-void

    .line 411
    :cond_23
    return-void
.end method

.method private declared-synchronized greylist-max-o removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 10

    monitor-enter p0

    .line 679
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 680
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v2

    .line 681
    :goto_1f
    if-nez v0, :cond_41

    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_41

    .line 682
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove from parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_41
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 684
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    if-eqz v0, :cond_5b

    move v0, v2

    goto :goto_74

    :cond_5b
    move v0, v1

    goto :goto_74

    .line 685
    :cond_5d
    if-eqz p2, :cond_74

    .line 686
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    if-eqz v0, :cond_73

    move v0, v2

    goto :goto_74

    :cond_73
    move v0, v1

    .line 688
    :cond_74
    :goto_74
    if-nez v0, :cond_96

    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_96

    .line 689
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove from global cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_96
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_a7

    .line 691
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 692
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 694
    :cond_a7
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eqz v3, :cond_d4

    if-eqz p3, :cond_d4

    .line 696
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 697
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_bc
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 698
    invoke-direct {p0, p3, p2, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p3
    :try_end_cc
    .catchall {:try_start_1 .. :try_end_cc} :catchall_d6

    if-eqz p3, :cond_d2

    if-eqz v0, :cond_d2

    move v0, v2

    goto :goto_d3

    :cond_d2
    move v0, v1

    .line 699
    :goto_d3
    goto :goto_bc

    .line 701
    :cond_d4
    monitor-exit p0

    return v0

    .line 678
    :catchall_d6
    move-exception p1

    :try_start_d7
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageVolume;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/mtp/MtpStorage;"
        }
    .end annotation

    monitor-enter p0

    .line 461
    :try_start_1
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextStorageId()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v0, 0x1

    .line 462
    new-instance v4, Landroid/mtp/MtpStorage;

    invoke-direct {v4, p1, v3, p2}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;ILjava/util/function/Supplier;)V

    .line 463
    new-instance v1, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v4}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 465
    iget-object p1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 466
    monitor-exit p0

    return-object v4

    .line 460
    :catchall_28
    move-exception v0

    move-object p1, v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_28

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I
    .registers 6

    monitor-enter p0

    .line 1127
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_2f

    .line 1128
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginCopyObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_2f
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_78

    const/4 v2, -0x1

    if-nez v1, :cond_3c

    .line 1131
    monitor-exit p0

    return v2

    .line 1132
    :cond_3c
    :try_start_3c
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v1, :cond_50

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_78

    if-nez v1, :cond_50

    .line 1133
    monitor-exit p0

    return v2

    .line 1134
    :cond_50
    :try_start_50
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 1135
    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_78

    if-eqz v0, :cond_5b

    .line 1136
    monitor-exit p0

    return v2

    .line 1137
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    .line 1138
    invoke-static {p2, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1139
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1140
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result p2
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_78

    if-nez p2, :cond_72

    .line 1141
    monitor-exit p0

    return v2

    .line 1142
    :cond_72
    :try_start_72
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_78

    monitor-exit p0

    return p1

    .line 1126
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 6

    monitor-enter p0

    .line 1053
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_21

    .line 1054
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginMoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_21
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_84

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1056
    monitor-exit p0

    return v1

    .line 1057
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_84

    if-eqz v0, :cond_32

    .line 1058
    monitor-exit p0

    return v1

    .line 1059
    :cond_32
    :try_start_32
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 1060
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_84

    if-eqz v0, :cond_41

    .line 1062
    monitor-exit p0

    return v1

    .line 1063
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v0

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    if-eq v0, v2, :cond_69

    .line 1069
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 1070
    invoke-static {v2, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1071
    invoke-static {p2, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1072
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 1073
    invoke-direct {p0, v2, v1}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result p1
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_84

    if-eqz p1, :cond_66

    move v1, v0

    goto :goto_67

    :cond_66
    nop

    .line 1072
    :goto_67
    monitor-exit p0

    return v1

    .line 1076
    :cond_69
    :try_start_69
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1077
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1078
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1079
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1080
    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result p1
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_84

    monitor-exit p0

    return p1

    .line 1052
    :catchall_84
    move-exception p1

    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 5

    monitor-enter p0

    .line 1022
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_21

    .line 1023
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRemoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_21
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 1025
    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result p1
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3a

    if-eqz p1, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    .line 1024
    :goto_38
    monitor-exit p0

    return p1

    .line 1021
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 969
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_2b

    .line 970
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRenameObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_2b
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_63

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 972
    monitor-exit p0

    return v1

    .line 973
    :cond_34
    :try_start_34
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_63

    if-eqz v0, :cond_3c

    .line 974
    monitor-exit p0

    return v1

    .line 975
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_63

    if-eqz v0, :cond_48

    .line 977
    monitor-exit p0

    return v1

    .line 979
    :cond_48
    :try_start_48
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 980
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 982
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 983
    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result p1
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_63

    monitor-exit p0

    return p1

    .line 968
    :catchall_63
    move-exception p1

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I
    .registers 7

    monitor-enter p0

    .line 934
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 935
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginSendObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_1d
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_5c

    const/4 v1, -0x1

    if-nez v0, :cond_26

    .line 937
    monitor-exit p0

    return v1

    .line 938
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_5c

    if-nez v0, :cond_3a

    .line 939
    monitor-exit p0

    return v1

    .line 940
    :cond_3a
    :try_start_3a
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 941
    const/16 v0, 0x3001

    if-ne p3, v0, :cond_43

    const/4 p3, 0x1

    goto :goto_44

    :cond_43
    const/4 p3, 0x0

    :goto_44
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_5c

    .line 942
    if-nez p1, :cond_4c

    .line 943
    monitor-exit p0

    return v1

    .line 944
    :cond_4c
    :try_start_4c
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 945
    sget-object p2, Landroid/mtp/MtpStorageManager$MtpOperation;->ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 946
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p1
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_5c

    monitor-exit p0

    return p1

    .line 933
    :catchall_5c
    move-exception p1

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method public declared-synchronized greylist-max-o checkConsistency()Z
    .registers 12

    monitor-enter p0

    .line 849
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 850
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 851
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 852
    nop

    .line 853
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_320

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 854
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mexists(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5d

    .line 855
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object doesn\'t exist "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    move v2, v5

    .line 858
    :cond_5d
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq v4, v6, :cond_90

    .line 859
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in state "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    move v2, v5

    .line 862
    :cond_90
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v4

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-eq v4, v6, :cond_c3

    .line 863
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in operation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move v2, v5

    .line 866
    :cond_c3
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-nez v4, :cond_fc

    iget-object v4, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_fc

    .line 867
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not in map correctly"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move v2, v5

    .line 870
    :cond_fc
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-eqz v4, :cond_1ab

    .line 871
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_141

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    iget-object v6, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    .line 872
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v7

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v4, v6, :cond_141

    .line 873
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Root parent is not in root mapping "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    move v2, v5

    .line 876
    :cond_141
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-nez v4, :cond_180

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    iget-object v6, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 877
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v7

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v4, v6, :cond_180

    .line 878
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parent is not in object mapping "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    move v2, v5

    .line 881
    :cond_180
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-eq v4, v3, :cond_1ab

    .line 882
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child does not exist in parent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    move v2, v5

    .line 886
    :cond_1ab
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_31e

    .line 887
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v6

    if-nez v6, :cond_1bd

    move v6, v1

    goto :goto_1be

    :cond_1bd
    move v6, v5

    :goto_1be
    if-ne v4, v6, :cond_1fb

    .line 888
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v6

    if-eqz v6, :cond_1de

    const-string v6, ""

    goto :goto_1e1

    :cond_1de
    const-string/jumbo v6, "not "

    :goto_1e1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " visited but observer is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 889
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 888
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    move v2, v5

    .line 892
    :cond_1fb
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    if-nez v4, :cond_228

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_228

    .line 893
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not visited but has children"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_227
    .catchall {:try_start_1 .. :try_end_227} :catchall_322

    .line 894
    move v2, v5

    .line 896
    :cond_228
    :try_start_228
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v4
    :try_end_230
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_230} :catch_313
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_228 .. :try_end_230} :catch_313
    .catchall {:try_start_228 .. :try_end_230} :catchall_322

    .line 897
    :try_start_230
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 898
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_239
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_294

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/file/Path;

    .line 899
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v9

    if-eqz v9, :cond_28c

    .line 900
    invoke-interface {v8}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v9

    if-nez v9, :cond_28c

    iget-object v9, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v9, :cond_273

    .line 901
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v9

    if-eqz v9, :cond_273

    iget-object v9, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 902
    invoke-interface {v8}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v10}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28c

    .line 903
    :cond_273
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File exists in fs but not in children "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    move v2, v5

    .line 906
    :cond_28c
    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 907
    goto :goto_239

    .line 908
    :cond_294
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_301

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 909
    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d3

    .line 910
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File in children doesn\'t exist in fs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    move v2, v5

    .line 913
    :cond_2d3
    iget-object v8, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_300

    .line 914
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Child is not in object map "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ff
    .catchall {:try_start_230 .. :try_end_2ff} :catchall_307

    .line 915
    move v2, v5

    .line 917
    :cond_300
    goto :goto_29c

    .line 918
    :cond_301
    if-eqz v4, :cond_306

    :try_start_303
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_306
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_306} :catch_313
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_303 .. :try_end_306} :catch_313
    .catchall {:try_start_303 .. :try_end_306} :catchall_322

    .line 921
    :cond_306
    goto :goto_31e

    .line 896
    :catchall_307
    move-exception v2

    if-eqz v4, :cond_312

    :try_start_30a
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_30d
    .catchall {:try_start_30a .. :try_end_30d} :catchall_30e

    goto :goto_312

    :catchall_30e
    move-exception v3

    :try_start_30f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_312
    :goto_312
    throw v2
    :try_end_313
    .catch Ljava/io/IOException; {:try_start_30f .. :try_end_313} :catch_313
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_30f .. :try_end_313} :catch_313
    .catchall {:try_start_30f .. :try_end_313} :catchall_322

    .line 918
    :catch_313
    move-exception v2

    .line 919
    :try_start_314
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31d
    .catchall {:try_start_314 .. :try_end_31d} :catchall_322

    .line 920
    move v2, v5

    .line 923
    :cond_31e
    :goto_31e
    goto/16 :goto_1f

    .line 924
    :cond_320
    monitor-exit p0

    return v2

    .line 848
    :catchall_322
    move-exception v0

    :try_start_323
    monitor-exit p0
    :try_end_324
    .catchall {:try_start_323 .. :try_end_324} :catchall_322

    throw v0
.end method

.method public declared-synchronized greylist-max-o close()V
    .registers 5

    monitor-enter p0

    .line 420
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 421
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 422
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 423
    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 425
    :cond_28
    goto :goto_b

    .line 426
    :cond_29
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 427
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 428
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 429
    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 431
    :cond_4f
    goto :goto_33

    .line 434
    :cond_50
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_63

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    .line 436
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_65

    .line 438
    :try_start_5c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_65

    .line 441
    goto :goto_63

    .line 439
    :catch_62
    move-exception v0

    .line 443
    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    .line 419
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public declared-synchronized greylist-max-o dump()V
    .registers 6

    monitor-enter p0

    .line 835
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 836
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 837
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-nez v4, :cond_4b

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4e

    :cond_4b
    const-string/jumbo v4, "null"

    :goto_4e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 838
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_6f

    const-string v4, "dir"

    goto :goto_72

    :cond_6f
    const-string/jumbo v4, "obj"

    :goto_72
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 839
    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    if-eqz v4, :cond_86

    const-string/jumbo v4, "v"

    goto :goto_89

    :cond_86
    const-string/jumbo v4, "nv"

    :goto_89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_1 .. :try_end_a2} :catchall_a6

    .line 840
    goto/16 :goto_b

    .line 841
    :cond_a4
    monitor-exit p0

    return-void

    .line 834
    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0
.end method

.method public declared-synchronized greylist-max-o endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 6

    monitor-enter p0

    .line 1152
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_2b

    .line 1153
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCopyObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_2b
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    monitor-exit p0

    return p1

    .line 1151
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public declared-synchronized greylist-max-o endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .registers 9

    monitor-enter p0

    .line 1093
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 1094
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endMoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_1d
    invoke-static {p1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1096
    invoke-static {p2, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p2

    .line 1097
    const/4 p3, 0x0

    if-eqz v0, :cond_75

    if-nez p2, :cond_2b

    goto :goto_75

    .line 1099
    :cond_2b
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v1

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    if-eq v1, v2, :cond_45

    .line 1100
    invoke-virtual {p0, v0, p4}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result p1

    .line 1101
    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p2
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_77

    if-eqz p2, :cond_43

    if-eqz p1, :cond_43

    move p3, v0

    :cond_43
    monitor-exit p0

    return p3

    .line 1103
    :cond_45
    if-nez p4, :cond_6f

    .line 1106
    nop

    .line 1107
    :try_start_48
    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object p3

    .line 1108
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1109
    invoke-static {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1110
    nop

    .line 1111
    invoke-static {p2, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1112
    invoke-static {p2, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1113
    nop

    .line 1114
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p3

    invoke-static {p3, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1115
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    .line 1117
    :cond_6f
    invoke-direct {p0, v0, p2, p4}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result p1
    :try_end_73
    .catchall {:try_start_48 .. :try_end_73} :catchall_77

    monitor-exit p0

    return p1

    .line 1098
    :cond_75
    :goto_75
    monitor-exit p0

    return p3

    .line 1092
    :catchall_77
    move-exception p1

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p1
.end method

.method public declared-synchronized greylist-max-o endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 10

    monitor-enter p0

    .line 1035
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 1036
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRemoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1d
    nop

    .line 1038
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_54

    .line 1039
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1040
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_53

    .line 1041
    invoke-virtual {p0, v4, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v4

    if-eqz v4, :cond_52

    if-eqz v3, :cond_52

    move v3, v2

    goto :goto_53

    :cond_52
    move v3, v1

    .line 1040
    :cond_53
    :goto_53
    goto :goto_34

    .line 1038
    :cond_54
    move v3, v2

    .line 1043
    :cond_55
    invoke-direct {p0, p1, p2, v2}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p1
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_60

    if-eqz p1, :cond_5e

    if-eqz v3, :cond_5e

    move v1, v2

    :cond_5e
    monitor-exit p0

    return v1

    .line 1034
    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public declared-synchronized greylist-max-o endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .registers 9

    monitor-enter p0

    .line 994
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 995
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRenameObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_1d
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 997
    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 998
    if-nez p3, :cond_49

    .line 1001
    nop

    .line 1002
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    .line 1003
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 1004
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1005
    nop

    .line 1006
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 1007
    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1008
    nop

    .line 1009
    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1010
    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    goto :goto_4c

    .line 998
    :cond_49
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    .line 1012
    :goto_4c
    invoke-direct {p0, p1, v1, p3}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result p1
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    monitor-exit p0

    return p1

    .line 993
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public declared-synchronized greylist-max-o endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 6

    monitor-enter p0

    .line 956
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 957
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endSendObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result p1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return p1

    .line 955
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public greylist-max-o flushEvents()V
    .registers 3

    .line 825
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 828
    goto :goto_7

    .line 826
    :catch_6
    move-exception v0

    .line 829
    :goto_7
    return-void
.end method

.method public declared-synchronized greylist-max-o getByPath(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 8

    monitor-enter p0

    .line 494
    nop

    .line 495
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 496
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 497
    nop

    .line 498
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, v3

    .line 500
    :cond_32
    goto :goto_e

    .line 501
    :cond_33
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v0, :cond_63

    aget-object v4, p1, v3

    .line 502
    if-eqz v2, :cond_61

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-nez v5, :cond_48

    goto :goto_61

    .line 504
    :cond_48
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 505
    goto :goto_5e

    .line 506
    :cond_51
    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 507
    invoke-direct {p0, v2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 508
    :cond_5a
    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_65

    .line 501
    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 503
    :cond_61
    :goto_61
    monitor-exit p0

    return-object v1

    .line 510
    :cond_63
    monitor-exit p0

    return-object v2

    .line 493
    :catchall_65
    move-exception p1

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public declared-synchronized greylist-max-o getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 6

    monitor-enter p0

    .line 519
    const/4 v0, 0x0

    if-eqz p1, :cond_42

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    goto :goto_42

    .line 523
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 524
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " doesn\'t exist"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4b

    .line 525
    monitor-exit p0

    return-object v0

    .line 527
    :cond_34
    :try_start_34
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_4b

    monitor-exit p0

    return-object p1

    .line 520
    :cond_42
    :goto_42
    :try_start_42
    sget-object p1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t get root storages with getObject()"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_4b

    .line 521
    monitor-exit p0

    return-object v0

    .line 518
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public declared-synchronized blacklist getObjects(III)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 562
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    .line 563
    :goto_8
    :try_start_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    nop

    .line 565
    const/4 v4, -0x1

    if-ne p1, v4, :cond_12

    .line 566
    move p1, v1

    .line 567
    :cond_12
    const/4 v1, 0x0

    if-ne p3, v4, :cond_39

    .line 569
    if-nez p1, :cond_39

    .line 571
    iget-object p1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 572
    invoke-direct {p0, v3, p3, p2, v2}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z

    move-result p3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_52

    and-int/2addr v0, p3

    .line 573
    goto :goto_21

    .line 574
    :cond_33
    if-eqz v0, :cond_36

    goto :goto_37

    :cond_36
    move-object v3, v1

    :goto_37
    monitor-exit p0

    return-object v3

    .line 577
    :cond_39
    if-nez p1, :cond_40

    :try_start_3b
    invoke-virtual {p0, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    goto :goto_44

    :cond_40
    invoke-virtual {p0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_52

    .line 578
    :goto_44
    if-nez p1, :cond_48

    .line 579
    monitor-exit p0

    return-object v1

    .line 580
    :cond_48
    :try_start_48
    invoke-direct {p0, v3, p1, p2, v2}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z

    move-result p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_52

    .line 581
    if-eqz p1, :cond_4f

    goto :goto_50

    :cond_4f
    move-object v3, v1

    :goto_50
    monitor-exit p0

    return-object v3

    .line 561
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method public greylist-max-o getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 5

    .line 536
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 537
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " doesn\'t exist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 p1, 0x0

    return-object p1

    .line 540
    :cond_2c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object p1
.end method

.method public declared-synchronized greylist-max-o removeMtpStorage(Landroid/mtp/MtpStorage;)V
    .registers 3

    monitor-enter p0

    .line 474
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 475
    monitor-exit p0

    return-void

    .line 473
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized greylist-max-o setSubdirectories(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 451
    :try_start_1
    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 452
    monitor-exit p0

    return-void

    .line 450
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
