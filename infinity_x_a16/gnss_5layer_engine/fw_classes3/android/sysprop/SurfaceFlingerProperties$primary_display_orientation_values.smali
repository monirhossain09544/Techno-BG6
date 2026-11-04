.class public final enum Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;
.super Ljava/lang/Enum;
.source "SurfaceFlingerProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/SurfaceFlingerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "primary_display_orientation_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum blacklist ORIENTATION_0:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum blacklist ORIENTATION_180:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum blacklist ORIENTATION_270:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum blacklist ORIENTATION_90:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;


# instance fields
.field private final blacklist propValue:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;
    .registers 4

    .line 233
    sget-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_0:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    sget-object v1, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_90:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    sget-object v2, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_180:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    sget-object v3, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_270:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    filled-new-array {v0, v1, v2, v3}, [Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 234
    new-instance v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v1, "ORIENTATION_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_0:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    .line 235
    new-instance v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v1, "ORIENTATION_90"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_90:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    .line 236
    new-instance v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v1, "ORIENTATION_180"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_180:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    .line 237
    new-instance v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v1, "ORIENTATION_270"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_270:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    .line 233
    invoke-static {}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->$values()[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    move-result-object v0

    sput-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->$VALUES:[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput-object p3, p0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->propValue:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 233
    const-class v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    return-object p0
.end method

.method public static blacklist values()[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;
    .registers 1

    .line 233
    sget-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->$VALUES:[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    invoke-virtual {v0}, [Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    return-object v0
.end method


# virtual methods
.method public blacklist getPropValue()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
