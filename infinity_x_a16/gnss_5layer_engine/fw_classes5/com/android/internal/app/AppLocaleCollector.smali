.class public Lcom/android/internal/app/AppLocaleCollector;
.super Ljava/lang/Object;
.source "AppLocaleCollector.java"

# interfaces
.implements Lcom/android/internal/app/LocaleCollectorBase;


# static fields
.field private static final blacklist ENABLED:Z = true

.field private static final blacklist PROP_APP_LANGUAGE_SUGGESTION:Ljava/lang/String; = "android.app.language.suggestion.enhanced"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAllAppActiveLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mImeLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/android/internal/app/AppLocaleCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppLocaleCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private blacklist addImeSuggestionFlag(Ljava/util/Set;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 342
    iget-object v2, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 343
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 344
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->extendSuggestionOfType(I)V

    .line 347
    :cond_35
    goto :goto_16

    .line 348
    :cond_36
    goto :goto_4

    .line 349
    :cond_37
    return-object p1
.end method

.method private blacklist addScript(Ljava/util/Set;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 123
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_43

    aget-object v4, v1, v3

    .line 124
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 125
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    .line 126
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    invoke-direct {p0, v4, v6}, Lcom/android/internal/app/AppLocaleCollector;->shouldAddScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_33

    .line 134
    :cond_32
    goto :goto_19

    .line 127
    :cond_33
    :goto_33
    invoke-static {v4}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    .line 129
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->extendSuggestionOfType(I)V

    .line 131
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    nop

    .line 123
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 136
    :cond_43
    return-object v0
.end method

.method private blacklist addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)Z"
        }
    .end annotation

    .line 329
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 330
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 331
    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->extendSuggestionOfType(I)V

    .line 333
    const/4 p1, 0x1

    return p1

    .line 335
    :cond_25
    goto :goto_4

    .line 336
    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 356
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 357
    nop

    .line 358
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 359
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 360
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 361
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 362
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 363
    nop

    .line 364
    const/4 v2, 0x1

    goto :goto_53

    .line 366
    :cond_51
    goto :goto_22

    .line 359
    :cond_52
    const/4 v2, 0x0

    .line 367
    :goto_53
    if-nez v2, :cond_58

    .line 368
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_58
    goto :goto_d

    .line 371
    :cond_59
    return-object v0
.end method

.method private blacklist filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 379
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 380
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 381
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 383
    :cond_23
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 384
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 385
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    goto :goto_42

    .line 388
    :cond_41
    goto :goto_27

    .line 390
    :cond_42
    :goto_42
    goto :goto_9

    .line 391
    :cond_43
    return-object v0
.end method

