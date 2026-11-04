.class Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerDataLayout"
.end annotation


# static fields
.field private static final blacklist KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final blacklist columnCount:I

.field public final blacklist customPowerComponentCount:I

.field public final blacklist customPowerComponentNames:[Ljava/lang/String;

.field public final blacklist indexedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist keys:[Landroid/os/BatteryConsumer$Key;

.field private blacklist mPerComponentKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/os/BatteryConsumer$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist powerComponentIds:[I

.field public final blacklist powerStateDataIncluded:Z

.field public final blacklist processStateDataIncluded:Z

.field public final blacklist screenStateDataIncluded:Z

.field public final blacklist totalConsumedPowerColumnIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 854
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method private constructor blacklist <init>(I[Ljava/lang/String;ZZZ)V
    .registers 14

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    .line 871
    array-length p2, p2

    iput p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    .line 872
    iput-boolean p3, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    .line 873
    iput-boolean p4, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    .line 874
    iput-boolean p5, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    .line 876
    iget p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    const/16 v0, 0x13

    add-int/2addr p2, v0

    new-array p2, p2, [I

    iput-object p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    .line 877
    nop

    .line 878
    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    :goto_1b
    if-ge v1, v0, :cond_27

    .line 879
    iget-object v3, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    .line 878
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1b

    .line 881
    :cond_27
    move v0, p2

    :goto_28
    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_38

    .line 882
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    add-int/lit8 v3, v2, 0x1

    add-int/lit16 v4, v0, 0x3e8

    aput v4, v1, v2

    .line 881
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_28

    .line 885
    :cond_38
    nop

    .line 887
    add-int/lit8 v0, p1, 0x1

    iput p1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    .line 889
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 890
    move v5, p2

    :goto_43
    const/4 p1, 0x3

    if-ge v5, p1, :cond_78

    .line 891
    if-nez p4, :cond_4d

    if-eqz v5, :cond_4d

    .line 892
    move-object v1, p0

    move v3, p3

    goto :goto_74

    .line 894
    :cond_4d
    move v6, p2

    :goto_4e
    if-ge v6, p1, :cond_72

    .line 895
    if-nez p5, :cond_57

    if-eqz v6, :cond_57

    .line 896
    move-object v1, p0

    move v3, p3

    goto :goto_6e

    .line 898
    :cond_57
    move v7, v0

    move v0, p2

    :goto_59
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6b

    .line 899
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    aget v4, v1, v0

    move-object v1, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->addKeys(Ljava/util/List;ZIIII)I

    move-result v7

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_6b
    move-object v1, p0

    move v3, p3

    move v0, v7

    .line 894
    :goto_6e
    add-int/lit8 v6, v6, 0x1

    move p3, v3

    goto :goto_4e

    :cond_72
    move-object v1, p0

    move v3, p3

    .line 890
    :goto_74
    add-int/lit8 v5, v5, 0x1

    move p3, v3

    goto :goto_43

    .line 905
    :cond_78
    move-object v1, p0

    iput v0, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    .line 907
    sget-object p1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/BatteryConsumer$Key;

    iput-object p1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 908
    new-instance p1, Landroid/util/SparseArray;

    iget-object p3, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length p3, p3

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    .line 909
    nop

    :goto_90
    iget-object p1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length p1, p1

    if-ge p2, p1, :cond_ad

    .line 910
    iget-object p1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object p1, p1, p2

    .line 911
    iget-object p3, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    iget p4, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget p5, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v0, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-direct {p0, p4, p5, v0, v2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result p4

    invoke-virtual {p3, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 909
    add-int/lit8 p2, p2, 0x1

    goto :goto_90

    .line 914
    :cond_ad
    return-void
.end method

.method synthetic constructor blacklist <init>(I[Ljava/lang/String;ZZZLandroid/os/BatteryConsumer-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;-><init>(I[Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private blacklist addKeys(Ljava/util/List;ZIIII)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;ZIIII)I"
        }
    .end annotation

    .line 932
    new-instance v0, Landroid/os/BatteryConsumer$Key;

    add-int/lit8 v6, p6, 0x1

    add-int/lit8 v8, v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v1, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIILandroid/os/BatteryConsumer-IA;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    if-nez p2, :cond_18

    const/16 v0, 0x12

    if-ne p3, v0, :cond_49

    .line 939
    :cond_18
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetSUPPORTED_POWER_COMPONENTS_PER_PROCESS_STATE()Landroid/util/IntArray;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_2a

    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_28

    goto :goto_2a

    :cond_28
    move v0, v2

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    .line 942
    :goto_2b
    if-eqz v0, :cond_49

    .line 943
    move v5, v8

    :goto_2e
    const/4 v0, 0x5

    if-ge v2, v0, :cond_48

    .line 944
    if-nez v2, :cond_34

    .line 945
    goto :goto_45

    .line 947
    :cond_34
    new-instance v0, Landroid/os/BatteryConsumer$Key;

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v8, v6, 0x1

    const/4 v7, 0x0

    move v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIILandroid/os/BatteryConsumer-IA;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    .line 943
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_48
    move v8, v5

    .line 954
    :cond_49
    return v8
.end method

.method private blacklist keyIndex(IIII)I
    .registers 5

    .line 1000
    shl-int/lit8 p1, p1, 0x7

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x2

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    return p1
.end method


# virtual methods
.method blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .registers 6

    .line 959
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryConsumer$Key;

    return-object p1
.end method

.method blacklist getKeyOrThrow(IIII)Landroid/os/BatteryConsumer$Key;
    .registers 8

    .line 964
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 965
    if-eqz v0, :cond_7

    .line 970
    return-object v0

    .line 966
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported power component ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    invoke-static {p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->toString(IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 8

    .line 974
    monitor-enter p0

    .line 975
    :try_start_1
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    if-nez v0, :cond_f

    .line 976
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    .line 978
    :cond_f
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/BatteryConsumer$Key;

    .line 979
    if-nez v0, :cond_41

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    .line 982
    iget v5, v4, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    if-ne v5, p1, :cond_2d

    .line 983
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 986
    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/BatteryConsumer$Key;

    .line 987
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 989
    :cond_41
    monitor-exit p0

    return-object v0

    .line 990
    :catchall_43
    move-exception p1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public blacklist getPowerComponentName(I)Ljava/lang/String;
    .registers 5

    .line 917
    const/16 v0, 0x13

    if-ge p1, v0, :cond_9

    .line 918
    invoke-static {p1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 919
    :cond_9
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_18

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_18

    .line 921
    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1

    .line 924
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported power component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
