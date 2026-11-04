.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;,
        Landroid/os/DropBoxManager$Flags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final whitelist EXTRA_DROPPED_COUNT:Ljava/lang/String; = "android.os.extra.DROPPED_COUNT"

.field public static final whitelist EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final whitelist EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final greylist-max-o HAS_BYTE_ARRAY:I = 0x8

.field public static final whitelist IS_EMPTY:I = 0x1

.field public static final whitelist IS_GZIPPED:I = 0x4

.field public static final whitelist IS_TEXT:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor whitelist <init>()V
    .registers 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 317
    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 318
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/os/IDropBoxManagerService;)V
    .registers 3

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 307
    iput-object p2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    .line 308
    return-void
.end method


# virtual methods
.method public whitelist addData(Ljava/lang/String;[BI)V
    .registers 5

    .line 340
    if-eqz p2, :cond_27

    .line 342
    :try_start_2
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->addData(Ljava/lang/String;[BI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 350
    nop

    .line 351
    return-void

    .line 343
    :catch_9
    move-exception p1

    .line 344
    instance-of p2, p1, Landroid/os/TransactionTooLargeException;

    if-eqz p2, :cond_22

    iget-object p2, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x18

    if-ge p2, p3, :cond_22

    .line 346
    const-string p2, "DropBoxManager"

    const-string p3, "App sent too much data, so it was ignored"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    return-void

    .line 349
    :cond_22
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 340
    :cond_27
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "data == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addFile(Ljava/lang/String;Ljava/io/File;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    if-eqz p2, :cond_26

    .line 365
    const/high16 v0, 0x10000000

    :try_start_4
    invoke-static {p2, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_20

    .line 367
    :try_start_8
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_14

    .line 368
    if-eqz p2, :cond_12

    :try_start_f
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_20

    .line 370
    :cond_12
    nop

    .line 371
    return-void

    .line 365
    :catchall_14
    move-exception p1

    if-eqz p2, :cond_1f

    :try_start_17
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p2

    :try_start_1c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw p1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_20

    .line 368
    :catch_20
    move-exception p1

    .line 369
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 364
    :cond_26
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 329
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 330
    return-void
.end method

.method public whitelist getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 12

    .line 402
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    iget-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    .line 403
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 402
    move-object v3, p1

    move-wide v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/IDropBoxManagerService$Entry;

    move-result-object p1

    .line 404
    if-nez p1, :cond_18

    goto :goto_1e

    :cond_18
    new-instance p2, Landroid/os/DropBoxManager$Entry;

    invoke-direct {p2, p1, v1}, Landroid/os/DropBoxManager$Entry;-><init>(Lcom/android/internal/os/IDropBoxManagerService$Entry;Landroid/os/DropBoxManager-IA;)V
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1d} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-object v1, p2

    :goto_1e
    return-object v1

    .line 412
    :catch_1f
    move-exception v0

    move-object p1, v0

    .line 413
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 405
    :catch_26
    move-exception v0

    move-object p1, v0

    .line 406
    iget-object p2, p0, Landroid/os/DropBoxManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1c

    if-ge p2, p3, :cond_3e

    .line 409
    const-string p2, "DropBoxManager"

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-object v1

    .line 407
    :cond_3e
    throw p1
.end method

.method public whitelist isTagEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 383
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 384
    :catch_7
    move-exception p1

    .line 385
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
