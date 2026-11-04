.class public Landroid/provider/UserDictionary$Words;
.super Ljava/lang/Object;
.source "UserDictionary.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/UserDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Words"
.end annotation


# static fields
.field public static final whitelist APP_ID:Ljava/lang/String; = "appid"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.userword"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.userword"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "frequency DESC"

.field public static final whitelist FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final whitelist LOCALE:Ljava/lang/String; = "locale"

.field public static final whitelist LOCALE_TYPE_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCALE_TYPE_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final whitelist WORD:Ljava/lang/String; = "word"

.field public static final whitelist _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    nop

    .line 57
    const-string v0, "content://user_dictionary/words"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addWord(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const/4 v0, 0x1

    if-eqz p3, :cond_6

    if-eq p3, v0, :cond_6

    .line 136
    return-void

    .line 141
    :cond_6
    const/4 v1, 0x0

    if-ne p3, v0, :cond_e

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    goto :goto_f

    .line 144
    :cond_e
    move-object p3, v1

    .line 147
    :goto_f
    invoke-static {p0, p1, p2, v1, p3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    .line 148
    return-void
.end method

.method public static whitelist addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V
    .registers 8

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    return-void

    .line 169
    :cond_b
    const/4 v0, 0x0

    if-gez p2, :cond_f

    move p2, v0

    .line 170
    :cond_f
    const/16 v1, 0xff

    if-le p2, v1, :cond_14

    move p2, v1

    .line 173
    :cond_14
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 175
    const-string/jumbo v2, "word"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string p1, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    if-nez p4, :cond_2d

    const/4 p1, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_31
    const-string p2, "locale"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string p1, "appid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string/jumbo p1, "shortcut"

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object p1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 184
    return-void
.end method
