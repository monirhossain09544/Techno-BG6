.class public final Landroid/service/dataloader/DataLoaderService$FileSystemConnector;
.super Ljava/lang/Object;
.source "DataLoaderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dataloader/DataLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileSystemConnector"
.end annotation


# instance fields
.field private final blacklist mNativeInstance:J


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-wide p1, p0, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->mNativeInstance:J

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    :try_start_0
    iget-wide v0, p0, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->mNativeInstance:J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Landroid/service/dataloader/DataLoaderService;->-$$Nest$smnativeWriteData(JLjava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 225
    nop

    .line 226
    return-void

    .line 222
    :catch_b
    move-exception v0

    move-object p1, v0

    .line 223
    invoke-static {p1}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 224
    throw p1
.end method
