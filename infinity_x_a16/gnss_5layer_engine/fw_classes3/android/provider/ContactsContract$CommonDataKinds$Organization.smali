.class public final Landroid/provider/ContactsContract$CommonDataKinds$Organization;
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
    name = "Organization"
.end annotation


# static fields
.field public static final whitelist COMPANY:Ljava/lang/String; = "data1"

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/organization"

.field public static final whitelist DEPARTMENT:Ljava/lang/String; = "data5"

.field public static final whitelist JOB_DESCRIPTION:Ljava/lang/String; = "data6"

.field public static final whitelist OFFICE_LOCATION:Ljava/lang/String; = "data9"

.field public static final whitelist PHONETIC_NAME:Ljava/lang/String; = "data8"

.field public static final whitelist PHONETIC_NAME_STYLE:Ljava/lang/String; = "data10"

.field public static final whitelist SYMBOL:Ljava/lang/String; = "data7"

.field public static final whitelist TITLE:Ljava/lang/String; = "data4"

.field public static final whitelist TYPE_OTHER:I = 0x2

.field public static final whitelist TYPE_WORK:I = 0x1


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 7681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 7756
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7757
    return-object p2

    .line 7759
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabelResource(I)I

    move-result p1

    .line 7760
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 1

    .line 7742
    packed-switch p0, :pswitch_data_10

    .line 7745
    const p0, 0x104071d

    return p0

    .line 7744
    :pswitch_7
    const p0, 0x104071e

    return p0

    .line 7743
    :pswitch_b
    const p0, 0x104071f

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
