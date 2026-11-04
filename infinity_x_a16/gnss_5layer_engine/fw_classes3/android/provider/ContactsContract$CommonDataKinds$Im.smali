.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
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
    name = "Im"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final whitelist CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final whitelist PROTOCOL:Ljava/lang/String; = "data5"

.field public static final whitelist PROTOCOL_AIM:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_CUSTOM:I = -0x1

.field public static final whitelist PROTOCOL_GOOGLE_TALK:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_ICQ:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_JABBER:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_MSN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_NETMEETING:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_QQ:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_SKYPE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_YAHOO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_OTHER:I = 0x3

.field public static final whitelist TYPE_WORK:I = 0x2


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 7461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 7583
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 7584
    return-object p2

    .line 7586
    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result p1

    .line 7587
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getProtocolLabelResource(I)I
    .registers 1

    .line 7562
    packed-switch p0, :pswitch_data_2c

    .line 7572
    const p0, 0x10404d4

    return p0

    .line 7571
    :pswitch_7
    const p0, 0x10404d9

    return p0

    .line 7570
    :pswitch_b
    const p0, 0x10404d7

    return p0

    .line 7569
    :pswitch_f
    const p0, 0x10404d6

    return p0

    .line 7568
    :pswitch_13
    const p0, 0x10404d5

    return p0

    .line 7567
    :pswitch_17
    const p0, 0x10404da

    return p0

    .line 7566
    :pswitch_1b
    const p0, 0x10404db

    return p0

    .line 7565
    :pswitch_1f
    const p0, 0x10404dc

    return p0

    .line 7564
    :pswitch_23
    const p0, 0x10404d8

    return p0

    .line 7563
    :pswitch_27
    const p0, 0x10404d3

    return p0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
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

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 7549
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7550
    return-object p2

    .line 7552
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result p1

    .line 7553
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 1

    .line 7534
    packed-switch p0, :pswitch_data_14

    .line 7538
    const p0, 0x10404dd

    return p0

    .line 7537
    :pswitch_7
    const p0, 0x10404df

    return p0

    .line 7536
    :pswitch_b
    const p0, 0x10404e0

    return p0

    .line 7535
    :pswitch_f
    const p0, 0x10404de

    return p0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
