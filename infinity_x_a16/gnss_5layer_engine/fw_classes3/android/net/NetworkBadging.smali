.class public Landroid/net/NetworkBadging;
.super Ljava/lang/Object;
.source "NetworkBadging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkBadging$Badging;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist BADGING_4K:I = 0x1e

.field public static final greylist BADGING_HD:I = 0x14

.field public static final greylist BADGING_NONE:I = 0x0

.field public static final greylist BADGING_SD:I = 0xa


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getWifiIcon(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 66
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0}, Landroid/net/NetworkBadging;->getWifiSignalResource(I)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getWifiSignalResource(I)I
    .registers 4

    .line 81
    packed-switch p0, :pswitch_data_30

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_1c
    const p0, 0x1080623

    return p0

    .line 89
    :pswitch_20
    const p0, 0x1080622

    return p0

    .line 87
    :pswitch_24
    const p0, 0x1080621

    return p0

    .line 85
    :pswitch_28
    const p0, 0x1080620

    return p0

    .line 83
    :pswitch_2c
    const p0, 0x108061f

    return p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
