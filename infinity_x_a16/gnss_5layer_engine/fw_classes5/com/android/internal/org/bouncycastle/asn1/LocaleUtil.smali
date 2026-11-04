.class public Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field public static blacklist EN_Locale:Ljava/util/Locale;

.field private static final blacklist localeCache:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;->localeCache:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;->forEN()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist epochAdjust(Ljava/util/Date;)Ljava/util/Date;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 47
    if-nez v0, :cond_7

    .line 49
    return-object p0

    .line 52
    :cond_7
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;->localeCache:Ljava/util/Map;

    monitor-enter v1

    .line 54
    :try_start_a
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;->localeCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 56
    if-nez v2, :cond_2e

    .line 58
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssz"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v3, "19700101000000GMT+00:00"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 61
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;->longValueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 63
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/LocaleUtil;->localeCache:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_48

    .line 68
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    monitor-exit v1

    return-object v0

    .line 71
    :cond_48
    monitor-exit v1

    return-object p0

    .line 72
    :catchall_4a
    move-exception p0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private static blacklist forEN()Ljava/util/Locale;
    .registers 4

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 31
    :cond_15
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 32
    const/4 v2, 0x0

    :goto_1a
    array-length v3, v0

    if-eq v2, v3, :cond_2f

    .line 34
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 36
    aget-object v0, v0, v2

    return-object v0

    .line 32
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 40
    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist longValueOf(J)Ljava/lang/Long;
    .registers 2

    .line 77
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/Longs;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
