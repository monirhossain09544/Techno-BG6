.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final greylist-max-o mask:I

.field public final greylist-max-o name:Ljava/lang/String;

.field public final greylist-max-o shift:I

.field public final greylist-max-o shortName:Ljava/lang/String;

.field public final greylist-max-o shortValues:[Ljava/lang/String;

.field public final greylist-max-o values:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    .line 2297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 2299
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 2300
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 2301
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 2302
    iput-object p5, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 2303
    iput-object p6, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 2304
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2288
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 2289
    const/4 p1, -0x1

    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 2290
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 2291
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 2292
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 2293
    iput-object p1, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    .line 2294
    return-void
.end method
