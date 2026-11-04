.class public final Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VarintParceler"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist readLongArray(Landroid/os/Parcel;[J)V
    .registers 15

    .line 2462
    array-length v0, p2

    if-nez v0, :cond_4

    .line 2463
    return-void

    .line 2465
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2466
    nop

    .line 2467
    const/4 v1, 0x0

    const/4 v2, 0x4

    move v3, v1

    move v4, v2

    :goto_d
    array-length v5, p2

    if-ge v3, v5, :cond_40

    .line 2468
    nop

    .line 2470
    const-wide/16 v5, 0x0

    move v7, v1

    :goto_14
    const/16 v8, 0x40

    if-ge v7, v8, :cond_33

    .line 2471
    if-nez v4, :cond_1f

    .line 2472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2473
    move v4, v2

    .line 2475
    :cond_1f
    int-to-byte v9, v0

    .line 2476
    shr-int/lit8 v0, v0, 0x8

    .line 2477
    add-int/lit8 v4, v4, -0x1

    .line 2479
    and-int/lit8 v10, v9, 0x7f

    int-to-long v10, v10

    shl-long/2addr v10, v7

    or-long/2addr v5, v10

    .line 2480
    and-int/lit16 v9, v9, 0x80

    if-nez v9, :cond_30

    .line 2481
    aput-wide v5, p2, v3

    .line 2482
    goto :goto_33

    .line 2470
    :cond_30
    add-int/lit8 v7, v7, 0x7

    goto :goto_14

    .line 2485
    :cond_33
    :goto_33
    if-ge v7, v8, :cond_38

    .line 2467
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2486
    :cond_38
    new-instance p1, Landroid/os/ParcelFormatException;

    const-string p2, "Invalid varint format"

    invoke-direct {p1, p2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2489
    :cond_40
    return-void
.end method

.method public blacklist writeLongArray(Landroid/os/Parcel;[J)V
    .registers 16

    .line 2428
    array-length v0, p2

    if-nez v0, :cond_4

    .line 2429
    return-void

    .line 2431
    :cond_4
    nop

    .line 2432
    nop

    .line 2433
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_b
    if-ge v2, v0, :cond_3e

    aget-wide v5, p2, v2

    .line 2434
    move v7, v1

    .line 2435
    :goto_10
    if-nez v7, :cond_3b

    .line 2437
    const-wide/16 v8, -0x80

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_22

    .line 2438
    long-to-int v7, v5

    int-to-byte v7, v7

    .line 2439
    const/4 v8, 0x1

    move v12, v8

    move v8, v7

    move v7, v12

    goto :goto_2a

    .line 2441
    :cond_22
    long-to-int v8, v5

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2442
    const/4 v9, 0x7

    ushr-long/2addr v5, v9

    .line 2444
    :goto_2a
    const/16 v9, 0x20

    if-ne v3, v9, :cond_34

    .line 2445
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2446
    nop

    .line 2447
    move v3, v1

    move v4, v3

    .line 2449
    :cond_34
    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v3

    or-int/2addr v4, v8

    .line 2450
    add-int/lit8 v3, v3, 0x8

    .line 2451
    goto :goto_10

    .line 2433
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2453
    :cond_3e
    if-eqz v3, :cond_43

    .line 2454
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2456
    :cond_43
    return-void
.end method
