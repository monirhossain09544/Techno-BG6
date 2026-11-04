.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final greylist-max-o mUserId:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 2

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput p1, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    .line 234
    return-void
.end method


# virtual methods
.method public greylist-max-o buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .registers 4

    .line 262
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "data"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .registers 4

    .line 266
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const-string v1, "Android"

    const-string/jumbo v2, "obb"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 6

    .line 286
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const-string v1, "data"

    const-string v2, "cache"

    const-string v3, "Android"

    filled-new-array {v3, v1, p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 5

    .line 270
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "data"

    filled-new-array {v1, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 6

    .line 282
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const-string v1, "data"

    const-string v2, "files"

    const-string v3, "Android"

    filled-new-array {v3, v1, p1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 5

    .line 274
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "media"

    filled-new-array {v1, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 5

    .line 278
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const-string v1, "Android"

    const-string/jumbo v2, "obb"

    filled-new-array {v1, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    .line 258
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public greylist getExternalDirs()[Ljava/io/File;
    .registers 5

    .line 238
    iget v0, p0, Landroid/os/Environment$UserEnvironment;->mUserId:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 240
    array-length v1, v0

    new-array v1, v1, [Ljava/io/File;

    .line 241
    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    .line 242
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 244
    :cond_1a
    return-object v1
.end method

.method public greylist getExternalStorageDirectory()Ljava/io/File;
    .registers 3

    .line 249
    invoke-virtual {p0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public greylist getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 254
    invoke-virtual {p0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method
