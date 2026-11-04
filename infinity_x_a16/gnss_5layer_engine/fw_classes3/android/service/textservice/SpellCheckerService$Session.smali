.class public abstract Landroid/service/textservice/SpellCheckerService$Session;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private greylist-max-o mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

.field private volatile greylist-max-o mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedAttributes()I
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getSupportedAttributes()I

    move-result v0

    return v0
.end method

.method public whitelist onCancel()V
    .registers 1

    .line 211
    return-void
.end method

.method public whitelist onClose()V
    .registers 1

    .line 219
    return-void
.end method

.method public abstract whitelist onCreate()V
.end method

.method public whitelist onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;
    .registers 13

    .line 166
    if-eqz p1, :cond_68

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_68

    .line 173
    :cond_6
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v0, :cond_2a

    .line 174
    monitor-enter p0

    .line 175
    :try_start_b
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v0, :cond_25

    .line 176
    invoke-virtual {p0}, Landroid/service/textservice/SpellCheckerService$Session;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 178
    new-instance v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    .line 181
    :cond_25
    monitor-exit p0

    goto :goto_2a

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw p1

    .line 183
    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v0, :cond_31

    .line 184
    sget-object p1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    return-object p1

    .line 186
    :cond_31
    array-length v0, p1

    .line 187
    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 188
    const/4 v2, 0x0

    move v3, v2

    :goto_36
    if-ge v3, v0, :cond_67

    .line 189
    iget-object v4, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    aget-object v5, p1, v3

    .line 190
    invoke-static {v4, v5}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->-$$Nest$mgetSplitWords(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object v4

    .line 191
    iget-object v5, v4, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 194
    new-array v7, v6, [Landroid/view/textservice/TextInfo;

    .line 195
    move v8, v2

    :goto_49
    if-ge v8, v6, :cond_58

    .line 196
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    iget-object v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    aput-object v9, v7, v8

    .line 195
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    .line 198
    :cond_58
    nop

    .line 199
    const/4 v5, 0x1

    invoke-virtual {p0, v7, p2, v5}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    .line 198
    invoke-static {v4, v5}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v4

    aput-object v4, v1, v3

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 202
    :cond_67
    return-object v1

    .line 167
    :cond_68
    :goto_68
    sget-object p1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    return-object p1
.end method

.method public abstract whitelist onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
.end method

.method public whitelist onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .registers 9

    .line 140
    array-length p3, p1

    .line 141
    new-array v0, p3, [Landroid/view/textservice/SuggestionsInfo;

    .line 142
    const/4 v1, 0x0

    :goto_4
    if-ge v1, p3, :cond_22

    .line 143
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v2

    aput-object v2, v0, v1

    .line 144
    aget-object v2, v0, v1

    aget-object v3, p1, v1

    .line 145
    invoke-virtual {v3}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v4

    .line 144
    invoke-virtual {v2, v3, v4}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 147
    :cond_22
    return-object v0
.end method

.method public final greylist-max-o setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V
    .registers 2

    .line 107
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    .line 108
    return-void
.end method
