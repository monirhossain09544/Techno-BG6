.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$BookmarkColumns;,
        Landroid/provider/Browser$SearchColumns;
    }
.end annotation


# static fields
.field public static final greylist BOOKMARKS_URI:Landroid/net/Uri;

.field public static final whitelist EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final whitelist EXTRA_CREATE_NEW_TAB:Ljava/lang/String; = "create_new_tab"

.field public static final whitelist EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final greylist-max-o EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final greylist-max-o EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final greylist HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final greylist HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final greylist HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final greylist HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final greylist HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final greylist-max-o HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final greylist HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final greylist-max-o HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final greylist HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final greylist HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final whitelist INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "browser"

.field private static final greylist-max-o MAX_HISTORY_COUNT:I = 0xfa

.field public static final greylist SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final greylist SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final greylist SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final greylist SEARCHES_URI:Landroid/net/Uri;

.field public static final greylist TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final greylist TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final greylist TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 41
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 74
    const-string/jumbo v9, "touch_icon"

    const-string/jumbo v10, "user_entered"

    const-string v1, "_id"

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "visits"

    const-string v4, "date"

    const-string v5, "bookmark"

    const-string/jumbo v6, "title"

    const-string v7, "favicon"

    const-string/jumbo v8, "thumbnail"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 117
    const-string v0, "_id"

    const-string v1, "date"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 133
    const-string v2, "content://browser/searches"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 140
    const-string/jumbo v2, "search"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final greylist-max-o addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 261
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    return-void
.end method

.method public static final greylist addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 2

    .line 397
    return-void
.end method

.method public static final greylist canClearHistory(Landroid/content/ContentResolver;)Z
    .registers 1

    .line 350
    const/4 p0, 0x0

    return p0
.end method

.method public static final greylist clearHistory(Landroid/content/ContentResolver;)V
    .registers 1

    .line 362
    return-void
.end method

.method public static final greylist clearSearches(Landroid/content/ContentResolver;)V
    .registers 1

    .line 406
    return-void
.end method

.method public static final greylist deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 2

    .line 387
    return-void
.end method

.method public static final greylist deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .registers 5

    .line 376
    return-void
.end method

.method public static final greylist getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 245
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "url"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0
.end method

.method public static final greylist getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 257
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "url"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0
.end method

.method public static final greylist getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static final greylist-max-o getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    .line 265
    nop

    .line 266
    nop

    .line 267
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "https://"

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 268
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 269
    :cond_13
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 270
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    const/4 v3, 0x1

    .line 273
    :cond_20
    :goto_20
    const-string/jumbo v1, "www."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 274
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 276
    :cond_2e
    nop

    .line 277
    const-string/jumbo v4, "url = "

    if-eqz v3, :cond_67

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 281
    invoke-static {v0}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_b5

    .line 285
    :cond_67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 288
    invoke-static {v2}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 292
    invoke-static {v2}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 295
    invoke-static {v2}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object v0, v2

    .line 299
    :goto_b5
    sget-object v2, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "_id"

    const-string/jumbo v1, "visits"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 299
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final greylist requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 3

    .line 423
    return-void
.end method

.method public static final greylist saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 172
    return-void
.end method

.method public static final whitelist sendString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 205
    const v0, 0x10409d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static final greylist sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :try_start_12
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 229
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_1e} :catch_1f

    .line 233
    goto :goto_20

    .line 231
    :catch_1f
    move-exception p0

    .line 234
    :goto_20
    return-void
.end method

.method public static final greylist truncateHistory(Landroid/content/ContentResolver;)V
    .registers 1

    .line 340
    return-void
.end method

.method public static final greylist updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 3

    .line 315
    return-void
.end method
