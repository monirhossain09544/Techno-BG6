.class public Landroid/os/IHintManager$HintManagerClientData;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HintManagerClientData"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IHintManager$HintManagerClientData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist maxCpuHeadroomThreads:I

.field public blacklist maxGraphicsPipelineThreads:I

.field public blacklist powerHalVersion:I

.field public blacklist preferredRateNanos:J

.field public blacklist supportInfo:Landroid/hardware/power/SupportInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 661
    new-instance v0, Landroid/os/IHintManager$HintManagerClientData$1;

    invoke-direct {v0}, Landroid/os/IHintManager$HintManagerClientData$1;-><init>()V

    sput-object v0, Landroid/os/IHintManager$HintManagerClientData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/IHintManager$HintManagerClientData;->powerHalVersion:I

    .line 657
    iput v0, p0, Landroid/os/IHintManager$HintManagerClientData;->maxGraphicsPipelineThreads:I

    .line 658
    iput v0, p0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    .line 659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/IHintManager$HintManagerClientData;->preferredRateNanos:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 717
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 718
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 719
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 721
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 712
    nop

    .line 713
    iget-object v0, p0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    invoke-direct {p0, v0}, Landroid/os/IHintManager$HintManagerClientData;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 714
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ac

    .line 693
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 704
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 707
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 693
    return-void

    .line 705
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 694
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IHintManager$HintManagerClientData;->powerHalVersion:I

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 704
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 707
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 695
    return-void

    .line 705
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IHintManager$HintManagerClientData;->maxGraphicsPipelineThreads:I

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 704
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 707
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 697
    return-void

    .line 705
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 698
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 704
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 707
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 699
    return-void

    .line 705
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 700
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/os/IHintManager$HintManagerClientData;->preferredRateNanos:J

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 704
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 707
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 701
    return-void

    .line 705
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 702
    :cond_91
    :try_start_91
    sget-object v2, Landroid/hardware/power/SupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/SupportInfo;

    iput-object v2, p0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_aa

    .line 704
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a4

    .line 707
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 708
    nop

    .line 709
    return-void

    .line 705
    :cond_a4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :catchall_aa
    move-exception v2

    goto :goto_b4

    .line 692
    :cond_ac
    :try_start_ac
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_aa

    .line 704
    :goto_b4
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_bd

    .line 705
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 707
    :cond_bd
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 708
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 676
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    iget v1, p0, Landroid/os/IHintManager$HintManagerClientData;->powerHalVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget v1, p0, Landroid/os/IHintManager$HintManagerClientData;->maxGraphicsPipelineThreads:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget v1, p0, Landroid/os/IHintManager$HintManagerClientData;->maxCpuHeadroomThreads:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    iget-wide v1, p0, Landroid/os/IHintManager$HintManagerClientData;->preferredRateNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 681
    iget-object v1, p0, Landroid/os/IHintManager$HintManagerClientData;->supportInfo:Landroid/hardware/power/SupportInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 683
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 684
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 686
    return-void
.end method
