.class public abstract Lcom/android/internal/content/FileSystemProvider;
.super Landroid/provider/DocumentsProvider;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;,
        Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SEARCH_RESULT_LIMIT:I = 0x17

.field protected static final blacklist DIRECTORY_TRASH_STORAGE:Ljava/lang/String; = ".trash-storage"

.field private static final blacklist LOG_INOTIFY:Z = false

.field private static final blacklist MAX_SEARCH_RESULT_LIMIT:I = 0x3e8

.field private static final blacklist PATTERN_EXPIRES_FILE:Ljava/util/regex/Pattern;

.field protected static final blacklist PREFIX_TRASHED:Ljava/lang/String; = "trashed"

.field protected static final blacklist SUPPORTED_QUERY_ARGS:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "FileSystemProvider"


# instance fields
.field private blacklist mDefaultProjection:[Ljava/lang/String;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$dAaeXbB9CuQi3hIKSMc_st2Fj2Y(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->lambda$openDocument$0(Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->startObserving(Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopObserving(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/content/FileSystemProvider;->stopObserving(Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 91
    const-string v0, "android:query-arg-mime-types"

    const-string v1, "android:query-arg-limit"

    const-string v2, "android:query-arg-display-name"

    const-string v3, "android:query-arg-file-size-over"

    const-string v4, "android:query-arg-last-modified-after"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/FileSystemProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/FileSystemProvider;->SUPPORTED_QUERY_ARGS:Ljava/lang/String;

    .line 111
    const-string v0, "(?i)^\\.(pending|trashed)-(\\d+)-([^/]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/content/FileSystemProvider;->PATTERN_EXPIRES_FILE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    return-void
.end method

.method private blacklist getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 525
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 526
    const-string p1, "vnd.android.document/directory"

    return-object p1

    .line 528
    :cond_9
    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    .line 529
    if-ltz p2, :cond_26

    .line 530
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 531
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 532
    if-eqz p1, :cond_26

    .line 533
    return-object p1

    .line 536
    :cond_26
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method private blacklist includeMediaStoreTrashFiles(Landroid/database/MatrixCursor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 720
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 721
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 722
    const-string v2, "android:query-arg-match-trashed"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string v2, "android:query-arg-sql-selection"

    const-string v3, "relative_path NOT LIKE ?"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v2, ".trash-storage/%"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:query-arg-sql-selection-args"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 727
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_5c

    .line 732
    :goto_38
    :try_start_38
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 733
    nop

    .line 734
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 733
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_50

    .line 737
    goto :goto_38

    .line 729
    :catchall_50
    move-exception p1

    if-eqz v0, :cond_5b

    :try_start_53
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    throw p1

    .line 739
    :cond_5c
    if-eqz v0, :cond_61

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_61
    return-void
.end method

.method private blacklist includeTrashFiles(Landroid/database/MatrixCursor;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 707
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_21

    aget-object v2, p2, v1

    .line 708
    invoke-direct {p0, v2}, Lcom/android/internal/content/FileSystemProvider;->isTrashFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 709
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 710
    goto :goto_1e

    .line 712
    :cond_15
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 713
    invoke-direct {p0, p1, v2}, Lcom/android/internal/content/FileSystemProvider;->includeTrashFiles(Landroid/database/MatrixCursor;Ljava/io/File;)V

    .line 707
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 716
    :cond_21
    return-void
.end method

.method private blacklist isTrashFile(Ljava/io/File;)Z
    .registers 4

    .line 702
    sget-object v0, Lcom/android/internal/content/FileSystemProvider;->PATTERN_EXPIRES_FILE:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "trashed"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private static varargs blacklist joinNewline([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 115
    const-string v0, "\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$openDocument$0(Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V
    .registers 4

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 558
    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->scanFile(Ljava/io/File;)V

    .line 559
    return-void
.end method

.method private blacklist matchSearchQueryArguments(Ljava/io/File;Landroid/os/Bundle;)Z
    .registers 11

    .line 596
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 597
    return v0

    .line 601
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 604
    const-string v0, "vnd.android.document/directory"

    move-object v3, v0

    goto :goto_2a

    .line 606
    :cond_12
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 607
    if-gez v1, :cond_1b

    .line 608
    return v0

    .line 610
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 613
    :goto_2a
    nop

    .line 614
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 613
    move-object v1, p2

    invoke-static/range {v1 .. v7}, Landroid/provider/DocumentsContract;->matchSearchQueryArguments(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result p1

    return p1
.end method

.method private blacklist openFileForRead(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 568
    const/high16 v1, 0x10000000

    const-string v2, "FileSystemProvider"

    if-nez v0, :cond_2d

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve media store URI for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 576
    :cond_2d
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 577
    const-string v4, "android.provider.extra.MEDIA_CAPABILITIES_UID"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    nop

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "*/*"

    invoke-virtual {v4, v0, v5, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 581
    if-nez v3, :cond_67

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open with media_capabilities uid for URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-static {p1, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 586
    :cond_67
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private blacklist resolveProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 880
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    :cond_4
    return-object p1
.end method

.method private blacklist scanFile(Ljava/io/File;)V
    .registers 4

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    return-void
.end method

.method private blacklist startObserving(Ljava/io/File;Landroid/net/Uri;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 7

    .line 884
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 885
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 886
    if-nez v1, :cond_22

    .line 887
    new-instance v1, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;-><init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 889
    invoke-virtual {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->startWatching()V

    .line 890
    iget-object p2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :cond_22
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    monitor-exit v0

    .line 896
    return-void

    .line 895
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private blacklist stopObserving(Ljava/io/File;Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;)V
    .registers 6

    .line 899
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 900
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;

    .line 901
    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    .line 903
    :cond_f
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 904
    invoke-static {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->-$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-nez p2, :cond_28

    .line 905
    iget-object p2, p0, Lcom/android/internal/content/FileSystemProvider;->mObservers:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-virtual {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->stopWatching()V

    .line 910
    :cond_28
    monitor-exit v0

    .line 911
    return-void

    .line 910
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method private static blacklist updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    .line 361
    if-eqz p1, :cond_29

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 366
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 367
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_29

    .line 369
    :cond_26
    invoke-static {p0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 372
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method protected abstract blacklist buildNotificationUri(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public whitelist createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 272
    const-string v0, "Failed to touch "

    invoke-static {p3}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 279
    invoke-static {p1, p2, p3}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 281
    const-string p3, "vnd.android.document/directory"

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 286
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    goto :goto_51

    .line 283
    :cond_2a
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to mkdir "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 289
    :cond_43
    :try_start_43
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 293
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_50} :catch_70

    .line 296
    nop

    .line 298
    :goto_51
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 299
    return-object p2

    .line 290
    :cond_59
    :try_start_59
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_70} :catch_70

    .line 294
    :catch_70
    move-exception p2

    .line 295
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 276
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent document isn\'t a directory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist deleteDocument(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 377
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 380
    if-eqz v3, :cond_12

    .line 381
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 385
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_38

    .line 386
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_38
    :goto_38
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;Z)V

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 392
    return-void
.end method

.method protected final blacklist findDocumentPath(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 251
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 255
    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    :goto_11
    if-eqz p2, :cond_26

    invoke-static {p1, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 261
    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 263
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    goto :goto_11

    .line 266
    :cond_26
    return-object v0

    .line 256
    :cond_27
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " is not found under "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_44
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is not found."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract blacklist getDocIdForFile(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "An error occurred retrieving the metadata"

    const-string v3, "FileSystemProvider"

    const/4 v4, 0x0

    if-eqz v1, :cond_58

    .line 183
    new-instance p1, Landroid/system/Int64Ref;

    const-wide/16 v5, 0x0

    invoke-direct {p1, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 184
    new-instance v1, Landroid/system/Int64Ref;

    invoke-direct {v1, v5, v6}, Landroid/system/Int64Ref;-><init>(J)V

    .line 186
    :try_start_27
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 187
    new-instance v5, Lcom/android/internal/content/FileSystemProvider$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider$1;-><init>(Lcom/android/internal/content/FileSystemProvider;Landroid/system/Int64Ref;Landroid/system/Int64Ref;)V

    invoke-static {v0, v5}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3e} :catch_53

    .line 213
    nop

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v2, "android:metadataTreeCount"

    iget-wide v3, p1, Landroid/system/Int64Ref;->value:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    const-string p1, "android:metadataTreeSize"

    iget-wide v1, v1, Landroid/system/Int64Ref;->value:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    return-object v0

    .line 210
    :catch_53
    move-exception p1

    .line 211
    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    return-object v4

    .line 221
    :cond_58
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_64

    .line 222
    const-string p1, "Can\'t stream non-regular file. Returning empty metadata."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v4

    .line 225
    :cond_64
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_70

    .line 226
    const-string p1, "Can\'t stream non-readable file. Returning empty metadata."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v4

    .line 229
    :cond_70
    invoke-static {p1}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Returning empty metadata."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-object v4

    .line 234
    :cond_93
    nop

    .line 236
    :try_start_94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 237
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a2} :catch_ae
    .catchall {:try_start_94 .. :try_end_a2} :catchall_ac

    .line 238
    :try_start_a2
    invoke-static {v1, v5, p1, v4}, Landroid/provider/MetadataReader;->getMetadata(Landroid/os/Bundle;Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_aa
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_b8

    .line 239
    nop

    .line 244
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 239
    return-object v1

    .line 240
    :catch_aa
    move-exception p1

    goto :goto_b0

    .line 244
    :catchall_ac
    move-exception p1

    goto :goto_ba

    .line 240
    :catch_ae
    move-exception p1

    move-object v5, v4

    .line 241
    :goto_b0
    :try_start_b0
    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b8

    .line 242
    nop

    .line 244
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 242
    return-object v4

    .line 244
    :catchall_b8
    move-exception p1

    move-object v4, v5

    :goto_ba
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 245
    throw p1

    .line 178
    :cond_be
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find the file for documentId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final blacklist getFileForDocId(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected abstract blacklist getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method protected blacklist includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 744
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 747
    if-nez p2, :cond_f

    .line 748
    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    goto :goto_13

    .line 750
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 753
    :goto_13
    invoke-direct {p0, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->getDocumentType(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 754
    const-string v2, "document_id"

    invoke-virtual {p1, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 755
    const-string v2, "mime_type"

    invoke-virtual {p1, v2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 757
    const-string v2, "flags"

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 758
    const/4 v3, -0x1

    if-eq v2, v3, :cond_89

    .line 759
    const-string v4, "vnd.android.document/directory"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 760
    invoke-direct {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->isTrashFile(Ljava/io/File;)Z

    move-result v5

    .line 761
    nop

    .line 762
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 763
    nop

    .line 764
    if-nez v5, :cond_48

    .line 765
    nop

    .line 766
    nop

    .line 768
    if-eqz v4, :cond_45

    .line 769
    const/16 v5, 0x14c

    goto :goto_4b

    .line 771
    :cond_45
    const/16 v5, 0x146

    goto :goto_4b

    .line 764
    :cond_48
    const/4 v5, 0x4

    goto :goto_4b

    .line 762
    :cond_4a
    const/4 v5, 0x0

    .line 776
    :goto_4b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->enableDocumentsTrashApi()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 777
    invoke-direct {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->isTrashFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 778
    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    goto :goto_64

    .line 779
    :cond_5b
    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->isTrashSupported(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 780
    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    .line 784
    :cond_64
    :goto_64
    if-eqz v4, :cond_70

    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->shouldBlockDirectoryFromTree(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 785
    const p2, 0x8000

    or-int/2addr v5, p2

    .line 788
    :cond_70
    const-string p2, "image/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 789
    or-int/lit8 v5, v5, 0x1

    .line 792
    :cond_7a
    invoke-virtual {p0, v1}, Lcom/android/internal/content/FileSystemProvider;->typeSupportsMetadata(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 793
    or-int/lit16 v5, v5, 0x4000

    .line 795
    :cond_82
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 798
    :cond_89
    const-string p2, "_display_name"

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 799
    if-eq p2, v3, :cond_b6

    .line 800
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 801
    sget-object v2, Lcom/android/internal/content/FileSystemProvider;->PATTERN_EXPIRES_FILE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 802
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_b3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "trashed"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 804
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 806
    :cond_b3
    invoke-virtual {p1, p2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 809
    :cond_b6
    const-string p2, "last_modified"

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 810
    if-eq p2, v3, :cond_d2

    .line 811
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 813
    const-wide v4, 0x757b12c00L

    cmp-long v4, v1, v4

    if-lez v4, :cond_d2

    .line 814
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 817
    :cond_d2
    const-string p2, "_size"

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 818
    if-eq p2, v3, :cond_e5

    .line 819
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(ILjava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 823
    :cond_e5
    return-object p1
.end method

.method public whitelist isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 163
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    .line 166
    :catch_15
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to determine if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " is child of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist isTrashSupported(Ljava/io/File;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 845
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 340
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p3}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 346
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;Z)V

    .line 353
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 357
    return-object p2

    .line 347
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to move to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Already exists "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist onCreate([Ljava/lang/String;)V
    .registers 3

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider;->mDefaultProjection:[Ljava/lang/String;

    .line 158
    return-void
.end method

.method public whitelist onCreate()Z
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass should override this and call onCreate(defaultDocumentProjection)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist onDocIdChanged(Ljava/lang/String;)V
    .registers 2

    .line 138
    return-void
.end method

.method protected blacklist onDocIdDeleted(Ljava/lang/String;Z)V
    .registers 3

    .line 146
    return-void
.end method

.method public whitelist openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 547
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p2

    .line 548
    if-nez v0, :cond_14

    .line 549
    invoke-static {p3, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 550
    :cond_14
    const/high16 v1, 0x10000000

    if-ne p2, v1, :cond_1d

    .line 551
    invoke-direct {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->openFileForRead(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 555
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {p3, p2, v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_29

    return-object p1

    .line 560
    :catch_29
    move-exception p1

    .line 561
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to open for writing: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 628
    invoke-static {p1}, Landroid/provider/DocumentsContract;->openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/content/FileSystemProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 431
    new-instance v0, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 432
    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;-><init>(Lcom/android/internal/content/FileSystemProvider;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 434
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p2

    const-string v1, "FileSystemProvider"

    if-nez p2, :cond_32

    .line 435
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is not a directory"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-object v0

    .line 439
    :cond_32
    if-nez p4, :cond_57

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->shouldHideDocument(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 440
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Queried directory \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\" is hidden"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-object v0

    .line 444
    :cond_57
    invoke-static {p3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_5d
    if-ge p3, p2, :cond_71

    aget-object v1, p1, p3

    .line 445
    if-nez p4, :cond_6a

    invoke-virtual {p0, v1}, Lcom/android/internal/content/FileSystemProvider;->shouldHideDocument(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_6e

    .line 447
    :cond_6a
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 444
    :goto_6e
    add-int/lit8 p3, p3, 0x1

    goto :goto_5d

    .line 450
    :cond_71
    return-object v0
.end method

.method public final blacklist queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/content/FileSystemProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 397
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 398
    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 399
    return-object v0
.end method

.method protected final blacklist querySearchDocuments(Ljava/io/File;[Ljava/lang/String;Ljava/util/Set;Landroid/os/Bundle;)Landroid/database/Cursor;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 475
    nop

    .line 476
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/content/storage/flags/Flags;->useFileSystemProviderSearchLimits()Z

    move-result p2

    const/16 v1, 0x17

    if-eqz p2, :cond_22

    .line 477
    const-string p2, "android:query-arg-limit"

    invoke-virtual {p4, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 479
    const/16 v2, 0x3e8

    if-le p2, v2, :cond_1e

    .line 480
    move v1, v2

    goto :goto_22

    .line 481
    :cond_1e
    if-gez p2, :cond_21

    .line 482
    goto :goto_22

    .line 481
    :cond_21
    move v1, p2

    .line 487
    :cond_22
    :goto_22
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 488
    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 490
    :goto_2a
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6f

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p1

    if-ge p1, v1, :cond_6f

    .line 491
    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->shouldHideDocument(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_2a

    .line 496
    :cond_43
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 497
    invoke-static {p1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v3, :cond_59

    aget-object v5, v2, v4

    .line 498
    invoke-interface {p2, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 502
    :cond_59
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_2a

    .line 504
    :cond_64
    invoke-direct {p0, p1, p4}, Lcom/android/internal/content/FileSystemProvider;->matchSearchQueryArguments(Ljava/io/File;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 505
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/internal/content/FileSystemProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)Landroid/database/MatrixCursor$RowBuilder;

    .line 507
    :cond_6e
    goto :goto_2a

    .line 509
    :cond_6f
    invoke-static {p4}, Landroid/provider/DocumentsContract;->getHandledQueryArguments(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p1

    .line 510
    array-length p2, p1

    if-lez p2, :cond_83

    .line 511
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 512
    const-string p3, "android.content.extra.HONORED_ARGS"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, p2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 515
    :cond_83
    return-object v0
.end method

.method protected final blacklist queryTrashDocuments(Ljava/io/File;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 657
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->resolveProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 658
    invoke-direct {p0, v0, p1}, Lcom/android/internal/content/FileSystemProvider;->includeTrashFiles(Landroid/database/MatrixCursor;Ljava/io/File;)V

    .line 660
    invoke-direct {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->includeMediaStoreTrashFiles(Landroid/database/MatrixCursor;)V

    .line 661
    return-object v0
.end method

.method public whitelist renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 306
    invoke-static {p2}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 309
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 311
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 315
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/content/FileSystemProvider;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 324
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;Z)V

    .line 329
    return-object p2

    .line 331
    :cond_42
    const/4 p1, 0x0

    return-object p1

    .line 312
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to rename to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist restoreDocumentFromTrash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 668
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/Flags;->enableTrashAndRestoreByFilePathApi()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 678
    invoke-direct {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->isTrashFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 682
    nop

    .line 683
    if-eqz p2, :cond_24

    .line 684
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 685
    if-eqz p2, :cond_24

    .line 686
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_25

    .line 689
    :cond_24
    const/4 p2, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 690
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {v1, v0, p2}, Landroid/provider/MediaStore;->restoreFileFromTrash(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 692
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0, p2}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 697
    return-object p2

    .line 679
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DocumentId represents a non-trashed file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 675
    :cond_4d
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File does not exist for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 669
    :cond_66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "MediaStore feature for trash is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist shouldBlockDirectoryFromTree(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 867
    const/4 p1, 0x0

    return p1
.end method

.method protected final blacklist shouldHideDocument(Ljava/io/File;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 856
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->shouldHideDocument(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected blacklist shouldHideDocument(Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 834
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist trashDocument(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 635
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/providers/media/flags/Flags;->enableTrashAndRestoreByFilePathApi()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/content/FileSystemProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 646
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v1, v0}, Landroid/provider/MediaStore;->trashFile(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0, v1}, Lcom/android/internal/content/FileSystemProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 650
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/content/FileSystemProvider;->onDocIdDeleted(Ljava/lang/String;Z)V

    .line 651
    invoke-virtual {p0, v0}, Lcom/android/internal/content/FileSystemProvider;->onDocIdChanged(Ljava/lang/String;)V

    .line 652
    return-object v0

    .line 642
    :cond_34
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_4d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "MediaStore feature for trash is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist typeSupportsMetadata(Ljava/lang/String;)Z
    .registers 3

    .line 871
    invoke-static {p1}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 872
    const-string v0, "vnd.android.document/directory"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 871
    :goto_12
    return p1
.end method
