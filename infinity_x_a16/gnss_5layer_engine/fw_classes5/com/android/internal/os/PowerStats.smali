.class public final Lcom/android/internal/os/PowerStats;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerStats$Descriptor;,
        Lcom/android/internal/os/PowerStats$DescriptorRegistry;,
        Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    }
.end annotation


# static fields
.field public static final blacklist MAX_STATE_STATS_ARRAY_LENGTH:I

.field public static final blacklist MAX_STATS_ARRAY_LENGTH:I

.field public static final blacklist MAX_UID_STATS_ARRAY_LENGTH:I

.field private static final blacklist PARCEL_FORMAT_VERSION:B = 0x3t

.field private static final blacklist PARCEL_FORMAT_VERSION_MASK:I = 0x3f

.field private static final blacklist PARCEL_FORMAT_VERSION_SHIFT:I

.field private static final blacklist STATE_STATS_ARRAY_LENGTH_MASK:I = 0xff0000

.field private static final blacklist STATE_STATS_ARRAY_LENGTH_SHIFT:I

.field private static final blacklist STATS_ARRAY_LENGTH_MASK:I = 0xffc0

.field private static final blacklist STATS_ARRAY_LENGTH_SHIFT:I

.field private static final blacklist TAG:Ljava/lang/String; = "PowerStats"

.field private static final blacklist UID_STATS_ARRAY_LENGTH_MASK:I = -0x1000000

.field private static final blacklist UID_STATS_ARRAY_LENGTH_SHIFT:I

.field private static final blacklist VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;


# instance fields
.field public final blacklist descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public blacklist durationMs:J

