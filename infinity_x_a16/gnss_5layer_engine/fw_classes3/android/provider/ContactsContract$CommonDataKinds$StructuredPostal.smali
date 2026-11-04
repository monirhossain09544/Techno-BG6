.class public final Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StructuredPostal"
.end annotation


# static fields
.field public static final whitelist CITY:Ljava/lang/String; = "data7"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address_v2"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/postal-address_v2"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist COUNTRY:Ljava/lang/String; = "data10"

.field public static final whitelist FORMATTED_ADDRESS:Ljava/lang/String; = "data1"

.field public static final whitelist NEIGHBORHOOD:Ljava/lang/String; = "data6"

.field public static final whitelist POBOX:Ljava/lang/String; = "data5"

.field public static final whitelist POSTCODE:Ljava/lang/String; = "data9"

.field public static final whitelist REGION:Ljava/lang/String; = "data8"

.field public static final whitelist STREET:Ljava/lang/String; = "data4"

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_OTHER:I = 0x3

.field public static final whitelist TYPE_WORK:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 7292
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "postals"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 7275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7276
    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 7384
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7385
    return-object p2

    .line 7387
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result p1

    .line 7388
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 1

    .line 7369
    packed-switch p0, :pswitch_data_14

    .line 7373
    const p0, 0x1040909

    return p0

    .line 7372
    :pswitch_7
    const p0, 0x104090b

    return p0

    .line 7371
    :pswitch_b
    const p0, 0x104090c

    return p0

    .line 7370
    :pswitch_f
    const p0, 0x104090a

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
