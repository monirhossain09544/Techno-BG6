.class public Lcom/android/internal/content/om/OverlayConfig;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfig$PackageProvider;,
        Lcom/android/internal/content/om/OverlayConfig$Configuration;,
        Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_PRIORITY:I = 0x7fffffff

.field public static final blacklist PARTITION_ORDER_FILE_PATH:Ljava/lang/String; = "/product/overlay/partition_order.xml"

.field static final blacklist TAG:Ljava/lang/String; = "OverlayConfig"

.field private static blacklist sInstance:Lcom/android/internal/content/om/OverlayConfig;

.field private static final blacklist sStaticOverlayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayConfig$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsDefaultPartitionOrder:Z

.field private final blacklist mPartitionOrder:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/internal/content/om/OverlayConfig;->sStaticOverlayComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/content/om/OverlayScanner;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfig$PackageProvider;",
            ")V"
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    .line 144
    const/4 v3, 0x1

    if-nez p2, :cond_13

    move v4, v3

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    if-nez p3, :cond_18

    move v5, v3

    goto :goto_19

    :cond_18
    const/4 v5, 0x0

    :goto_19
    if-eq v4, v5, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    const-string v5, "scannerFactory and packageProvider cannot be both null or both non-null"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 148
    if-nez v1, :cond_34

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 150
    invoke-static {v4}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_43

    .line 153
    :cond_34
    new-instance v4, Ljava/util/ArrayList;

    new-instance v5, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v4

    .line 158
    :goto_43
    const-string v4, "/product/overlay/partition_order.xml"

    invoke-static {v4, v1}, Lcom/android/internal/content/om/OverlayConfig;->sortPartitions(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v0, Lcom/android/internal/content/om/OverlayConfig;->mIsDefaultPartitionOrder:Z

    .line 159
    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfig;->generatePartitionOrderString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/content/om/OverlayConfig;->mPartitionOrder:Ljava/lang/String;

    .line 161
    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfig;->getActiveApexes(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 164
    const/4 v5, 0x0

    if-nez p3, :cond_5b

    move-object v6, v5

    goto :goto_5f

    :cond_5b
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfig;->getOverlayPackageInfos(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Ljava/util/Map;

    move-result-object v6

    .line 166
    :goto_5f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_69
    if-ge v9, v8, :cond_109

    .line 168
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 169
    if-nez p2, :cond_75

    move-object v11, v5

    goto :goto_7b

    :cond_75
    invoke-interface/range {p2 .. p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/content/om/OverlayScanner;

    .line 170
    :goto_7b
    iget v12, v10, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    .line 173
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 173
    invoke-virtual {v4, v12, v13}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 171
    invoke-static {v10, v11, v6, v12}, Lcom/android/internal/content/om/OverlayConfigParser;->getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    .line 175
    if-eqz v12, :cond_96

    .line 176
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    goto/16 :goto_104

    .line 185
    :cond_96
    if-eqz p2, :cond_a2

    .line 186
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/android/internal/content/om/OverlayScanner;->getAllParsedInfos()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c8

    .line 189
    :cond_a2
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    :goto_b0
    if-ltz v11, :cond_c8

    .line 191
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 192
    invoke-virtual {v13}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->getOriginalPartitionPath()Ljava/io/File;

    move-result-object v13

    .line 191
    invoke-virtual {v10, v13}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsFile(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_c5

    .line 193
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_c5
    add-int/lit8 v11, v11, -0x1

    goto :goto_b0

    .line 199
    :cond_c8
    :goto_c8
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_d2
    if-ge v14, v13, :cond_fc

    .line 201
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 202
    iget-boolean v2, v15, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v2, :cond_f8

    .line 203
    new-instance v16, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v2, v15, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v15

    invoke-direct/range {v16 .. v22}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;)V

    move-object/from16 v2, v16

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_f8
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    goto :goto_d2

    .line 208
    :cond_fc
    sget-object v2, Lcom/android/internal/content/om/OverlayConfig;->sStaticOverlayComparator:Ljava/util/Comparator;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 209
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    :goto_104
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto/16 :goto_69

    .line 212
    :cond_109
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10e
    if-ge v2, v1, :cond_125

    .line 216
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    .line 217
    iget-object v4, v0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    invoke-direct {v6, v3, v2}, Lcom/android/internal/content/om/OverlayConfig$Configuration;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;I)V

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_10e

    .line 219
    :cond_125
    return-void
.end method

.method private static native blacklist createIdmap(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
.end method

.method private static blacklist generatePartitionOrderString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    if-eqz p0, :cond_3e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3e

    .line 225
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {v1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/4 v1, 0x1

    :goto_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 228
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {v3}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 230
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 223
    :cond_3e
    :goto_3e
    const-string p0, ""

    return-object p0
.end method

.method private static blacklist getActiveApexes(Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 441
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 442
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 443
    iget v2, v2, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    goto :goto_9

    .line 446
    :cond_24
    new-instance v1, Ljava/io/File;

    const-string v2, "/apex/apex-info-list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 448
    :try_start_37
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_98

    .line 449
    :try_start_3c
    invoke-static {v2}, Lcom/android/apex/XmlParser;->readApexInfoList(Ljava/io/InputStream;)Lcom/android/apex/ApexInfoList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/apex/ApexInfoList;->getApexInfo()Ljava/util/List;

    move-result-object v1

    .line 450
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apex/ApexInfo;

    .line 451
    invoke-virtual {v3}, Lcom/android/apex/ApexInfo;->getIsActive()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 452
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 453
    invoke-virtual {v3}, Lcom/android/apex/ApexInfo;->getPreinstalledModulePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 454
    iget v4, v5, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/apex/ApexInfo;->getModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_3c .. :try_end_87} :catchall_8e

    .line 455
    goto :goto_89

    .line 457
    :cond_88
    goto :goto_5e

    .line 459
    :cond_89
    :goto_89
    goto :goto_48

    .line 460
    :cond_8a
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_98

    .line 462
    goto :goto_b1

    .line 448
    :catchall_8e
    move-exception p0

    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception v1

    :try_start_94
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_97
    throw p0
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_98} :catch_98

    .line 460
    :catch_98
    move-exception p0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading apex-info-list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OverlayConfig"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_b1
    :goto_b1
    return-object v0
.end method

.method private static blacklist getOverlayPackageInfos(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfig$PackageProvider;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 423
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda6;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider;->forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V

    .line 432
    return-object v0
.end method

.method private blacklist getSortedOverlays()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfig$Configuration;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v1, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    .line 413
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 415
    :cond_1c
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 416
    return-object v0
.end method

.method public static blacklist getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;
    .registers 2

    .line 349
    sget-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    if-eqz v0, :cond_7

    .line 353
    sget-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    return-object v0

    .line 350
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System instance not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;
    .registers 5

    .line 318
    const-string v0, "OverlayConfig#getZygoteInstance"

    const-wide/32 v1, 0x4000000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 320
    :try_start_8
    new-instance v0, Lcom/android/internal/content/om/OverlayConfig;

    new-instance v3, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda7;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v4}, Lcom/android/internal/content/om/OverlayConfig;-><init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 323
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    return-object v0

    .line 323
    :catchall_17
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 324
    throw v0
.end method

.method public static blacklist initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;
    .registers 5

    .line 334
    const-string v0, "OverlayConfig#initializeSystemInstance"

    const-wide/32 v1, 0x4000000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 336
    :try_start_8
    new-instance v0, Lcom/android/internal/content/om/OverlayConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, p0}, Lcom/android/internal/content/om/OverlayConfig;-><init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V

    sput-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    .line 338
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    nop

    .line 340
    sget-object p0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    return-object p0

    .line 338
    :catchall_17
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    throw p0
.end method

.method static synthetic blacklist lambda$dump$5(Lcom/android/internal/content/om/OverlayConfig$Configuration;)I
    .registers 1

    .line 576
    iget p0, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    return p0
.end method

.method static synthetic blacklist lambda$getOverlayPackageInfos$4(Ljava/util/HashMap;Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;Ljava/lang/Boolean;Ljava/io/File;)V
    .registers 12

    .line 425
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 426
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getPackageName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->isOverlayIsStatic()Z

    move-result v4

    .line 428
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayPriority()I

    move-result v5

    new-instance v6, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V

    .line 426
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_36
    return-void
.end method

.method static synthetic blacklist lambda$getSortedOverlays$3(Lcom/android/internal/content/om/OverlayConfig$Configuration;)I
    .registers 1

    .line 415
    iget p0, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    return p0
.end method

.method static synthetic blacklist lambda$new$1(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .registers 5

    .line 154
    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    new-instance v1, Ljava/io/File;

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getNonConicalFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 154
    return-object v0
.end method

.method static synthetic blacklist lambda$sortPartitions$2(Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)I
    .registers 2

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;)I
    .registers 4

    .line 117
    iget-object p0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 118
    iget-object p1, p1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 119
    iget-boolean v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "attempted to sort non-static overlay"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 123
    iget-object p0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 126
    :cond_27
    iget v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    iget v1, p1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    sub-int/2addr v0, v1

    .line 127
    if-nez v0, :cond_36

    iget-object p0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    iget-object p1, p1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    :cond_36
    return v0
.end method

.method private static blacklist parseAndValidatePartitionsOrderXml(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)Z"
        }
    .end annotation

    .line 236
    const-string v0, "OverlayConfig"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    .line 238
    const-string p0, "partition_order.xml does not exist."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v1

    .line 241
    :cond_14
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 243
    invoke-virtual {p0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 244
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    .line 246
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 247
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "partition-order"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 248
    const-string p0, "Invalid partition_order.xml, xml root element is not partition-order"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v1

    .line 253
    :cond_3d
    const-string v2, "partition"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 254
    move v2, v1

    :goto_44
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_84

    .line 255
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 256
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v4, :cond_81

    .line 257
    check-cast v3, Lorg/w3c/dom/Element;

    .line 258
    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid partition_order.xml, it has duplicate partition: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v1

    .line 264
    :cond_7a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 268
    :cond_84
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq p0, v2, :cond_b7

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid partition_order.xml, partition_order.xml has "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 270
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " partitions, which is different from SYSTEM_PARTITIONS"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1

    .line 274
    :cond_b7
    move p0, v1

    :goto_b8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_f6

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {v3}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Parsing partition_order.xml, partition_order.xml does not have partition: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 278
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_f2} :catch_fd
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_f2} :catch_fd
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f2} :catch_fd

    .line 279
    return v1

    .line 274
    :cond_f3
    add-int/lit8 p0, p0, 0x1

    goto :goto_b8

    .line 286
    :cond_f6
    nop

    .line 287
    const-string p0, "Sorting partitions in the specified order from partitions_order.xml"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v4

    .line 282
    :catch_fd
    move-exception p0

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parsing or validating partition_order.xml failed, exception thrown: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 284
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v1
.end method

