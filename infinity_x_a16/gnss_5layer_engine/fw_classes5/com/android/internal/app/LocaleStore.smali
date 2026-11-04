.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TIER_LANGUAGE:I = 0x1

.field private static final blacklist TIER_NUMBERING:I = 0x3

.field private static final blacklist TIER_REGION:I = 0x2

.field private static blacklist sFullyInitialized:Z

.field private static final blacklist sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSimCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    .line 47
    const-class v0, Lcom/android/internal/app/LocaleStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 743
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 745
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_1f
    return-void
.end method

.method private static blacklist addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .registers 4

    .line 432
    if-nez p0, :cond_3

    .line 433
    return-void

    .line 435
    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 437
    return-void

    .line 440
    :cond_e
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 441
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 443
    iget v2, v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 445
    :cond_38
    goto :goto_18

    .line 446
    :cond_39
    return-void
.end method

.method public static blacklist convertExplicitLocales(Landroid/os/LocaleList;Ljava/util/Collection;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/LocaleList;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 648
    invoke-static {p0, p1}, Lcom/android/internal/app/LocaleStore;->matchLocaleFromSupportedLocaleList(Landroid/os/LocaleList;Ljava/util/Collection;)Landroid/os/LocaleList;

    move-result-object p0

    .line 651
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 652
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 653
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 658
    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 659
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 660
    goto :goto_4e

    .line 662
    :cond_2f
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    .line 664
    if-eqz v1, :cond_4e

    .line 665
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 667
    new-instance v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v4, v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 655
    :cond_51
    new-instance p0, Ljava/util/IllformedLocaleException;

    const-string p1, "Bad locale entry"

    invoke-direct {p0, p1}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 671
    :cond_59
    return-object p1
.end method

.method public static greylist fillCache(Landroid/content/Context;)V
    .registers 12

    .line 450
    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    if-eqz v0, :cond_5

    .line 451
    return-void

    .line 454
    :cond_5
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sSimCountries:Ljava/util/Set;

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 458
    :goto_1c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 459
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_27
    if-ge v6, v5, :cond_41

    aget-object v7, v4, v6

    .line 460
    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    const-string v9, "nu"

    invoke-virtual {v8, v9}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3e

    .line 461
    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 464
    :cond_41
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    move v5, v2

    :goto_47
    const/4 v6, 0x0

    if-ge v5, v4, :cond_bb

    aget-object v7, p0, v5

    .line 465
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b3

    .line 468
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v8, v7, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 470
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 471
    if-eqz v0, :cond_b0

    .line 472
    invoke-virtual {v8, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 473
    invoke-static {v8, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 474
    iget v7, v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v7, v1

    iput v7, v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 481
    :cond_6e
    sget-object v7, Lcom/android/internal/app/LocaleStore;->sSimCountries:Ljava/util/Set;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 482
    iget v7, v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v7, v1

    iput v7, v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 484
    :cond_83
    new-instance v7, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;

    invoke-direct {v7, v8}, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-interface {v3, v7}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 490
    sget-object v7, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v7

    .line 492
    if-eqz v7, :cond_b0

    .line 493
    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 494
    sget-object v9, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 495
    sget-object v9, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    new-instance v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v10, v7, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_b0
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 466
    :cond_b3
    new-instance p0, Ljava/util/IllformedLocaleException;

    const-string v0, "Bad locale entry in locale_config.xml"

    invoke-direct {p0, v0}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 501
    :cond_bb
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 502
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_c5
    if-ge v2, v3, :cond_135

    aget-object v4, v0, v2

    .line 503
    new-instance v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v5, v4, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 504
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12b

    .line 507
    nop

    .line 508
    sget-object v7, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 509
    sget-object v4, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_123

    .line 511
    :cond_f6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    sget-object v7, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_122

    .line 513
    sget-object v7, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_123

    .line 512
    :cond_122
    move-object v4, v6

    .line 516
    :goto_123
    if-eqz v4, :cond_12b

    .line 517
    iget v7, v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 520
    :cond_12b
    invoke-static {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    .line 523
    :cond_135
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_157

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 524
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 525
    goto :goto_13f

    .line 527
    :cond_157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    .line 529
    sput-boolean v1, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 530
    return-void
.end method

.method public static greylist fromLocale(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 3

    .line 756
    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    return-object v0
.end method

.method public static blacklist getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 5

    .line 371
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 372
    return-object v0

    .line 375
    :cond_4
    const-class v1, Landroid/app/LocaleManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/LocaleManager;

    .line 377
    if-nez p0, :cond_10

    .line 378
    move-object p0, v0

    goto :goto_14

    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    .line 379
    :goto_14
    if-nez p0, :cond_18

    move-object p0, v0

    goto :goto_1d

    :cond_18
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 381
    :goto_1d
    if-eqz p0, :cond_3a

    .line 382
    sget-object p1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object p0

    .line 383
    new-instance p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 384
    if-eqz p2, :cond_33

    .line 385
    iget p0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    goto :goto_39

    .line 387
    :cond_33
    iget p0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_39} :catch_3b

    .line 389
    :goto_39
    return-object p1

    .line 393
    :cond_3a
    goto :goto_43

    .line 391
    :catch_3b
    move-exception p0

    .line 392
    sget-object p1, Lcom/android/internal/app/LocaleStore;->TAG:Ljava/lang/String;

    const-string p2, "IllegalArgumentException "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    :goto_43
    return-object v0
.end method

.method public static greylist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 573
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z",
            "Landroid/os/LocaleList;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 588
    if-eqz p0, :cond_5

    .line 589
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 592
    :cond_5
    if-nez p4, :cond_a

    .line 593
    sget-object p0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    goto :goto_14

    .line 594
    :cond_a
    sget-object p0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/android/internal/app/LocaleStore;->convertExplicitLocales(Landroid/os/LocaleList;Ljava/util/Collection;)Ljava/util/HashMap;

    move-result-object p0

    .line 595
    :goto_14
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/app/LocaleStore;->getTierLocales(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/util/HashMap;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 3

    .line 702
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v0

    .line 703
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V

    .line 704
    return-object v0
.end method

.method private static blacklist getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;"
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 714
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    .line 716
    new-instance v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 717
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 720
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 721
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 722
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 723
    iget p0, p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iput p0, v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 724
    return-object v1

    .line 726
    :cond_42
    new-instance p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {p1, p0, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 727
    goto :goto_4f

    .line 728
    :cond_48
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 730
    :goto_4f
    return-object p1
.end method

.method private static blacklist getLocaleTier(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .registers 1

    .line 546
    if-nez p0, :cond_4

    .line 547
    const/4 p0, 0x1

    return p0

    .line 548
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 549
    const/4 p0, 0x2

    return p0

    .line 551
    :cond_14
    const/4 p0, 0x3

    return p0
.end method

.method private static blacklist getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 3

    .line 734
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 735
    invoke-virtual {p0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 736
    const-string v1, "nu"

    invoke-virtual {p0, v1}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Locale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object p0

    .line 737
    invoke-virtual {p0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p0

    .line 734
    return-object p0
.end method

.method private static blacklist getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 303
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 305
    if-eqz p0, :cond_35

    .line 306
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 308
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 313
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_35
    return-object v0
.end method

.method public static blacklist getSystemCurrentLocales()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 402
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    .line 403
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 404
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 405
    sget-object v4, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v3

    .line 406
    new-instance v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 407
    iget v3, v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 408
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 410
    :cond_30
    return-object v0
.end method

.method public static blacklist getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 4

    .line 418
    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 419
    iget v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 420
    if-eqz p0, :cond_16

    .line 421
    iget p0, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 423
    :cond_16
    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 424
    return-object v0
.end method

.method private static blacklist getTierLocales(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/util/HashMap;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 604
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 605
    :goto_6
    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 606
    :goto_e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 607
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 608
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 609
    invoke-static {p0, v4, p2}, Lcom/android/internal/app/LocaleStore;->isShallIgnore(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 610
    goto :goto_20

    .line 612
    :cond_33
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->getLocaleTier(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v5

    packed-switch v5, :pswitch_data_92

    goto :goto_8f

    .line 632
    :pswitch_3b
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v5

    .line 633
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 634
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 624
    :pswitch_55
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 625
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v4

    .line 626
    invoke-static {v4, p3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    .line 627
    invoke-static {v4, v5, p3}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V

    .line 628
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 629
    goto :goto_8f

    .line 614
    :pswitch_76
    invoke-virtual {v4, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 615
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 617
    :cond_80
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v4

    .line 618
    invoke-static {v4, p3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    .line 619
    invoke-static {v4, v5, p3}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V

    .line 620
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    nop

    .line 638
    :cond_8f
    :goto_8f
    goto :goto_20

    .line 639
    :cond_90
    return-object v2

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_76
        :pswitch_55
        :pswitch_3b
    .end packed-switch
.end method

.method private static blacklist isShallIgnore(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)Z"
        }
    .end annotation

    .line 534
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    .line 537
    return v0

    .line 539
    :cond_11
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_19

    return v1

    .line 540
    :cond_19
    if-eqz p2, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result p0

    if-nez p0, :cond_22

    return v0

    .line 541
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_29

    return v1

    .line 542
    :cond_29
    return v0
.end method

.method public static blacklist isSimOrNwCountryAvailable()Z
    .registers 3

    .line 324
    sget-object v0, Lcom/android/internal/app/LocaleStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "country available:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sSimCountries:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sSimCountries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$fillCache$0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Locale;)V
    .registers 3

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 486
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 488
    :cond_16
    return-void
.end method

.method static synthetic blacklist lambda$isShallIgnore$1(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/lang/String;)Z
    .registers 2

    .line 535
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object p1

    .line 536
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 535
    return p0
.end method

.method private static blacklist matchLocaleFromSupportedLocaleList(Landroid/os/LocaleList;Ljava/util/Collection;)Landroid/os/LocaleList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/LocaleList;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Landroid/os/LocaleList;"
        }
    .end annotation

    .line 676
    if-nez p1, :cond_3

    .line 677
    return-object p0

    .line 680
    :cond_3
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    .line 681
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 682
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 683
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 684
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 685
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 686
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 687
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 686
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 688
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v1

    .line 689
    goto :goto_52

    .line 691
    :cond_51
    goto :goto_22

    .line 693
    :cond_52
    :goto_52
    aget-object v3, v0, v1

    if-nez v3, :cond_58

    .line 694
    aput-object v2, v0, v1

    .line 681
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 697
    :cond_5b
    new-instance p0, Landroid/os/LocaleList;

    invoke-direct {p0, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object p0
.end method

.method public static blacklist updateSimCountries(Landroid/content/Context;)V
    .registers 4

    .line 343
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    .line 344
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sSimCountries:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 345
    return-void

    .line 347
    :cond_d
    sput-object p0, Lcom/android/internal/app/LocaleStore;->sSimCountries:Ljava/util/Set;

    .line 350
    sget-object p0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 355
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sSimCountries:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 356
    iget v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 358
    :cond_3b
    goto :goto_19

    .line 359
    :cond_3c
    return-void
.end method
