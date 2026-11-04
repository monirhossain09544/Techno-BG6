.class public final Landroid/provider/Contacts$Settings;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$SettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "settings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "key ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SYNC_EVERYTHING:Ljava/lang/String; = "syncEverything"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 154
    nop

    .line 155
    const-string v0, "content://contacts/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    .line 154
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    nop

    .line 205
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    .line 207
    sget-object v1, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo p1, "value"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "key=?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 210
    :try_start_16
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2a

    if-nez p1, :cond_21

    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_21
    const/4 p1, 0x0

    :try_start_22
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 211
    return-object p1

    .line 213
    :catchall_2a
    move-exception v0

    move-object p1, v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 214
    throw p1
.end method

.method public static whitelist setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 230
    const-string v0, "key"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo p2, "value"

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object p2, Landroid/provider/Contacts$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    return-void
.end method
