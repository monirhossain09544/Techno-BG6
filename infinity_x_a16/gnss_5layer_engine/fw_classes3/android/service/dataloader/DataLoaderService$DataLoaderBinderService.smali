.class Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;
.super Landroid/content/pm/IDataLoader$Stub;
.source "DataLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dataloader/DataLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderBinderService"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dataloader/DataLoaderService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/dataloader/DataLoaderService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-direct {p0}, Landroid/content/pm/IDataLoader$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/dataloader/DataLoaderService;Landroid/service/dataloader/DataLoaderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;-><init>(Landroid/service/dataloader/DataLoaderService;)V

    return-void
.end method


# virtual methods
.method public blacklist create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1, p3, p2, p4}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeCreateDataLoader(Landroid/service/dataloader/DataLoaderService;ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_28
    .catchall {:try_start_0 .. :try_end_5} :catchall_26

    .line 148
    iget-object p1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    if-eqz p1, :cond_25

    .line 149
    iget-object p1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p1, p1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->cmd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 150
    iget-object p1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p1, p1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->pendingReads:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 151
    iget-object p1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p1, p1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->log:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    iget-object p1, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p1, p1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->blocksWritten:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 155
    :cond_25
    return-void

    .line 148
    :catchall_26
    move-exception p1

    goto :goto_4a

    .line 143
    :catch_28
    move-exception p2

    .line 144
    :try_start_29
    const-string p4, "DataLoaderService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create native loader for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-virtual {p0, p1}, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->destroy(I)V

    .line 146
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_26

    .line 148
    :goto_4a
    iget-object p2, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    if-eqz p2, :cond_6a

    .line 149
    iget-object p2, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p2, p2, Landroid/os/incremental/IncrementalFileSystemControlParcel;->cmd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 150
    iget-object p2, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p2, p2, Landroid/os/incremental/IncrementalFileSystemControlParcel;->pendingReads:Landroid/os/ParcelFileDescriptor;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 151
    iget-object p2, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p2, p2, Landroid/os/incremental/IncrementalFileSystemControlParcel;->log:Landroid/os/ParcelFileDescriptor;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    iget-object p2, p3, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iget-object p2, p2, Landroid/os/incremental/IncrementalFileSystemControlParcel;->blocksWritten:Landroid/os/ParcelFileDescriptor;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 154
    :cond_6a
    throw p1
.end method

.method public blacklist destroy(I)V
    .registers 4

    .line 173
    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeDestroyDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to destroy loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataLoaderService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_20
    return-void
.end method

.method public blacklist prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V
    .registers 5

    .line 181
    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativePrepareImage(Landroid/service/dataloader/DataLoaderService;I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_20

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to prepare image for data loader: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataLoaderService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_20
    return-void
.end method

.method public blacklist start(I)V
    .registers 4

    .line 159
    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeStartDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataLoaderService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_20
    return-void
.end method

.method public blacklist stop(I)V
    .registers 4

    .line 166
    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;->this$0:Landroid/service/dataloader/DataLoaderService;

    invoke-static {v0, p1}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$mnativeStopDataLoader(Landroid/service/dataloader/DataLoaderService;I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to stop loader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataLoaderService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_20
    return-void
.end method
