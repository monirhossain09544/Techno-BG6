.class Landroid/os/BatteryStats$ProportionalAttributionCalculator;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProportionalAttributionCalculator"
.end annotation


# static fields
.field private static final blacklist SYSTEM_BATTERY_CONSUMER:D = -1.0


# instance fields
.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mProportionalPowerMah:Landroid/util/SparseDoubleArray;

.field private final blacklist mSystemAndServicePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V
    .registers 15

    .line 8861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8862
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8863
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 8864
    const v0, 0x1070029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 8866
    const v1, 0x1070028

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 8868
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    .line 8870
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_28
    if-ge v3, v1, :cond_34

    aget-object v4, v0, v3

    .line 8871
    iget-object v5, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8870
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 8873
    :cond_34
    array-length v0, p1

    :goto_35
    if-ge v2, v0, :cond_41

    aget-object v1, p1, v2

    .line 8874
    iget-object v3, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8873
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 8877
    :cond_41
    invoke-virtual {p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object p1

    .line 8878
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseDoubleArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    .line 8879
    nop

    .line 8880
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_59
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-ltz v0, :cond_7a

    .line 8881
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    .line 8882
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v6

    .line 8883
    invoke-direct {p0, v6}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 8884
    iget-object v7, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {v7, v6, v3, v4}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 8885
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 8880
    :cond_77
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 8889
    :cond_7a
    invoke-virtual {p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v5

    sub-double/2addr v5, v1

    .line 8890
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p2, v7, v9

    if-lez p2, :cond_b8

    .line 8891
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_92
    if-ltz p2, :cond_b8

    .line 8892
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer;

    .line 8893
    invoke-virtual {v0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v7

    .line 8894
    iget-object v8, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v8

    cmpl-double v8, v8, v3

    if-eqz v8, :cond_b5

    .line 8895
    invoke-virtual {v0}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v8

    .line 8896
    iget-object v0, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    mul-double v10, v1, v8

    div-double/2addr v10, v5

    add-double/2addr v8, v10

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 8891
    :cond_b5
    add-int/lit8 p2, p2, -0x1

    goto :goto_92

    .line 8901
    :cond_b8
    return-void
.end method

.method private blacklist isSystemUid(I)Z
    .registers 8

    .line 8916
    const/4 v0, 0x1

    if-ltz p1, :cond_8

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_8

    .line 8917
    return v0

    .line 8920
    :cond_8
    iget-object v1, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 8921
    const/4 v1, 0x0

    if-nez p1, :cond_12

    .line 8922
    return v1

    .line 8925
    :cond_12
    array-length v2, p1

    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_24

    aget-object v4, p1, v3

    .line 8926
    iget-object v5, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mSystemAndServicePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 8927
    return v0

    .line 8925
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 8931
    :cond_24
    return v1
.end method


# virtual methods
.method blacklist getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D
    .registers 6

    .line 8908
    iget-object v0, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    .line 8909
    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_11

    goto :goto_12

    :cond_11
    move-wide v0, v2

    :goto_12
    return-wide v0
.end method

.method blacklist isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z
    .registers 6

    .line 8904
    iget-object v0, p0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->mProportionalPowerMah:Landroid/util/SparseDoubleArray;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
