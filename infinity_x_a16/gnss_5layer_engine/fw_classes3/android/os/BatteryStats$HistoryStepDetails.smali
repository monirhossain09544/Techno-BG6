.class public final Landroid/os/BatteryStats$HistoryStepDetails;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryStepDetails"
.end annotation


# instance fields
.field public greylist-max-o appCpuSTime1:I

.field public greylist-max-o appCpuSTime2:I

.field public greylist-max-o appCpuSTime3:I

.field public greylist-max-o appCpuUTime1:I

.field public greylist-max-o appCpuUTime2:I

.field public greylist-max-o appCpuUTime3:I

.field public greylist-max-o appCpuUid1:I

.field public greylist-max-o appCpuUid2:I

.field public greylist-max-o appCpuUid3:I

.field public greylist-max-o statIOWaitTime:I

.field public greylist-max-o statIdlTime:I

.field public greylist-max-o statIrqTime:I

.field public greylist-max-o statSoftIrqTime:I

.field public greylist-max-o statSubsystemPowerState:Ljava/lang/String;

.field public greylist-max-o statSystemTime:I

.field public greylist-max-o statUserTime:I

.field public greylist-max-o systemTime:I

.field public greylist-max-o userTime:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryStepDetails;->clear()V

    .line 1626
    return-void
.end method


# virtual methods
.method public greylist-max-o clear()V
    .registers 3

    .line 1629
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 1630
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 1631
    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 1633
    return-void
.end method

.method public blacklist isEmpty()Z
    .registers 3

    .line 1679
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ne v0, v1, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ne v0, v1, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 1658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 1659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 1660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 1661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 1662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 1663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 1664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 1665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 1666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 1667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 1668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 1669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 1670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 1671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 1672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 1673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 1674
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 1675
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 1636
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    iget v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1653
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1654
    return-void
.end method
