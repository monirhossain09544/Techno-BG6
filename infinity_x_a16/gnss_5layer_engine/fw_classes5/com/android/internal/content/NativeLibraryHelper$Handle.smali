.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final blacklist apkHandles:[J

.field final blacklist apkPaths:[Ljava/lang/String;

.field final blacklist debuggable:Z

.field final blacklist extractNativeLibs:Z

.field private volatile blacklist mClosed:Z

.field private final blacklist mGuard:Ldalvik/system/CloseGuard;

.field final blacklist multiArch:Z

.field final blacklist pageSizeCompatDisabled:Z


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;[JZZZZ)V
    .registers 8

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 150
    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkPaths:[Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 152
    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    .line 153
    iput-boolean p4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    .line 154
    iput-boolean p5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 155
    iput-boolean p6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->pageSizeCompatDisabled:Z

    .line 156
    iget-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    const-string p2, "close"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static blacklist create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getPageSizeCompat()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 106
    :goto_b
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v2

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v3

    .line 107
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result p0

    .line 106
    invoke-static {v1, v2, v3, p0, v0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 100
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0

    return-object p0

    .line 97
    :cond_1e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist create(Ljava/util/List;ZZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 114
    new-array v2, v0, [Ljava/lang/String;

    .line 115
    new-array v3, v0, [J

    .line 116
    const/4 v1, 0x0

    move v4, v1

    :goto_a
    if-ge v4, v0, :cond_49

    .line 117
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 118
    aput-object v5, v2, v4

    .line 119
    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeOpenApk(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 120
    aget-wide v6, v3, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_46

    .line 122
    nop

    :goto_23
    if-ge v1, v4, :cond_2d

    .line 123
    aget-wide p0, v3, v1

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeClose(J)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 125
    :cond_2d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to open APK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 129
    :cond_49
    new-instance v1, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([Ljava/lang/String;[JZZZZ)V

    return-object v1
.end method

.method public static blacklist createFd(Landroid/content/pm/parsing/PackageLite;Ljava/io/FileDescriptor;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {p1, v0}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeOpenApkFd(Ljava/io/FileDescriptor;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    new-array v6, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v6, v4

    .line 137
    aget-wide v1, v6, v4

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_38

    .line 141
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getPageSizeCompat()I

    move-result p1

    const/16 v1, 0x40

    if-ne p1, v1, :cond_21

    move v10, v3

    goto :goto_22

    :cond_21
    move v10, v4

    .line 144
    :goto_22
    new-instance v4, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v7

    .line 145
    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isExtractNativeLibs()Z

    move-result v8

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v9

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([Ljava/lang/String;[JZZZZ)V

    .line 144
    return-object v4

    .line 138
    :cond_38
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open APK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from fd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-wide v3, v0, v2

    .line 162
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->-$$Nest$smnativeClose(J)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 164
    :cond_e
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    .line 166
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 171
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 174
    :cond_9
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    if-nez v0, :cond_10

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 178
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    throw v0
.end method
