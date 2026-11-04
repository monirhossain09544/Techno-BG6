.class public Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.super Ljava/lang/Object;
.source "NetworkStatsDataMigrationUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$HistoryVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$IdentitySetVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$CollectionVersion;,
        Landroid/net/netstats/NetworkStatsDataMigrationUtils$Prefix;
    }
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x2000

.field private static final blacklist FILE_MAGIC:I = 0x414e4554

.field public static final blacklist PREFIX_UID:Ljava/lang/String; = "uid"

.field public static final blacklist PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field public static final blacklist PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final blacklist sPrefixLegacyFileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 92
    const-string/jumbo v4, "uid_tag"

    const-string v5, "netstats_uid.bin"

    const-string/jumbo v0, "xt"

    const-string v1, "netstats_xt.bin"

    const-string/jumbo v2, "uid"

    const-string v3, "netstats_uid.bin"

    invoke-static/range {v0 .. v5}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method private static blacklist getCollapsedLegacyType(I)I
    .registers 1

    .line 495
    packed-switch p0, :pswitch_data_6

    .line 508
    :pswitch_3
    return p0

    .line 506
    :pswitch_4
    const/4 p0, 0x0

    return p0

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static blacklist getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->sPrefixLegacyFileNameMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getPlatformBaseDir()Ljava/io/File;
    .registers 3

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 150
    return-object v0
.end method

.method private static blacklist getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-static {}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformBaseDir()Ljava/io/File;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 166
    if-nez v2, :cond_16

    return-object v0

    .line 167
    :cond_16
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 168
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_44

    aget-object v5, v2, v4

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_41

    .line 172
    :cond_39
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 175
    :cond_44
    return-object v0
.end method

.method private static blacklist getPlatformSystemDir()Ljava/io/File;
    .registers 3

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist readFullLongArray(Ljava/io/DataInput;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 308
    if-ltz v0, :cond_15

    .line 309
    new-array v1, v0, [J

    .line 310
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_14

    .line 311
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 313
    :cond_14
    return-object v1

    .line 308
    :cond_15
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "negative array size"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 540
    const v1, 0x414e4554

    if-ne v0, v1, :cond_6c

    .line 544
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 545
    packed-switch v0, :pswitch_data_88

    .line 585
    new-instance p0, Ljava/net/ProtocolException;

    goto :goto_54

    .line 561
    :pswitch_13
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 562
    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_50

    .line 563
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v4

    .line 565
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 566
    move v6, v2

    :goto_24
    if-ge v6, v5, :cond_4d

    .line 567
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 568
    const/4 v8, 0x4

    if-lt v0, v8, :cond_32

    .line 569
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    goto :goto_33

    .line 570
    :cond_32
    move v8, v2

    .line 571
    :goto_33
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 573
    new-instance v10, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v7, v8, v9}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    .line 575
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v7

    .line 577
    if-nez v9, :cond_44

    const/4 v8, 0x1

    goto :goto_45

    :cond_44
    move v8, v2

    :goto_45
    if-eq v8, p2, :cond_4a

    .line 578
    invoke-virtual {p0, v10, v7}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    .line 566
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 562
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 582
    :cond_50
    goto :goto_53

    .line 556
    :pswitch_51
    goto :goto_53

    .line 550
    :pswitch_52
    nop

    .line 590
    :goto_53
    goto :goto_87

    .line 585
    :goto_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 541
    :cond_6c
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unexpected magic: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_86} :catch_86
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_86} :catch_86

    .line 588
    :catch_86
    move-exception p0

    .line 591
    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_52
        :pswitch_51
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private static blacklist readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 514
    new-instance p1, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 516
    :try_start_13
    invoke-static {p0, p1, p2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;Z)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    .line 518
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 519
    nop

    .line 520
    return-void

    .line 518
    :catchall_1b
    move-exception p0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 519
    throw p0
.end method

