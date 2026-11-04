.class public Landroid/provider/FontsContract;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/FontsContract$FontRequestCallback;,
        Landroid/provider/FontsContract$FontFamilyResult;,
        Landroid/provider/FontsContract$FontInfo;,
        Landroid/provider/FontsContract$Columns;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o SYNC_FONT_FETCH_TIMEOUT_MS:J = 0x1f4L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FontsContract"

.field private static final greylist-max-o THREAD_RENEWAL_THRESHOLD_MS:I = 0x2710

.field private static final greylist-max-o sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o sContext:Landroid/content/Context;

.field private static greylist-max-o sHandler:Landroid/os/Handler;

.field private static greylist-max-o sInQueueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static final greylist-max-o sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

.field private static greylist-max-o sThread:Landroid/os/HandlerThread;

.field private static final greylist-max-o sTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThread()Landroid/os/HandlerThread;
    .registers 1

    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsHandler(Landroid/os/Handler;)V
    .registers 1

    sput-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsThread(Landroid/os/HandlerThread;)V
    .registers 1

    sput-object p0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    .line 332
    new-instance v0, Landroid/provider/FontsContract$1;

    invoke-direct {v0}, Landroid/provider/FontsContract$1;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    .line 802
    new-instance v0, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method public static whitelist buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;
    .registers 11

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 660
    return-object v1

    .line 662
    :cond_8
    nop

    .line 663
    invoke-static {p0, p2, p1}, Landroid/provider/FontsContract;->prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object p0

    .line 664
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 665
    return-object v1

    .line 668
    :cond_14
    nop

    .line 669
    array-length p1, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_19
    const/4 v4, 0x1

    if-ge v2, p1, :cond_6c

    aget-object v5, p2, v2

    .line 670
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 671
    if-nez v6, :cond_2b

    .line 672
    goto :goto_67

    .line 675
    :cond_2b
    :try_start_2b
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v7, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 676
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v6

    .line 677
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 678
    goto :goto_40

    :cond_3f
    move v4, v0

    .line 677
    :goto_40
    invoke-virtual {v6, v4}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    .line 679
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    .line 680
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    .line 681
    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v4

    .line 682
    if-nez v3, :cond_61

    .line 683
    new-instance v5, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v5, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v5

    goto :goto_64

    .line 685
    :cond_61
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_64} :catch_6a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_64} :catch_65

    .line 693
    :goto_64
    goto :goto_67

    .line 691
    :catch_65
    move-exception v4

    .line 692
    nop

    .line 669
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 687
    :catch_6a
    move-exception p0

    .line 690
    return-object v1

    .line 695
    :cond_6c
    if-nez v3, :cond_6f

    .line 696
    return-object v1

    .line 699
    :cond_6f
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0

    .line 701
    new-instance p1, Landroid/graphics/fonts/FontStyle;

    const/16 p2, 0x190

    invoke-direct {p1, p2, v0}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 703
    invoke-virtual {p0, v0}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object p2

    .line 704
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v0

    .line 705
    nop

    :goto_87
    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v1

    if-ge v4, v1, :cond_a1

    .line 706
    invoke-virtual {p0, v4}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v2

    .line 708
    if-ge v2, v0, :cond_9e

    .line 709
    nop

    .line 710
    move-object p2, v1

    move v0, v2

    .line 705
    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 713
    :cond_a1
    new-instance p1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 830
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 832
    :cond_15
    return-object v0
.end method

.method private static greylist-max-o equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 816
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 817
    return v2

    .line 819
    :cond_c
    move v0, v2

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 820
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 821
    return v2

    .line 819
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 824
    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 628
    new-instance p0, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 p1, 0x3

    invoke-direct {p0, p1, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object p0

    .line 630
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/FontsContract;->getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 631
    if-nez v0, :cond_1f

    .line 632
    new-instance p0, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object p0

    .line 636
    :cond_1f
    :try_start_1f
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v0, p1}, Landroid/provider/FontsContract;->getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;

    move-result-object p0

    .line 638
    new-instance p1, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_2b} :catch_2c

    return-object p1

    .line 639
    :catch_2c
    move-exception p0

    .line 640
    new-instance p0, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object p0
.end method

