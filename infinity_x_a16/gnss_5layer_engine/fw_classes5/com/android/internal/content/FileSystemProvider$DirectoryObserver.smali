.class Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
.super Landroid/os/FileObserver;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryObserver"
.end annotation


# static fields
.field private static final blacklist NOTIFY_EVENTS:I = 0xfcc


# instance fields
.field private final blacklist mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFile:Ljava/io/File;

.field private final blacklist mNotifyUri:Landroid/net/Uri;

.field private final blacklist mResolver:Landroid/content/ContentResolver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6

    .line 923
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfcc

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 924
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    .line 925
    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    .line 926
    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    .line 927
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 928
    return-void
.end method


# virtual methods
.method public whitelist onEvent(ILjava/lang/String;)V
    .registers 5

    .line 932
    and-int/lit16 p1, p1, 0xfcc

    if-eqz p1, :cond_23

    .line 934
    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 935
    invoke-virtual {p2}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->notifyChanged()V

    .line 936
    goto :goto_a

    .line 937
    :cond_1a
    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 939
    :cond_23
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 943
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectoryObserver{file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