.method private static blacklist readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    .line 349
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist readPlatformCollection(Ljava/lang/String;J)Landroid/net/NetworkStatsCollection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Landroid/net/NetworkStatsCollection$Builder;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkStatsCollection$Builder;-><init>(J)V

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string/jumbo p2, "uid_tag"

    sparse-switch p1, :sswitch_data_5c

    :cond_f
    goto :goto_23

    :sswitch_10
    const-string/jumbo p1, "uid"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    goto :goto_24

    :sswitch_1b
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_24

    :goto_23
    const/4 p1, -0x1

    :goto_24
    packed-switch p1, :pswitch_data_66

    goto :goto_39

    .line 232
    :pswitch_28
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getLegacyBinFileForPrefix(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 234
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {v0, p1, p2}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readLegacyUid(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;Z)V

    .line 242
    :cond_39
    :goto_39
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getPlatformFileListForPrefix(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 244
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_56

    .line 245
    invoke-static {v0, p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V

    .line 247
    :cond_56
    goto :goto_41

    .line 249
    :cond_57
    invoke-virtual {v0}, Landroid/net/NetworkStatsCollection$Builder;->build()Landroid/net/NetworkStatsCollection;

    move-result-object p0

    return-object p0

    :sswitch_data_5c
    .sparse-switch
        -0x19ebf4d5 -> :sswitch_1b
        0x1c450 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public static blacklist readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 273
    const v1, 0x414e4554

    if-ne v0, v1, :cond_5d

    .line 277
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 278
    packed-switch v0, :pswitch_data_78

    .line 300
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected version: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :pswitch_2a
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 282
    const/4 v1, 0x0

    move v2, v1

    :goto_30
    if-ge v2, v0, :cond_5b

    .line 283
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;

    move-result-object v3

    .line 285
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 286
    move v5, v1

    :goto_3b
    if-ge v5, v4, :cond_58

    .line 287
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 288
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 289
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v8

    .line 291
    new-instance v9, Landroid/net/NetworkStatsCollection$Key;

    invoke-direct {v9, v3, v6, v7, v8}, Landroid/net/NetworkStatsCollection$Key;-><init>(Ljava/util/Set;III)V

    .line 293
    invoke-static {p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    .line 294
    invoke-virtual {p0, v9, v6}, Landroid/net/NetworkStatsCollection$Builder;->addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 282
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 297
    :cond_5b
    nop

    .line 303
    return-void

    .line 274
    :cond_5d
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected magic: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_78
    .packed-switch 0x10
        :pswitch_2a
    .end packed-switch
.end method

.method private static blacklist readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 255
    new-instance p1, Lcom/android/internal/util/ArtFastDataInput;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/ArtFastDataInput;-><init>(Ljava/io/InputStream;I)V

    .line 257
    :try_start_c
    invoke-static {p0, p1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readPlatformCollection(Landroid/net/NetworkStatsCollection$Builder;Ljava/io/DataInput;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 259
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 260
    nop

    .line 261
    return-void

    .line 259
    :catchall_14
    move-exception p0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 260
    throw p0
.end method

.method private static blacklist readPlatformHistory(Ljava/io/DataInput;)Landroid/net/NetworkStatsHistory;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 372
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 373
    packed-switch v2, :pswitch_data_92

    .line 401
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :pswitch_24
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    .line 388
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v1

    .line 389
    const/4 v5, 0x3

    if-lt v2, v5, :cond_34

    .line 390
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v2

    goto :goto_37

    .line 391
    :cond_34
    array-length v2, v1

    new-array v2, v2, [J

    .line 392
    :goto_37
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    .line 393
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v6

    .line 394
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    .line 395
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v8

    .line 396
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLongArray(Ljava/io/DataInput;)[J

    move-result-object v9

    .line 397
    array-length v10, v1

    .line 398
    goto :goto_6c

    .line 375
    :pswitch_4d
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    .line 376
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v2

    .line 377
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v5

    .line 378
    array-length v6, v2

    new-array v6, v6, [J

    .line 379
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readFullLongArray(Ljava/io/DataInput;)[J

    move-result-object v7

    .line 380
    array-length v8, v2

    new-array v8, v8, [J

    .line 381
    array-length v9, v2

    new-array v9, v9, [J

    .line 382
    array-length v10, v2

    .line 383
    move-object/from16 v27, v2

    move-object v2, v1

    move-object/from16 v1, v27

    .line 405
    :goto_6c
    new-instance v11, Landroid/net/NetworkStatsHistory$Builder;

    invoke-direct {v11, v3, v4, v10}, Landroid/net/NetworkStatsHistory$Builder;-><init>(JI)V

    .line 407
    nop

    :goto_72
    if-ge v0, v10, :cond_8d

    .line 408
    new-instance v12, Landroid/net/NetworkStatsHistory$Entry;

    aget-wide v13, v1, v0

    aget-wide v15, v2, v0

    aget-wide v17, v5, v0

    aget-wide v19, v6, v0

    aget-wide v21, v7, v0

    aget-wide v23, v8, v0

    aget-wide v25, v9, v0

    invoke-direct/range {v12 .. v26}, Landroid/net/NetworkStatsHistory$Entry;-><init>(JJJJJJJ)V

    .line 411
    invoke-virtual {v11, v12}, Landroid/net/NetworkStatsHistory$Builder;->addEntry(Landroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Builder;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 414
    :cond_8d
    invoke-virtual {v11}, Landroid/net/NetworkStatsHistory$Builder;->build()Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method private static blacklist readPlatformNetworkIdentitySet(Ljava/io/DataInput;)Ljava/util/Set;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/NetworkIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 421
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 422
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 423
    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_98

    .line 424
    const/4 v5, 0x1

    if-gt v0, v5, :cond_16

    .line 425
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    .line 427
    :cond_16
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 428
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 429
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v8

    .line 431
    const/4 v9, 0x3

    if-lt v0, v9, :cond_2a

    .line 432
    invoke-static/range {p0 .. p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readOptionalString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2b

    .line 434
    :cond_2a
    const/4 v9, 0x0

    .line 437
    :goto_2b
    const/4 v10, 0x2

    if-lt v0, v10, :cond_33

    .line 438
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v10

    goto :goto_34

    .line 440
    :cond_33
    const/4 v10, 0x0

    .line 444
    :goto_34
    const/4 v11, 0x4

    if-lt v0, v11, :cond_3c

    .line 445
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v11

    goto :goto_41

    .line 450
    :cond_3c
    if-nez v6, :cond_40

    move v11, v5

    goto :goto_41

    :cond_40
    const/4 v11, 0x0

    .line 454
    :goto_41
    const/4 v12, 0x5

    if-lt v0, v12, :cond_49

    .line 455
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    goto :goto_4a

    .line 457
    :cond_49
    nop

    .line 461
    :goto_4a
    const/4 v12, 0x6

    if-lt v0, v12, :cond_52

    .line 462
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v12

    goto :goto_53

    .line 464
    :cond_52
    const/4 v12, 0x0

    .line 468
    :goto_53
    const/4 v13, 0x7

    const/4 v14, -0x1

    if-lt v0, v13, :cond_5c

    .line 469
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    goto :goto_5d

    .line 471
    :cond_5c
    move v13, v14

    .line 476
    :goto_5d
    invoke-static {v6}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->getCollapsedLegacyType(I)I

    move-result v15

    .line 477
    new-instance v3, Landroid/net/NetworkIdentity$Builder;

    invoke-direct {v3}, Landroid/net/NetworkIdentity$Builder;-><init>()V

    .line 478
    invoke-virtual {v3, v15}, Landroid/net/NetworkIdentity$Builder;->setType(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 479
    invoke-virtual {v3, v8}, Landroid/net/NetworkIdentity$Builder;->setSubscriberId(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 480
    invoke-virtual {v3, v9}, Landroid/net/NetworkIdentity$Builder;->setWifiNetworkKey(Ljava/lang/String;)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 481
    invoke-virtual {v3, v10}, Landroid/net/NetworkIdentity$Builder;->setRoaming(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/NetworkIdentity$Builder;->setMetered(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 482
    invoke-virtual {v3, v5}, Landroid/net/NetworkIdentity$Builder;->setDefaultNetwork(Z)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 483
    invoke-virtual {v3, v12}, Landroid/net/NetworkIdentity$Builder;->setOemManaged(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 484
    invoke-virtual {v3, v13}, Landroid/net/NetworkIdentity$Builder;->setSubId(I)Landroid/net/NetworkIdentity$Builder;

    move-result-object v3

    .line 485
    if-nez v6, :cond_8d

    if-eq v7, v14, :cond_8d

    .line 486
    invoke-virtual {v3, v7}, Landroid/net/NetworkIdentity$Builder;->setRatType(I)Landroid/net/NetworkIdentity$Builder;

    .line 488
    :cond_8d
    invoke-virtual {v3}, Landroid/net/NetworkIdentity$Builder;->build()Landroid/net/NetworkIdentity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 490
    :cond_98
    return-object v2
.end method

.method private static blacklist readVarLong(Ljava/io/DataInput;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    nop

    .line 334
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 335
    :goto_4
    const/16 v3, 0x40

    if-ge v0, v3, :cond_19

    .line 336
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 337
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 338
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_16

    .line 339
    return-wide v1

    .line 341
    :cond_16
    add-int/lit8 v0, v0, 0x7

    .line 342
    goto :goto_4

    .line 343
    :cond_19
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "malformed var long"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist readVarLongArray(Ljava/io/DataInput;)[J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 319
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 320
    :cond_9
    if-ltz v0, :cond_1a

    .line 321
    new-array v1, v0, [J

    .line 322
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_19

    .line 323
    invoke-static {p0}, Landroid/net/netstats/NetworkStatsDataMigrationUtils;->readVarLong(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 325
    :cond_19
    return-object v1

    .line 320
    :cond_1a
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "negative array size"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
