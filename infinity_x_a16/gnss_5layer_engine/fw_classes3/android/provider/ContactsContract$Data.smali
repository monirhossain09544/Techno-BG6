.class public final Landroid/provider/ContactsContract$Data;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/data"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field static final greylist-max-o ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist VISIBLE_CONTACTS_ONLY:Ljava/lang/String; = "visible_contacts_only"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 5533
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 5541
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10

    .line 5570
    const-string v0, "contact_id"

    const-string v1, "lookup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 5574
    nop

    .line 5576
    if-eqz p0, :cond_36

    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 5577
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 5578
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5579
    invoke-static {v0, v1, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_2e

    .line 5582
    if-eqz p0, :cond_2d

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 5579
    :cond_2d
    return-object p1

    .line 5582
    :catchall_2e
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_35

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 5583
    :cond_35
    throw p1

    .line 5582
    :cond_36
    if-eqz p0, :cond_3b

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 5584
    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method