.method public static greylist-max-o getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;
    .registers 23

    .line 840
    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 842
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 843
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 844
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 845
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 846
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v11, "font_italic"

    const-string/jumbo v12, "result_code"

    const-string v6, "_id"

    const-string v7, "file_id"

    const-string v8, "font_ttc_index"

    const-string v9, "font_variation_settings"

    const-string v10, "font_weight"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v6

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    .line 848
    const-string/jumbo v7, "query = ?"

    const/4 v9, 0x0

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 854
    if-eqz v2, :cond_10b

    :try_start_5c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_10b

    .line 855
    const-string/jumbo v1, "result_code"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 856
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 857
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 858
    const-string v7, "file_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 859
    const-string v8, "font_ttc_index"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 860
    const-string v9, "font_variation_settings"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 861
    const-string v10, "font_weight"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 862
    const-string v11, "font_italic"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 863
    :goto_92
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_fb

    .line 864
    const/4 v12, -0x1

    if-eq v1, v12, :cond_a2

    .line 865
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v18, v13

    goto :goto_a4

    :cond_a2
    const/16 v18, 0x0

    .line 866
    :goto_a4
    if-eq v8, v12, :cond_ac

    .line 867
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move v14, v13

    goto :goto_ad

    :cond_ac
    const/4 v14, 0x0

    .line 868
    :goto_ad
    if-eq v9, v12, :cond_b4

    .line 869
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_b5

    :cond_b4
    const/4 v13, 0x0

    .line 872
    :goto_b5
    if-ne v7, v12, :cond_c2

    .line 873
    move-object/from16 p1, v4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 874
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 875
    goto :goto_cc

    .line 876
    :cond_c2
    move-object/from16 p1, v4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 877
    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 881
    :goto_cc
    if-eq v10, v12, :cond_e2

    if-eq v11, v12, :cond_e2

    .line 882
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 883
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_dc

    goto :goto_dd

    :cond_dc
    const/4 v15, 0x0

    :goto_dd
    move/from16 v17, v15

    move/from16 v16, v4

    goto :goto_e9

    .line 885
    :cond_e2
    nop

    .line 886
    const/16 v4, 0x190

    const/16 v17, 0x0

    move/from16 v16, v4

    .line 888
    :goto_e9
    nop

    .line 889
    invoke-static {v13}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v15

    .line 890
    new-instance v12, Landroid/provider/FontsContract$FontInfo;

    move-object v13, v3

    invoke-direct/range {v12 .. v18}, Landroid/provider/FontsContract$FontInfo;-><init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V

    move-object/from16 v3, p1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f9
    .catchall {:try_start_5c .. :try_end_f9} :catchall_fe

    .line 891
    move-object v4, v3

    goto :goto_92

    .line 863
    :cond_fb
    move-object v3, v4

    move-object v1, v3

    goto :goto_10b

    .line 848
    :catchall_fe
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_10a

    :try_start_102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_10a

    :catchall_106
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10a
    :goto_10a
    throw v1

    .line 893
    :cond_10b
    :goto_10b
    if-eqz v2, :cond_110

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 894
    :cond_110
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/provider/FontsContract$FontInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/FontsContract$FontInfo;

    return-object v0
.end method

