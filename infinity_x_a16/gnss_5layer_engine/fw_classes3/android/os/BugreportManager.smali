.class public final Landroid/os/BugreportManager;
.super Ljava/lang/Object;
.source "BugreportManager.java"


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BugreportManager$DumpstateListener;,
        Landroid/os/BugreportManager$BugreportCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BugreportManager"


# instance fields
.field private final blacklist mBinder:Landroid/os/IDumpstate;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/os/BugreportManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/IDumpstate;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    .line 73
    return-void
.end method


# virtual methods
.method public whitelist cancelBugreport()V
    .registers 4

    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    iget-object v1, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v2, v1}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 397
    nop

    .line 398
    return-void

    .line 395
    :catch_e
    move-exception v0

    .line 396
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist preDumpUiData()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    iget-object v1, p0, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IDumpstate;->preDumpUiData(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 199
    nop

    .line 200
    return-void

    .line 197
    :catch_d
    move-exception v0

    .line 198
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist requestBugreport(Landroid/os/BugreportParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 420
    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object p2, v0

    goto :goto_9

    :cond_5
    :try_start_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 421
    :goto_9
    if-nez p3, :cond_c

    goto :goto_10

    :cond_c
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    .line 423
    invoke-virtual {p1}, Landroid/os/BugreportParams;->getMode()I

    move-result p1

    invoke-interface {p3, p2, v0, p1}, Landroid/app/IActivityManager;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1d

    .line 426
    nop

    .line 427
    return-void

    .line 424
    :catch_1d
    move-exception p1

    .line 425
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist retrieveBugreport(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V
    .registers 14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 316
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v0, Landroid/os/BugreportManager$DumpstateListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/BugreportManager$DumpstateListener;-><init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;ZZ)V

    .line 321
    move-object v8, v0

    iget-object v0, v1, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    move-object p3, v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p4, p3, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p3, p3, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 323
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 321
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v8}, Landroid/os/IDumpstate;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_3c
    .catchall {:try_start_0 .. :try_end_34} :catchall_39

    .line 331
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_39
    move-exception v0

    move-object p1, v0

    goto :goto_43

    .line 328
    :catch_3c
    move-exception v0

    move-object p1, v0

    .line 329
    :try_start_3e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_39

    .line 331
    :goto_43
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    throw p1
.end method

.method public whitelist startBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/BugreportParams;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V
    .registers 23
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 234
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    nop

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/BugreportParams;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v5, v1

    goto :goto_1a

    :cond_19
    move v5, v2

    .line 242
    :goto_1a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->bugreportDeferredConsentScreenshotFix()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 243
    if-eqz p2, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    move v14, v1

    goto :goto_2d

    .line 245
    :cond_26
    if-nez p2, :cond_2c

    if-eqz v5, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :cond_2c
    :goto_2c
    move v14, v1

    .line 247
    :goto_2d
    if-nez p2, :cond_3f

    .line 249
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3c} :catch_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3c} :catch_79
    .catchall {:try_start_0 .. :try_end_3c} :catchall_75

    move-object/from16 v16, v0

    goto :goto_41

    .line 247
    :cond_3f
    move-object/from16 v16, p2

    .line 253
    :goto_41
    :try_start_41
    new-instance v13, Landroid/os/BugreportManager$DumpstateListener;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v0, v13

    move v4, v14

    invoke-direct/range {v0 .. v5}, Landroid/os/BugreportManager$DumpstateListener;-><init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;ZZ)V

    .line 256
    iget-object v6, v1, Landroid/os/BugreportManager;->mBinder:Landroid/os/IDumpstate;

    iget-object v0, v1, Landroid/os/BugreportManager;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 260
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/BugreportParams;->getMode()I

    move-result v11

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/BugreportParams;->getFlags()I

    move-result v12

    .line 256
    const/4 v7, -0x1

    const/4 v15, 0x0

    invoke-interface/range {v6 .. v15}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_6b} :catch_73
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_6b} :catch_71
    .catchall {:try_start_41 .. :try_end_6b} :catchall_94

    .line 272
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 273
    if-eqz v16, :cond_8b

    .line 274
    goto :goto_88

    .line 268
    :catch_71
    move-exception v0

    goto :goto_7c

    .line 266
    :catch_73
    move-exception v0

    goto :goto_8f

    .line 272
    :catchall_75
    move-exception v0

    move-object/from16 v16, p2

    goto :goto_95

    .line 268
    :catch_79
    move-exception v0

    move-object/from16 v16, p2

    .line 269
    :goto_7c
    :try_start_7c
    const-string v1, "BugreportManager"

    const-string v2, "Not able to find /dev/null file: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_94

    .line 272
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 273
    if-eqz v16, :cond_8b

    .line 274
    :goto_88
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 277
    :cond_8b
    return-void

    .line 266
    :catch_8c
    move-exception v0

    move-object/from16 v16, p2

    .line 267
    :goto_8f
    :try_start_8f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_94

    .line 272
    :catchall_94
    move-exception v0

    :goto_95
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 273
    if-eqz v16, :cond_9d

    .line 274
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 276
    :cond_9d
    throw v0
.end method

.method public whitelist startConnectivityBugreport(Landroid/os/ParcelFileDescriptor;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V
    .registers 10

    .line 370
    new-instance v3, Landroid/os/BugreportParams;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Landroid/os/BugreportParams;-><init>(I)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/BugreportManager;->startBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/BugreportParams;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;)V

    .line 376
    return-void
.end method
