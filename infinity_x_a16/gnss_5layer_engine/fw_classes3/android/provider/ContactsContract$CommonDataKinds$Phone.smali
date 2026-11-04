.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
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
    name = "Phone"
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final whitelist NUMBER:Ljava/lang/String; = "data1"

.field public static final whitelist SEARCH_DISPLAY_NAME_KEY:Ljava/lang/String; = "search_display_name"

.field public static final whitelist SEARCH_PHONE_NUMBER_KEY:Ljava/lang/String; = "search_phone_number"

.field public static final whitelist TYPE_ASSISTANT:I = 0x13

.field public static final whitelist TYPE_CALLBACK:I = 0x8

.field public static final whitelist TYPE_CAR:I = 0x9

.field public static final whitelist TYPE_COMPANY_MAIN:I = 0xa

.field public static final whitelist TYPE_FAX_HOME:I = 0x5

.field public static final whitelist TYPE_FAX_WORK:I = 0x4

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_ISDN:I = 0xb

.field public static final whitelist TYPE_MAIN:I = 0xc

.field public static final whitelist TYPE_MMS:I = 0x14

.field public static final whitelist TYPE_MOBILE:I = 0x2

.field public static final whitelist TYPE_OTHER:I = 0x7

.field public static final whitelist TYPE_OTHER_FAX:I = 0xd

.field public static final whitelist TYPE_PAGER:I = 0x6

.field public static final whitelist TYPE_RADIO:I = 0xe

.field public static final whitelist TYPE_TELEX:I = 0xf

.field public static final whitelist TYPE_TTY_TDD:I = 0x10

.field public static final whitelist TYPE_WORK:I = 0x3

.field public static final whitelist TYPE_WORK_MOBILE:I = 0x11

.field public static final whitelist TYPE_WORK_PAGER:I = 0x12


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 6795
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 6825
    sget-object v0, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 6826
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 6839
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 6853
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 6779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6924
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final greylist-max-o getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6913
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 6964
    if-eqz p1, :cond_6

    const/16 v0, 0x13

    if-ne p1, v0, :cond_d

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6965
    return-object p2

    .line 6967
    :cond_d
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result p1

    .line 6968
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 1

    .line 6932
    packed-switch p0, :pswitch_data_58

    .line 6953
    const p0, 0x10408d9

    return p0

    .line 6952
    :pswitch_7
    const p0, 0x10408df

    return p0

    .line 6951
    :pswitch_b
    const p0, 0x10408d5

    return p0

    .line 6950
    :pswitch_f
    const p0, 0x10408e9

    return p0

    .line 6949
    :pswitch_13
    const p0, 0x10408e8

    return p0

    .line 6948
    :pswitch_17
    const p0, 0x10408e6

    return p0

    .line 6947
    :pswitch_1b
    const p0, 0x10408e5

    return p0

    .line 6946
    :pswitch_1f
    const p0, 0x10408e4

    return p0

    .line 6945
    :pswitch_23
    const p0, 0x10408e2

    return p0

    .line 6944
    :pswitch_27
    const p0, 0x10408de

    return p0

    .line 6943
    :pswitch_2b
    const p0, 0x10408dd

    return p0

    .line 6942
    :pswitch_2f
    const p0, 0x10408d8

    return p0

    .line 6941
    :pswitch_33
    const p0, 0x10408d7

    return p0

    .line 6940
    :pswitch_37
    const p0, 0x10408d6

    return p0

    .line 6939
    :pswitch_3b
    const p0, 0x10408e1

    return p0

    .line 6938
    :pswitch_3f
    const p0, 0x10408e3

    return p0

    .line 6937
    :pswitch_43
    const p0, 0x10408da

    return p0

    .line 6936
    :pswitch_47
    const p0, 0x10408db

    return p0

    .line 6935
    :pswitch_4b
    const p0, 0x10408e7

    return p0

    .line 6934
    :pswitch_4f
    const p0, 0x10408e0

    return p0

    .line 6933
    :pswitch_53
    const p0, 0x10408dc

    return p0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
