.class public Landroid/print/PrintFileDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrintedFileDocAdapter"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mDocumentInfo:Landroid/print/PrintDocumentInfo;

.field private final greylist-max-o mFile:Ljava/io/File;

.field private greylist-max-o mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFile(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Landroid/print/PrintFileDocumentAdapter;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/io/File;Landroid/print/PrintDocumentInfo;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 70
    if-eqz p2, :cond_16

    .line 73
    if-eqz p3, :cond_e

    .line 76
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter;->mFile:Ljava/io/File;

    .line 78
    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 79
    return-void

    .line 74
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "documentInfo cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 6

    .line 85
    iget-object p1, p0, Landroid/print/PrintFileDocumentAdapter;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 86
    return-void
.end method

.method public whitelist onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 5

    .line 91
    new-instance p1, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    invoke-direct {p1, p0, p2, p3, p4}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;-><init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter;->mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    .line 92
    iget-object p1, p0, Landroid/print/PrintFileDocumentAdapter;->mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    move-object p4, p3

    check-cast p4, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method