.method public static greylist-max-o getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;
    .registers 15

    .line 347
    invoke-virtual {p0}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 348
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 349
    if-eqz v0, :cond_f

    .line 350
    return-object v0

    .line 353
    :cond_f
    const-string v0, "FontsContract"

    const-string v1, "Platform version of downloadable fonts is deprecated. Please use androidx version instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v8, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 359
    :try_start_19
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 360
    if-eqz v0, :cond_25

    .line 361
    monitor-exit v8

    return-object v0

    .line 367
    :cond_25
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_45

    .line 369
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "fonts"

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    .line 370
    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 371
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    .line 373
    :cond_45
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 374
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    .line 375
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 376
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 377
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 379
    sget-object v10, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;-><init>(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    sget-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    sget-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1f4

    invoke-virtual {p0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 406
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_85
    .catchall {:try_start_19 .. :try_end_85} :catchall_ed

    .line 408
    :try_start_85
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_96

    .line 409
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_e7

    .line 428
    :try_start_91
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v8
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_ed

    .line 409
    return-object p0

    .line 413
    :cond_96
    :try_start_96
    invoke-interface {v7, v10, v11}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v10
    :try_end_9a
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_9a} :catch_9b
    .catchall {:try_start_96 .. :try_end_9a} :catchall_e7

    .line 416
    goto :goto_9c

    .line 414
    :catch_9b
    move-exception v0

    .line 417
    :goto_9c
    :try_start_9c
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_ad

    .line 418
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_a8
    .catchall {:try_start_9c .. :try_end_a8} :catchall_e7

    .line 428
    :try_start_a8
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v8
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_ed

    .line 418
    return-object p0

    .line 420
    :cond_ad
    const-wide/16 v12, 0x0

    cmp-long p0, v10, v12

    if-gtz p0, :cond_96

    .line 421
    :try_start_b3
    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    const-string p0, "FontsContract"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote font fetch timed out: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {v1}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_b3 .. :try_end_e0} :catchall_e7

    .line 424
    nop

    .line 428
    :try_start_e1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v8

    .line 424
    const/4 p0, 0x0

    return-object p0

    .line 428
    :catchall_e7
    move-exception v0

    move-object p0, v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    throw p0

    .line 430
    :catchall_ed
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_f0
    .catchall {:try_start_e1 .. :try_end_f0} :catchall_ed

    throw p0
.end method

