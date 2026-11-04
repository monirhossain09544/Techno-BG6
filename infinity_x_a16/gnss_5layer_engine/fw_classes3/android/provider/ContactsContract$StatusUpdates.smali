.class public Landroid/provider/ContactsContract$StatusUpdates;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$StatusColumns;
.implements Landroid/provider/ContactsContract$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusUpdates"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/status-update"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/status-update"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist PROFILE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 6289
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "status_updates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    .line 6294
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 6295
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$StatusUpdates;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 6294
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 6284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/provider/ContactsContract-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/provider/ContactsContract$StatusUpdates;-><init>()V

    return-void
.end method

.method public static final whitelist getPresenceIconResourceId(I)I
    .registers 1

    .line 6304
    packed-switch p0, :pswitch_data_18

    .line 6316
    const p0, 0x108006a

    return p0

    .line 6306
    :pswitch_7
    const p0, 0x108006b

    return p0

    .line 6311
    :pswitch_b
    const p0, 0x1080068

    return p0

    .line 6309
    :pswitch_f
    const p0, 0x1080067

    return p0

    .line 6313
    :pswitch_13
    const p0, 0x1080069

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static final whitelist getPresencePrecedence(I)I
    .registers 1

    .line 6329
    return p0
.end method