.method public static blacklist sortPartitions(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)Z"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->parseAndValidatePartitionsOrderXml(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_d

    .line 301
    const/4 p0, 0x0

    return p0

    .line 304
    :cond_d
    new-instance p0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    .line 306
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 308
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;
    .registers 12

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$1;

    invoke-direct {v1, p0}, Lcom/android/internal/content/om/OverlayConfig$1;-><init>(Lcom/android/internal/content/om/OverlayConfig;)V

    .line 543
    invoke-virtual {v1}, Lcom/android/internal/content/om/OverlayConfig$1;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 540
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 544
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 545
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 546
    nop

    .line 547
    invoke-virtual {p0, v2}, Lcom/android/internal/content/om/OverlayConfig;->getImmutableFrameworkOverlayIdmapInvocations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 548
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_35
    if-ge v6, v5, :cond_6b

    .line 549
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 550
    iget-object v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    new-array v9, v3, [Ljava/lang/String;

    .line 551
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const-string v9, "public"

    iget-object v10, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    iget-boolean v7, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    .line 550
    invoke-static {v4, v8, v9, v7}, Lcom/android/internal/content/om/OverlayConfig;->createIdmap(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    .line 556
    if-nez v7, :cond_61

    .line 557
    const-string v0, "OverlayConfig"

    const-string v1, "\'idmap2 create-multiple\' failed: no mutable=\"false\" overlays targeting \"android\" will be loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-array v0, v3, [Ljava/lang/String;

    return-object v0

    .line 562
    :cond_61
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 548
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 564
    :cond_6b
    goto :goto_12

    .line 566
    :cond_6c
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 571
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 572
    const-string p1, "Overlay configurations:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 575
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 576
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 577
    const/4 v1, 0x0

    :goto_25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 578
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 579
    iget v3, v2, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 580
    const-string v3, ", "

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 581
    iget-object v2, v2, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 582
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 584
    :cond_46
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 585
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 586
    return-void
.end method

.method public blacklist getConfiguration(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayConfig$Configuration;
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    return-object p1
.end method

.method public blacklist getImmutableFrameworkOverlayIdmapInvocations(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;",
            ">;"
        }
    .end annotation

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 495
    invoke-direct {p0}, Lcom/android/internal/content/om/OverlayConfig;->getSortedOverlays()Ljava/util/ArrayList;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_82

    .line 497
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 498
    iget-object v6, v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v6, v6, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    if-nez v6, :cond_7f

    iget-object v6, v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v6, v6, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    if-eqz v6, :cond_7f

    iget-object v6, v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v6, v6, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v6, v6, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 499
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    .line 500
    goto :goto_7f

    .line 506
    :cond_30
    iget-object v6, v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v6, v6, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget v6, v6, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    const/16 v7, 0x1d

    const/4 v8, 0x1

    if-lt v6, v7, :cond_3d

    move v6, v8

    goto :goto_3e

    :cond_3d
    move v6, v3

    .line 511
    :goto_3e
    nop

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_61

    .line 513
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 514
    iget-boolean v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    if-ne v8, v6, :cond_61

    iget-object v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v9, v9, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    .line 515
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 516
    goto :goto_62

    .line 520
    :cond_61
    const/4 v7, 0x0

    :goto_62
    if-nez v7, :cond_70

    .line 521
    new-instance v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    iget-object v8, v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;-><init>(ZLjava/lang/String;)V

    .line 522
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_70
    iget-object v6, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 527
    :cond_82
    return-object v0
.end method

.method public blacklist getPartitionOrder()Ljava/lang/String;
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mPartitionOrder:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPriority(Ljava/lang/String;)I
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 406
    if-nez p1, :cond_e

    const p1, 0x7fffffff

    goto :goto_10

    :cond_e
    iget p1, p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    :goto_10
    return p1
.end method

.method public blacklist isDefaultPartitionOrder()Z
    .registers 2

    .line 601
    iget-boolean v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mIsDefaultPartitionOrder:Z

    return v0
.end method

.method public blacklist isEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 384
    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    .line 385
    :cond_c
    iget-object p1, p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean p1, p1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    .line 384
    :goto_10
    return p1
.end method

.method public blacklist isMutable(Ljava/lang/String;)Z
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 394
    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_10

    .line 395
    :cond_c
    iget-object p1, p1, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean p1, p1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    .line 394
    :goto_10
    return p1
.end method