.method public static greylist-max-o getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 769
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 770
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 771
    if-eqz v2, :cond_81

    .line 775
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 780
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 781
    return-object v2

    .line 785
    :cond_20
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 787
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Landroid/provider/FontsContract;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object p0

    .line 788
    sget-object v0, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 790
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object p1

    .line 791
    nop

    :goto_38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_58

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 794
    sget-object v3, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 795
    invoke-static {p0, v0}, Landroid/provider/FontsContract;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 796
    return-object v2

    .line 791
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 799
    :cond_58
    const/4 p0, 0x0

    return-object p0

    .line 776
    :cond_5a
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found content provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but package was not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 772
    :cond_81
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No package found for authority: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic blacklist lambda$getFontSync$0(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .registers 9

    .line 381
    :try_start_0
    sget-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object p0

    .line 382
    invoke-virtual {p0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_21

    .line 383
    sget-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 384
    if-eqz p0, :cond_1e

    .line 385
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_1e
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_21} :catch_22

    .line 391
    :cond_21
    goto :goto_23

    .line 389
    :catch_22
    move-exception p0

    .line 392
    :goto_23
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 394
    :try_start_26
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_33

    .line 395
    const/4 p0, 0x0

    invoke-virtual {p5, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 396
    invoke-interface {p6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_38

    .line 399
    :cond_33
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_38
    move-exception p0

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 400
    throw p0
.end method

.method static synthetic blacklist lambda$requestFonts$1(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2

    .line 532
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$10(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 598
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$11(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2

    .line 604
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$12(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 10

    .line 539
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_9f

    .line 544
    nop

    .line 547
    sget-object v1, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 548
    if-eqz v1, :cond_1c

    .line 549
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda1;

    invoke-direct {p0, p4, v1}, Landroid/provider/FontsContract$$ExternalSyntheticLambda1;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void

    .line 553
    :cond_1c
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_44

    .line 554
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result p0

    packed-switch p0, :pswitch_data_aa

    .line 565
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda4;

    invoke-direct {p0, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda4;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 567
    return-void

    .line 560
    :pswitch_32
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda3;

    invoke-direct {p0, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda3;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void

    .line 556
    :pswitch_3b
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda2;

    invoke-direct {p0, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda2;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void

    .line 571
    :cond_44
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_96

    array-length v1, v0

    if-nez v1, :cond_4e

    goto :goto_96

    .line 577
    :cond_4e
    array-length v1, v0

    const/4 v2, 0x0

    :goto_50
    if-ge v2, v1, :cond_75

    aget-object v3, v0, v2

    .line 578
    invoke-virtual {v3}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_72

    .line 581
    invoke-virtual {v3}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result p0

    .line 582
    if-gez p0, :cond_69

    .line 584
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda6;

    invoke-direct {p0, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda6;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_71

    .line 587
    :cond_69
    new-instance p1, Landroid/provider/FontsContract$$ExternalSyntheticLambda7;

    invoke-direct {p1, p4, p0}, Landroid/provider/FontsContract$$ExternalSyntheticLambda7;-><init>(Landroid/provider/FontsContract$FontRequestCallback;I)V

    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    :goto_71
    return-void

    .line 577
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 594
    :cond_75
    invoke-static {p0, p1, v0}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 595
    if-nez p0, :cond_84

    .line 598
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda8;

    invoke-direct {p0, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda8;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void

    .line 603
    :cond_84
    sget-object p1, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance p1, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;

    invoke-direct {p1, p4, p0}, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    return-void

    .line 573
    :cond_96
    :goto_96
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda5;

    invoke-direct {p0, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda5;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    return-void

    .line 540
    :catch_9f
    move-exception p0

    .line 541
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda0;

    invoke-direct {p0, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda0;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_32
    .end packed-switch
.end method

.method static synthetic blacklist lambda$requestFonts$2(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 541
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$3(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2

    .line 549
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$4(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 556
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$5(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 560
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$6(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 565
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$7(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 573
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$8(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2

    .line 584
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$9(Landroid/provider/FontsContract$FontRequestCallback;I)V
    .registers 2

    .line 587
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$static$13([B[B)I
    .registers 6

    .line 803
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_8

    .line 804
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    return p0

    .line 806
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 807
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_19

    .line 808
    aget-byte p0, p0, v1

    aget-byte p1, p1, v1

    sub-int/2addr p0, p1

    return p0

    .line 806
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 811
    :cond_1c
    return v0
.end method

.method private static greylist-max-o prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/provider/FontsContract$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 728
    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 731
    array-length v4, v1

    const/4 v0, 0x0

    move v5, v0

    :goto_e
    if-ge v5, v4, :cond_81

    aget-object v0, v1, v5

    .line 732
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 733
    move-object/from16 v8, p2

    goto/16 :goto_7e

    .line 736
    :cond_1c
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 737
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 738
    move-object/from16 v8, p2

    goto :goto_7e

    .line 741
    :cond_29
    nop

    .line 742
    const/4 v7, 0x0

    :try_start_2b
    const-string/jumbo v0, "r"
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_78

    .line 743
    move-object/from16 v8, p2

    :try_start_30
    invoke-virtual {v3, v6, v0, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_76

    .line 744
    if-eqz v9, :cond_70

    .line 745
    :try_start_36
    new-instance v10, Ljava/io/FileInputStream;

    .line 746
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_6f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_5e

    .line 747
    :try_start_3f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 748
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    .line 749
    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v13, 0x0

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_53

    .line 750
    :try_start_4f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_6f
    .catchall {:try_start_4f .. :try_end_52} :catchall_5e

    .line 752
    goto :goto_70

    .line 745
    :catchall_53
    move-exception v0

    move-object v11, v0

    :try_start_55
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5d
    throw v11
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_6f
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    .line 742
    :catchall_5e
    move-exception v0

    move-object v10, v7

    move-object v7, v0

    if-eqz v9, :cond_6b

    :try_start_63
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception v0

    :try_start_68
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6b
    :goto_6b
    throw v7
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6c} :catch_6c

    .line 754
    :catch_6c
    move-exception v0

    move-object v7, v10

    goto :goto_7b

    .line 750
    :catch_6f
    move-exception v0

    .line 754
    :cond_70
    :goto_70
    if-eqz v9, :cond_75

    :try_start_72
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 756
    :cond_75
    goto :goto_7b

    .line 754
    :catch_76
    move-exception v0

    goto :goto_7b

    :catch_78
    move-exception v0

    move-object/from16 v8, p2

    .line 760
    :goto_7b
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :goto_7e
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 762
    :cond_81
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist requestFonts(Landroid/content/Context;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/os/CancellationSignal;Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 11

    .line 529
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 530
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 531
    if-eqz v0, :cond_1c

    .line 532
    new-instance p0, Landroid/provider/FontsContract$$ExternalSyntheticLambda10;

    invoke-direct {p0, p4, v0}, Landroid/provider/FontsContract$$ExternalSyntheticLambda10;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void

    .line 536
    :cond_1c
    new-instance v0, Landroid/provider/FontsContract$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/provider/FontsContract$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method

.method public static greylist-max-o setApplicationContextForResources(Landroid/content/Context;)V
    .registers 1

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    .line 181
    return-void
.end method