.field public final blacklist stateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field public blacklist stats:[J

.field public final blacklist uidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I
    .registers 1

    sget v0, Lcom/android/internal/os/PowerStats;->PARCEL_FORMAT_VERSION_SHIFT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I
    .registers 1

    sget v0, Lcom/android/internal/os/PowerStats;->STATE_STATS_ARRAY_LENGTH_SHIFT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I
    .registers 1

    sget v0, Lcom/android/internal/os/PowerStats;->STATS_ARRAY_LENGTH_SHIFT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I
    .registers 1

    sget v0, Lcom/android/internal/os/PowerStats;->UID_STATS_ARRAY_LENGTH_SHIFT:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 53
    new-instance v0, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    .line 58
    nop

    .line 59
    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lcom/android/internal/os/PowerStats;->PARCEL_FORMAT_VERSION_SHIFT:I

    .line 61
    nop

    .line 62
    const v0, 0xffc0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    sput v1, Lcom/android/internal/os/PowerStats;->STATS_ARRAY_LENGTH_SHIFT:I

    .line 63
    nop

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    .line 66
    nop

    .line 67
    const/high16 v0, 0xff0000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    sput v2, Lcom/android/internal/os/PowerStats;->STATE_STATS_ARRAY_LENGTH_SHIFT:I

    .line 68
    nop

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    .line 71
    nop

    .line 72
    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    sput v2, Lcom/android/internal/os/PowerStats;->UID_STATS_ARRAY_LENGTH_SHIFT:I

    .line 73
    nop

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .registers 3

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    .line 458
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 461
    iput-object p1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 462
    iget p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 463
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/PowerStats$DescriptorRegistry;)Lcom/android/internal/os/PowerStats;
    .registers 16

    .line 503
    const-string v0, " is outside the parcel bounds: "

    const-string v1, "PowerStats end position: "

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 504
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 505
    add-int v4, v3, v2

    .line 508
    :try_start_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 510
    invoke-virtual {p1, v5}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->get(I)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_150

    .line 511
    const/4 v6, 0x0

    const-string v7, "PowerStats"

    if-nez p1, :cond_66

    .line 512
    :try_start_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PowerStats for power component ID: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_150

    .line 513
    nop

    .line 546
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    if-le v4, p1, :cond_65

    .line 547
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    if-ge v4, p1, :cond_42

    .line 552
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_65

    .line 548
    :cond_42
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 513
    :cond_65
    :goto_65
    return-object v6

    .line 515
    :cond_66
    :try_start_66
    new-instance v5, Lcom/android/internal/os/PowerStats;

    invoke-direct {v5, p1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 516
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 517
    iget v8, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v8, v8, [J

    iput-object v8, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 518
    sget-object v8, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v9, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v8, p0, v9}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    .line 520
    iget v8, p1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    const/4 v9, 0x0

    if-eqz v8, :cond_9f

    .line 521
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 522
    move v10, v9

    :goto_88
    if-ge v10, v8, :cond_9f

    .line 523
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 524
    iget v12, p1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    new-array v12, v12, [J

    .line 525
    sget-object v13, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-virtual {v13, p0, v12}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    .line 526
    iget-object v13, v5, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 522
    add-int/lit8 v10, v10, 0x1

    goto :goto_88

    .line 530
    :cond_9f
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 531
    nop

    :goto_a4
    if-ge v9, v8, :cond_bb

    .line 532
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 533
    iget v11, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v11, v11, [J

    .line 534
    sget-object v12, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    invoke-virtual {v12, p0, v11}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->readLongArray(Landroid/os/Parcel;[J)V

    .line 535
    iget-object v12, v5, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 531
    add-int/lit8 v9, v9, 0x1

    goto :goto_a4

    .line 537
    :cond_bb
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    if-eq p1, v4, :cond_11b

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Corrupted PowerStats parcel. Expected length: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", actual length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 539
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-static {v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catchall {:try_start_66 .. :try_end_e6} :catchall_150

    .line 540
    nop

    .line 546
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    if-le v4, p1, :cond_11a

    .line 547
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    if-ge v4, p1, :cond_f7

    .line 552
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_11a

    .line 548
    :cond_f7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_11a
    :goto_11a
    return-object v6

    .line 542
    :cond_11b
    nop

    .line 546
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    if-le v4, p1, :cond_14f

    .line 547
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p1

    if-ge v4, p1, :cond_12c

    .line 552
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_14f

    .line 548
    :cond_12c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 542
    :cond_14f
    :goto_14f
    return-object v5

    .line 546
    :catchall_150
    move-exception p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-le v4, v2, :cond_183

    .line 547
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    if-lt v4, v2, :cond_180

    .line 548
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 552
    :cond_180
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 554
    :cond_183
    throw p1
.end method


# virtual methods
.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 590
    iget-wide v2, p0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "duration"

    invoke-virtual {p1, v2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 592
    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    if-eqz v0, :cond_4f

    .line 593
    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v2}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 595
    :cond_4f
    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    const/4 v2, 0x0

    if-eqz v0, :cond_91

    .line 596
    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v0

    .line 597
    move v3, v2

    :goto_5d
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_91

    .line 598
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 599
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v5, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 600
    const-string v4, ") "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 597
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 605
    :cond_91
    iget-object v0, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v0

    .line 606
    nop

    :goto_98
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_d3

    .line 607
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 609
    goto :goto_d0

    .line 612
    :cond_b3
    const-string v3, "UID "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 613
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 614
    const-string v3, ": "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 606
    :goto_d0
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 618
    :cond_d3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 619
    return-void
.end method

.method public blacklist formatForBatteryHistory(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    const-string v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    array-length v1, v1

    if-lez v1, :cond_38

    .line 564
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_38
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    const/4 v2, 0x0

    if-eqz v1, :cond_79

    .line 567
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v1

    .line 568
    move v3, v2

    :goto_46
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_79

    .line 569
    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v5, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 575
    :cond_79
    iget-object v1, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v1

    .line 576
    nop

    :goto_80
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_b2

    .line 577
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 578
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 579
    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v1, v4}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 581
    :cond_b2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerStats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID "

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerStats;->formatForBatteryHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 470
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 473
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, v3, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-wide v3, p0, Lcom/android/internal/os/PowerStats;->durationMs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 475
    sget-object v3, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    .line 477
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, v3, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-eqz v3, :cond_50

    .line 478
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    move v3, v1

    :goto_2f
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 480
    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    sget-object v4, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v5, p0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 485
    :cond_50
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    nop

    :goto_5a
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_7b

    .line 487
    iget-object v3, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    sget-object v3, Lcom/android/internal/os/PowerStats;->VARINT_PARCELER:Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;

    iget-object v4, p0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;->writeLongArray(Landroid/os/Parcel;[J)V

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 491
    :cond_7b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 492
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 493
    sub-int v0, v1, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 495
    return-void
.end method
