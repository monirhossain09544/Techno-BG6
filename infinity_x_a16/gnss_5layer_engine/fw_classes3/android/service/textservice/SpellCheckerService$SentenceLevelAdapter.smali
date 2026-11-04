.class Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceLevelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    }
.end annotation


# static fields
.field public static final greylist-max-o EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final greylist-max-o EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final greylist-max-o mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetSplitWords(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 379
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 381
    new-instance v1, Landroid/view/textservice/SuggestionsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 3

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 413
    return-void
.end method

.method private greylist-max-o getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .registers 15

    .line 416
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 417
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    .line 420
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 421
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 423
    invoke-virtual {v0, v3}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    .line 424
    const/4 v10, -0x1

    if-ne v2, v10, :cond_24

    move v3, v10

    goto :goto_28

    .line 425
    :cond_24
    invoke-virtual {v0, v2}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v3

    :goto_28
    move v11, v2

    move v12, v3

    .line 430
    :goto_2a
    if-gt v12, v8, :cond_5a

    if-eq v11, v10, :cond_5a

    if-eq v12, v10, :cond_5a

    .line 432
    if-ltz v11, :cond_4e

    if-le v11, v12, :cond_4e

    .line 433
    invoke-interface {v1, v12, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 434
    new-instance v2, Landroid/view/textservice/TextInfo;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 435
    invoke-interface {v3}, Ljava/lang/CharSequence;->hashCode()I

    move-result v7

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 436
    new-instance v3, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    invoke-direct {v3, v2, v12, v11}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_4e
    invoke-virtual {v0, v11}, Landroid/text/method/WordIterator;->following(I)I

    move-result v11

    .line 442
    if-ne v11, v10, :cond_55

    .line 443
    goto :goto_5a

    .line 445
    :cond_55
    invoke-virtual {v0, v11}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v12

    goto :goto_2a

    .line 447
    :cond_5a
    :goto_5a
    new-instance v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    invoke-direct {v0, p1, v9}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static greylist-max-o reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .registers 16

    .line 452
    const/4 v0, 0x0

    if-eqz p1, :cond_60

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_60

    .line 458
    :cond_7
    if-nez p0, :cond_a

    .line 462
    return-object v0

    .line 464
    :cond_a
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v1

    .line 465
    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    .line 466
    invoke-virtual {v2}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v2

    .line 468
    iget v3, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    .line 469
    new-array v4, v3, [I

    .line 470
    new-array v5, v3, [I

    .line 471
    new-array v6, v3, [Landroid/view/textservice/SuggestionsInfo;

    .line 472
    const/4 v7, 0x0

    move v8, v7

    :goto_20
    if-ge v8, v3, :cond_5a

    .line 473
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    .line 474
    nop

    .line 475
    move v10, v7

    :goto_2c
    array-length v11, p1

    if-ge v10, v11, :cond_47

    .line 476
    aget-object v11, p1, v10

    .line 477
    if-eqz v11, :cond_44

    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v12

    iget-object v13, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v13}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v13

    if-ne v12, v13, :cond_44

    .line 478
    nop

    .line 479
    invoke-virtual {v11, v1, v2}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 480
    goto :goto_48

    .line 475
    :cond_44
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    :cond_47
    move-object v11, v0

    .line 483
    :goto_48
    iget v10, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    aput v10, v4, v8

    .line 484
    iget v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    aput v9, v5, v8

    .line 485
    if-eqz v11, :cond_53

    goto :goto_55

    :cond_53
    sget-object v11, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    :goto_55
    aput-object v11, v6, v8

    .line 472
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    .line 494
    :cond_5a
    new-instance p0, Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-direct {p0, v6, v4, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    return-object p0

    .line 453
    :cond_60
    :goto_60
    return-object v0
.end method
