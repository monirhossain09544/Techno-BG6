.class public Lcom/android/internal/content/om/OverlayManagerImpl;
.super Ljava/lang/Object;
.source "OverlayManagerImpl.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FRRO_EXTENSION:Ljava/lang/String; = ".frro"

.field private static final blacklist IDMAP_EXTENSION:Ljava/lang/String; = ".idmap"

.field public static final blacklist SELF_TARGET:Ljava/lang/String; = ".self_target"

.field private static final blacklist TAG:Ljava/lang/String; = "OverlayManagerImpl"


# instance fields
.field private blacklist mBasePath:Ljava/nio/file/Path;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 93
    return-void

    .line 91
    :cond_1a
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Self-Targeting doesn\'t support multiple user now!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 197
    nop

    .line 198
    const-string v0, "overlayName should be neither empty nor null string"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 200
    nop

    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 203
    if-nez v2, :cond_13

    move v0, v1

    :cond_13
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 205
    const-string v2, "Invalid overlayName \"%s\". The check result is %s."

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 208
    return-object p0
.end method

.method private blacklist checkPackageName(Ljava/lang/String;)V
    .registers 4

    .line 212
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 216
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 215
    const-string v1, "UID %d doesn\'t own the package %s"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 217
    return-void
.end method

.method private static blacklist cleanExpiredOverlays(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 4

    .line 98
    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/android/internal/content/om/OverlayManagerImpl$1;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/content/om/OverlayManagerImpl$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 137
    goto :goto_2e

    .line 135
    :catch_15
    move-exception p0

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverlayManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_2e
    return-void
.end method

.method private static native blacklist createFrroFile(Ljava/lang/String;Landroid/os/FabricatedOverlayInternal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist createIdmapFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist getFabricatedOverlayInfo(Ljava/lang/String;)Landroid/os/FabricatedOverlayInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private blacklist isSameWithTargetSignature(Ljava/lang/String;)Z
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 184
    return v3

    .line 186
    :cond_14
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    return v3
.end method

.method static synthetic blacklist lambda$getOverlayInfosForTarget$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    .line 350
    const-string v0, ".frro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 351
    return v2

    .line 354
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".idmap"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 310
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 311
    iget v1, v0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_55

    .line 312
    iget-object v0, v0, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    const-class v1, Landroid/os/FabricatedOverlayInternal;

    .line 314
    const-string v2, "fabricated_overlay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FabricatedOverlayInternal;

    .line 313
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FabricatedOverlayInternal;

    .line 319
    iget-object v1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 320
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    goto :goto_49

    .line 322
    :cond_3b
    iget-object v1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 328
    :goto_49
    invoke-virtual {p0, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)V

    .line 329
    goto :goto_6a

    .line 324
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown package name in transaction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_55
    iget v1, v0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6b

    .line 330
    iget-object v0, v0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayIdentifier;

    .line 331
    invoke-virtual {v0}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->unregisterFabricatedOverlay(Ljava/lang/String;)V

    .line 332
    nop

    .line 335
    :goto_6a
    goto :goto_7

    .line 333
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request in transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_84
    return-void
.end method

.method public blacklist ensureBaseDir()V
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    const-string v3, ".self_target"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 147
    nop

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_43

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 150
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 152
    invoke-virtual {v2}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_43

    move v3, v4

    goto :goto_44

    :cond_43
    move v3, v1

    .line 147
    :goto_44
    const-string v5, "Can\'t work for this context"

    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 154
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->cleanExpiredOverlays(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 156
    new-instance v3, Ljava/io/File;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_83

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OverlayManagerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_7d
    const/16 v0, 0x1c0

    const/4 v2, -0x1

    invoke-static {v3, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 169
    :cond_83
    nop

    .line 170
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 172
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 174
    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_a4

    move v1, v4

    goto :goto_a5

    :cond_a4
    nop

    .line 169
    :goto_a5
    const-string v0, "Can\'t create a workspace for this context"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    .line 178
    return-void
.end method

.method public blacklist getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/content/om/OverlayManagerImpl;->ensureBaseDir()V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/android/internal/content/om/OverlayManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/content/om/OverlayManagerImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    array-length v3, v1

    const/4 v0, 0x0

    move v4, v0

    :goto_1c
    if-ge v4, v3, :cond_75

    aget-object v5, v1, v4

    .line 364
    :try_start_20
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->getFabricatedOverlayInfo(Ljava/lang/String;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_56

    .line 368
    nop

    .line 369
    iget-object v6, v0, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 370
    goto :goto_72

    .line 376
    :cond_34
    new-instance v8, Landroid/content/om/OverlayInfo;

    iget-object v9, v0, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    iget-object v11, v0, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v12, v0, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    .line 383
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 385
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v16

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x3

    const v17, 0x7fffffff

    invoke-direct/range {v8 .. v19}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    .line 389
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 365
    :catch_56
    move-exception v0

    move-object/from16 v7, p1

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t load "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "OverlayManagerImpl"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    nop

    .line 361
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 391
    :cond_75
    return-object v2
.end method

.method public blacklist registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayManagerImpl;->ensureBaseDir()V

    .line 231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 233
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 234
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "overlay entries shouldn\'t be empty"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 235
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkPackageName(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->selfTargetingAndroidResourceFrro()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 238
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_3c

    .line 240
    :cond_30
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkPackageName(Ljava/lang/String;)V

    .line 241
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    const-string v2, "Target overlayable should be neither null nor empty string."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 246
    :goto_3c
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 247
    nop

    .line 248
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->selfTargetingAndroidResourceFrro()Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p1, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 250
    sget-object v2, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    goto :goto_61

    .line 252
    :cond_56
    nop

    .line 253
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    :goto_61
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".frro"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    .line 256
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".idmap"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 258
    invoke-interface {v12}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->createFrroFile(Ljava/lang/String;Landroid/os/FabricatedOverlayInternal;)V

    .line 260
    nop

    .line 262
    move-object v4, v3

    :try_start_9c
    invoke-interface {v12}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_b2

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v6

    if-eqz v6, :cond_b1

    goto :goto_b2

    :cond_b1
    const/4 v1, 0x0

    :cond_b2
    :goto_b2
    move v6, v1

    .line 266
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v7

    .line 267
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v8

    iget-object p1, p1, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    .line 268
    invoke-direct {p0, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->isSameWithTargetSignature(Ljava/lang/String;)Z

    move-result v9

    .line 269
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v10

    .line 270
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v11

    .line 260
    invoke-static/range {v2 .. v11}, Lcom/android/internal/content/om/OverlayManagerImpl;->createIdmapFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZ)V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_cc} :catch_ce

    .line 276
    nop

    .line 277
    return-void

    .line 271
    :catch_ce
    move-exception v0

    move-object p1, v0

    .line 272
    invoke-interface {v12}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_f2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_f2
    throw p1
.end method

.method public blacklist unregisterFabricatedOverlay(Ljava/lang/String;)V
    .registers 6

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayManagerImpl;->ensureBaseDir()V

    .line 287
    invoke-static {p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".frro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayManagerImpl;->mBasePath:Ljava/nio/file/Path;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".idmap"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 291
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v2, "Failed to delete file "

    const-string v3, "OverlayManagerImpl"

    if-nez v1, :cond_5a

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_5a
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_78

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_78
    return-void
.end method
