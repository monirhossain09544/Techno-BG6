.class public final Landroid/provider/Settings$Bookmarks;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final greylist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o FOLDER:Ljava/lang/String; = "folder"

.field public static final greylist-max-o ID:Ljava/lang/String; = "_id"

.field public static final greylist-max-o INTENT:Ljava/lang/String; = "intent"

.field public static final greylist-max-o ORDERING:Ljava/lang/String; = "ordering"

.field public static final greylist-max-o SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Bookmarks"

.field public static final greylist-max-o TITLE:Ljava/lang/String; = "title"

.field private static final greylist-max-o sIntentProjection:[Ljava/lang/String;

.field private static final greylist-max-o sShortcutProjection:[Ljava/lang/String;

.field private static final greylist-max-o sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 23681
    nop

    .line 23682
    const-string v0, "content://settings/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 23734
    const-string v0, "intent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 23735
    const-string v0, "_id"

    const-string/jumbo v1, "shortcut"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 23673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .registers 9

    .line 23799
    if-eqz p4, :cond_12

    .line 23800
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 23801
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 23800
    const-string/jumbo v2, "shortcut=?"

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 23804
    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 23805
    if-eqz p2, :cond_1f

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23806
    :cond_1f
    if-eqz p3, :cond_26

    const-string p2, "folder"

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23807
    :cond_26
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "intent"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23808
    if-eqz p4, :cond_3c

    const-string/jumbo p1, "shortcut"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23809
    :cond_3c
    const-string/jumbo p1, "ordering"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23810
    sget-object p1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .registers 8

    .line 23750
    nop

    .line 23752
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 23754
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 23752
    const-string/jumbo v3, "shortcut=?"

    const-string/jumbo v5, "ordering"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    .line 23757
    :goto_19
    if-nez p1, :cond_44

    :try_start_1b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_3c

    if-eqz v0, :cond_44

    .line 23759
    :try_start_21
    const-string v0, "intent"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23760
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_30} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_30} :catch_31
    .catchall {:try_start_21 .. :try_end_30} :catchall_3c

    .line 23766
    :goto_30
    goto :goto_19

    .line 23763
    :catch_31
    move-exception v0

    .line 23765
    :try_start_32
    const-string v1, "Bookmarks"

    const-string v2, "Intent column not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3c

    goto :goto_30

    .line 23761
    :catch_3a
    move-exception v0

    goto :goto_30

    .line 23769
    :catchall_3c
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_43

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 23770
    :cond_43
    throw p1

    .line 23769
    :cond_44
    if-eqz p0, :cond_49

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 23772
    :cond_49
    return-object p1
.end method

.method public static greylist-max-o getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2

    .line 23825
    return-object p1
.end method

.method public static greylist-max-o getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 5

    .line 23840
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 23841
    const-string v1, "intent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 23842
    const/4 v2, -0x1

    if-eq v0, v2, :cond_41

    if-eq v1, v2, :cond_41

    .line 23847
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23848
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 23849
    return-object v0

    .line 23852
    :cond_1d
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23853
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2a

    .line 23854
    return-object v1

    .line 23859
    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_2f
    .catch Ljava/net/URISyntaxException; {:try_start_2b .. :try_end_2f} :catch_3f

    .line 23862
    nop

    .line 23864
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 23865
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 23866
    if-eqz p1, :cond_3e

    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_3e
    return-object v1

    .line 23860
    :catch_3f
    move-exception p0

    .line 23861
    return-object v1

    .line 23843
    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The cursor must contain the TITLE and INTENT columns."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
