.class public Landroid/provider/SearchRecentSuggestions;
.super Ljava/lang/Object;
.source "SearchRecentSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SearchRecentSuggestions$SuggestionColumns;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SearchSuggestions"

.field private static final greylist-max-o MAX_HISTORY_COUNT:I = 0xfa

.field public static final whitelist QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

.field public static final whitelist QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

.field public static final whitelist QUERIES_PROJECTION_DATE_INDEX:I = 0x1

.field public static final whitelist QUERIES_PROJECTION_DISPLAY1_INDEX:I = 0x3

.field public static final whitelist QUERIES_PROJECTION_DISPLAY2_INDEX:I = 0x4

.field public static final whitelist QUERIES_PROJECTION_QUERY_INDEX:I = 0x2

.field private static final greylist-max-o sWritesInProgress:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final greylist-max-o mAuthority:Ljava/lang/String;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mSuggestionsUri:Landroid/net/Uri;

.field private final greylist-max-o mTwoLineDisplay:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$msaveRecentQueryBlocking(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWritesInProgress()Ljava/util/concurrent/Semaphore;
    .registers 1

    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 72
    const-string v0, "_id"

    const-string v1, "date"

    const-string/jumbo v2, "query"

    const-string v3, "display1"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_1LINE:[Ljava/lang/String;

    .line 84
    const-string v4, "display2"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->QUERIES_PROJECTION_2LINE:[Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_41

    .line 137
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_13

    const/4 p3, 0x1

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    :goto_14
    iput-boolean p3, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    .line 140
    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    .line 141
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "content://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/provider/SearchRecentSuggestions;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/suggestions"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    .line 145
    return-void

    .line 134
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private greylist-max-o saveRecentQueryBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 189
    iget-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 194
    :try_start_a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 195
    const-string v4, "display1"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-boolean v4, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-eqz v4, :cond_1d

    .line 197
    const-string v4, "display2"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1d
    const-string/jumbo p2, "query"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string p1, "date"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    iget-object p1, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_31} :catch_32

    .line 204
    goto :goto_3b

    .line 202
    :catch_32
    move-exception p1

    .line 203
    const-string p2, "SearchSuggestions"

    const-string/jumbo v1, "saveRecentQuery"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :goto_3b
    const/16 p1, 0xfa

    invoke-virtual {p0, v0, p1}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    .line 208
    return-void
.end method


# virtual methods
.method public whitelist clearHistory()V
    .registers 3

    .line 219
    iget-object v0, p0, Landroid/provider/SearchRecentSuggestions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/provider/SearchRecentSuggestions;->truncateHistory(Landroid/content/ContentResolver;I)V

    .line 221
    return-void
.end method

.method public whitelist saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    return-void

    .line 165
    :cond_7
    iget-boolean v0, p0, Landroid/provider/SearchRecentSuggestions;->mTwoLineDisplay:Z

    if-nez v0, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_18

    .line 166
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 169
    :cond_18
    :goto_18
    new-instance v0, Landroid/provider/SearchRecentSuggestions$1;

    const-string/jumbo v1, "saveRecentQuery"

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/provider/SearchRecentSuggestions$1;-><init>(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions$1;->start()V

    .line 176
    return-void
.end method

.method protected whitelist truncateHistory(Landroid/content/ContentResolver;I)V
    .registers 6

    .line 230
    if-ltz p2, :cond_35

    .line 236
    nop

    .line 237
    const/4 v0, 0x0

    if-lez p2, :cond_24

    .line 238
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN (SELECT _id FROM suggestions ORDER BY date DESC LIMIT -1 OFFSET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_25

    .line 237
    :cond_24
    move-object p2, v0

    .line 243
    :goto_25
    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_2a} :catch_2b

    .line 246
    goto :goto_34

    .line 244
    :catch_2b
    move-exception p1

    .line 245
    const-string p2, "SearchSuggestions"

    const-string/jumbo v0, "truncateHistory"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :goto_34
    return-void

    .line 231
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method greylist-max-o waitForSave()V
    .registers 2

    .line 184
    nop

    :cond_1
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 185
    sget-object v0, Landroid/provider/SearchRecentSuggestions;->sWritesInProgress:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-gtz v0, :cond_1

    .line 186
    return-void
.end method