.method private blacklist getActiveIme(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 6

    .line 147
    nop

    .line 148
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 149
    const-string v2, "default_input_method"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    if-eqz v0, :cond_38

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 153
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 154
    move-object v1, v2

    .line 156
    :cond_37
    goto :goto_20

    .line 158
    :cond_38
    return-object v1
.end method

.method private blacklist getSuggestedLocales(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 323
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 324
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    .line 323
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method static synthetic blacklist lambda$getAllAppActiveLocales$0(Ljava/util/HashSet;Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 3

    .line 87
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getIgnoredLocaleList$2(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 2

    .line 208
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getIgnoredLocaleList$3(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 2

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getSuggestedLocales$4(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 1

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$getSystemCurrentLocales$1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 1

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private blacklist shouldAddScript(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5

    .line 140
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 141
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 142
    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 143
    invoke-virtual {p2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    .line 140
    :goto_33
    return p1
.end method


# virtual methods
.method public blacklist getActiveImeLocales()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 101
    if-eqz v0, :cond_47

    .line 102
    invoke-direct {p0, v0}, Lcom/android/internal/app/AppLocaleCollector;->getActiveIme(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_47

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 108
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_41

    .line 110
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_41
    goto :goto_20

    .line 113
    :cond_42
    invoke-direct {p0, v1}, Lcom/android/internal/app/AppLocaleCollector;->addScript(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 116
    :cond_47
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllAppActiveLocales()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/LocaleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    .line 74
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 75
    if-eqz v0, :cond_62

    if-eqz v1, :cond_62

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    nop

    .line 78
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 79
    iget-object v4, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/internal/app/LocaleStore;->getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_59

    .line 84
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_59
    goto :goto_2d

    .line 87
    :cond_5a
    new-instance v0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 89
    :cond_62
    return-object v2
.end method

.method public blacklist getAppCurrentLocale()Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocaleStore;->getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAppSupportedLocales()Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/app/AppLocaleStore;->getAppSupportedLocales(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIgnoredLocaleList(Z)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 201
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_16

    .line 202
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_16
    const-string v0, "android.app.language.suggestion.enhanced"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 207
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 214
    :cond_33
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    :goto_38
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 218
    :cond_4c
    return-object p1
.end method

.method public blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v0, :cond_a

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/app/AppLocaleCollector;->getAppCurrentLocale()Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    if-nez v0, :cond_14

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/app/AppLocaleCollector;->getAllAppActiveLocales()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    .line 230
    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    if-nez v0, :cond_1e

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/app/AppLocaleCollector;->getActiveImeLocales()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    .line 233
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/app/AppLocaleCollector;->getAppSupportedLocales()Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    move-result-object v0

    .line 234
    invoke-virtual {p0, p2}, Lcom/android/internal/app/AppLocaleCollector;->getIgnoredLocaleList(Z)Ljava/util/Set;

    move-result-object v1

    .line 235
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 237
    iget-object v3, v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v4, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3c

    iget-object v3, v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v4, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    if-ne v3, v4, :cond_3a

    goto :goto_3c

    :cond_3a
    move v3, v5

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v3, v6

    .line 242
    :goto_3d
    const/4 v4, 0x0

    if-eqz p3, :cond_45

    .line 243
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/internal/app/AppLocaleCollector;->getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object p1

    goto :goto_49

    .line 245
    :cond_45
    invoke-virtual {p0, v1, v4, p2}, Lcom/android/internal/app/AppLocaleCollector;->getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object p1

    .line 249
    :goto_49
    iget-object p2, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz p2, :cond_54

    if-nez p3, :cond_54

    .line 250
    iget-object p2, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_54
    if-nez p3, :cond_9e

    .line 257
    nop

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/app/AppLocaleCollector;->getSystemCurrentLocales()Ljava/util/Set;

    move-result-object p2

    iget-object v1, v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {p0, p2, v1}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object p2

    .line 259
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 260
    iget-object v7, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v7, :cond_87

    .line 261
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    move v7, v6

    goto :goto_88

    :cond_87
    move v7, v5

    .line 264
    :goto_88
    iget-object v8, p0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    invoke-direct {p0, v1, v8}, Lcom/android/internal/app/AppLocaleCollector;->addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z

    move-result v8

    .line 265
    iget-object v9, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    invoke-direct {p0, v1, v9}, Lcom/android/internal/app/AppLocaleCollector;->addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z

    move-result v9

    .line 266
    if-nez v7, :cond_9d

    if-nez v8, :cond_9d

    if-nez v9, :cond_9d

    .line 267
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_9d
    goto :goto_65

    .line 273
    :cond_9e
    nop

    .line 274
    if-eqz v3, :cond_ae

    .line 275
    iget-object p2, v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 277
    invoke-direct {p0, v2}, Lcom/android/internal/app/AppLocaleCollector;->getSuggestedLocales(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 280
    :cond_ae
    if-nez p3, :cond_e4

    const-string p1, "android.app.language.suggestion.enhanced"

    invoke-static {p1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 283
    iget-object p1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    iget-object p2, v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object p1

    .line 285
    if-eqz v4, :cond_ca

    .line 288
    invoke-direct {p0, p1, v4}, Lcom/android/internal/app/AppLocaleCollector;->filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 290
    invoke-direct {p0, p1}, Lcom/android/internal/app/AppLocaleCollector;->addImeSuggestionFlag(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 292
    :cond_ca
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 293
    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 296
    iget-object p1, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    iget-object p2, v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object p1

    .line 297
    if-eqz v4, :cond_de

    .line 298
    invoke-direct {p0, p1, v4}, Lcom/android/internal/app/AppLocaleCollector;->filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 300
    :cond_de
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 305
    :cond_e4
    if-nez p3, :cond_f4

    if-eqz v3, :cond_f4

    .line 306
    iget-object p1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez p1, :cond_ed

    move v5, v6

    :cond_ed
    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_f4
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_112

    .line 311
    sget-object p1, Lcom/android/internal/app/AppLocaleCollector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "App locale list: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_112
    return-object v2
.end method

.method public blacklist getSystemCurrentLocales()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->getSystemCurrentLocales()Ljava/util/Set;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 194
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    .line 193
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 190
    return-object v0
.end method

.method public blacklist getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 181
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public blacklist hasSpecificPackageName()Z
    .registers 2

    .line 319
    const/4 v0, 0x1

    return v0
.end method
