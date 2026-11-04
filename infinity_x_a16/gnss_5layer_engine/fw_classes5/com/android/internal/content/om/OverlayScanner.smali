.class public Lcom/android/internal/content/om/OverlayScanner;
.super Ljava/lang/Object;
.source "OverlayScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    }
.end annotation


# instance fields
.field private final blacklist mExcludedOverlayPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mParsedOverlayInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final blacklist getAllParsedInfos()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    return-object p1
.end method

.method final blacklist isExcludedOverlayPackage(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)Z
    .registers 7

    .line 125
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 126
    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 127
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    .line 128
    invoke-virtual {p2, v2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 129
    const/4 p1, 0x1

    return p1

    .line 125
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    :cond_2b
    return v0
.end method

.method public blacklist parseOverlayManifest(Ljava/io/File;Ljava/util/List;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;>;)",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;"
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forParsingWithoutPlatformCompat()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v0, p1, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 187
    const-string p1, "Got exception loading overlay."

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p2

    const-string v0, "OverlayConfig"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return-object v2

    .line 190
    :cond_21
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/ApkLite;

    .line 191
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 193
    return-object v2

    .line 195
    :cond_2e
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getRequiredSystemPropertyValue()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 198
    :cond_42
    invoke-static {v1, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 202
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v2

    .line 205
    :cond_54
    new-instance v3, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getTargetPackageName()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v6

    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->isOverlayIsStatic()Z

    move-result v7

    .line 207
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getOverlayPriority()I

    move-result v8

    new-instance v9, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V

    .line 205
    return-object v3
.end method

.method public blacklist scanDir(Ljava/io/File;)V
    .registers 6

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6f

    .line 145
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_32

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cannot be read"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverlayConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_32
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 151
    if-nez p1, :cond_39

    .line 152
    return-void

    .line 155
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    array-length v1, p1

    if-ge v0, v1, :cond_6e

    .line 156
    aget-object v1, p1, v0

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 161
    :cond_48
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 162
    goto :goto_6b

    .line 165
    :cond_5b
    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner;->mExcludedOverlayPackages:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/content/om/OverlayScanner;->parseOverlayManifest(Ljava/io/File;Ljava/util/List;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v1

    .line 166
    if-nez v1, :cond_64

    .line 167
    goto :goto_6b

    .line 170
    :cond_64
    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner;->mParsedOverlayInfos:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 172
    :cond_6e
    return-void

    .line 142
    :cond_6f
    :goto_6f
    return-void
.end method
