.class public final Landroid/provider/Contacts$Organizations;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$OrganizationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organizations"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "organizations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "company, title, isprimary ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1780
    nop

    .line 1781
    const-string v0, "content://contacts/organizations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    .line 1780
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1757
    nop

    .line 1759
    if-eqz p1, :cond_1a

    .line 1760
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x1070002

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 1763
    add-int/lit8 p1, p1, -0x1

    :try_start_10
    aget-object p0, p0, p1
    :try_end_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_12} :catch_14

    .line 1766
    move-object p2, p0

    goto :goto_19

    .line 1764
    :catch_14
    move-exception p1

    .line 1765
    const/4 p1, 0x0

    aget-object p0, p0, p1

    move-object p2, p0

    .line 1767
    :goto_19
    goto :goto_23

    .line 1768
    :cond_1a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_21

    .line 1769
    goto :goto_23

    .line 1768
    :cond_21
    const-string p2, ""

    .line 1772
    :goto_23
    return-object p2
.end method
