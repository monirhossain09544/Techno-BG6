.class public final Landroid/os/BatteryStats$HistoryTag;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryTag"
.end annotation


# static fields
.field public static final blacklist HISTORY_TAG_POOL_OVERFLOW:I = -0x1


# instance fields
.field public greylist-max-o poolIdx:I

.field public greylist-max-o string:Ljava/lang/String;

.field public greylist-max-o uid:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1573
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1574
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 1576
    :cond_12
    check-cast p1, Landroid/os/BatteryStats$HistoryTag;

    .line 1578
    iget v2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget v3, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 1579
    :cond_1b
    iget-object v2, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    .line 1581
    :cond_26
    return v0

    .line 1574
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1586
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1587
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    add-int/2addr v0, v1

    .line 1588
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 1566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1568
    const/4 p1, -0x1

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1569
    return-void
.end method

.method public greylist-max-o setTo(Landroid/os/BatteryStats$HistoryTag;)V
    .registers 3

    .line 1549
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1550
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1551
    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1552
    return-void
.end method

.method public greylist-max-o setTo(Ljava/lang/String;I)V
    .registers 3

    .line 1555
    iput-object p1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1556
    iput p2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1557
    const/4 p1, -0x1

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1558
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1561
    iget-object p2, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1562
    iget p2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    return-void
.end method
