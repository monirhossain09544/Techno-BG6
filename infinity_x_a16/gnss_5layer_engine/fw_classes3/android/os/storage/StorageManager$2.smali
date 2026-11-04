.class Landroid/os/storage/StorageManager$2;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor blacklist <init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1096
    iput-object p2, p0, Landroid/os/storage/StorageManager$2;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 1104
    iget-object p1, p0, Landroid/os/storage/StorageManager$2;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 1105
    return-void
.end method

.method public blacklist onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 1100
    return-void
.end method
