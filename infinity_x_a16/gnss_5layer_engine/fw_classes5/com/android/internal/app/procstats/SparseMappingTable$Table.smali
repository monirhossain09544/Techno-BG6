.class public Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.super Ljava/lang/Object;
.source "SparseMappingTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/SparseMappingTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Table"
.end annotation


# instance fields
.field private blacklist mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

.field private blacklist mSequence:I

.field private blacklist mSize:I

.field private blacklist mTable:[I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 78
    iput-object p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 79
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmSequence(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 80
    return-void
.end method

.method private blacklist assertConsistency()V
    .registers 1

    .line 388
    return-void
.end method

.method private blacklist binarySearch(B)I
    .registers 7

    .line 398
    nop

    .line 399
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    .line 401
    :goto_7
    if-gt v2, v0, :cond_21

    .line 402
    add-int v3, v2, v0

    ushr-int/lit8 v3, v3, 0x1

    .line 403
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v4, v4, v3

    shr-int/2addr v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 405
    if-ge v4, p1, :cond_1a

    .line 406
    add-int/lit8 v2, v3, 0x1

    goto :goto_1f

    .line 407
    :cond_1a
    if-le v4, p1, :cond_20

    .line 408
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    .line 412
    :goto_1f
    goto :goto_7

    .line 410
    :cond_20
    return v3

    .line 413
    :cond_21
    not-int p1, v2

    return p1
.end method

.method private blacklist validateKeys(Z)Z
    .registers 9

    .line 422
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 425
    iget v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 426
    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_54

    .line 427
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v5, v5, v4

    .line 428
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v6

    .line 429
    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 430
    if-ge v6, v1, :cond_2b

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    array-length v6, v6

    if-lt v5, v6, :cond_28

    goto :goto_2b

    .line 426
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 431
    :cond_2b
    :goto_2b
    if-eqz p1, :cond_53

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid stats at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " -- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparseMappingTable"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_53
    return v3

    .line 438
    :cond_54
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public blacklist copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V
    .registers 10

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyCount()I

    move-result v1

    .line 93
    nop

    :goto_b
    if-ge v0, v1, :cond_47

    .line 94
    invoke-virtual {p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getKeyAt(I)I

    move-result v2

    .line 95
    iget-object v3, p1, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 97
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    .line 99
    invoke-virtual {p0, v4, p2}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getOrAddKey(BI)I

    move-result v4

    .line 100
    iget-object v5, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 102
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 103
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    .line 102
    invoke-static {v3, v2, v5, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 105
    :cond_47
    return-void
.end method

.method public blacklist dumpInternalState()Ljava/lang/String;
    .registers 7

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    const-string v1, "SparseMappingTable.Table{mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, " mParent.mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmSequence(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 447
    const-string v1, " mParent.mLongs.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, " mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, " mTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    if-nez v1, :cond_48

    .line 453
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    .line 455
    :cond_48
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    array-length v1, v1

    .line 456
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    const/4 v2, 0x0

    :goto_51
    if-ge v2, v1, :cond_93

    .line 458
    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v3, v3, v2

    .line 459
    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    shr-int/lit8 v4, v3, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v4, "/0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    shr-int/lit8 v3, v3, 0x10

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_90

    .line 466
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 469
    :cond_93
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    :goto_98
    const-string v1, " clazz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getArrayForKey(I)[J
    .registers 3

    .line 247
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 249
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1
.end method

.method public blacklist getKey(B)I
    .registers 3

    .line 164
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result p1

    .line 167
    if-ltz p1, :cond_e

    .line 168
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget p1, v0, p1

    return p1

    .line 170
    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist getKeyAt(I)I
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget p1, v0, p1

    return p1
.end method

.method public blacklist getKeyCount()I
    .registers 2

    .line 351
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    return v0
.end method

.method public blacklist getOrAddKey(BI)I
    .registers 9

    .line 120
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v0

    .line 123
    if-ltz v0, :cond_e

    .line 125
    iget-object p1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget p1, p1, v0

    return p1

    .line 130
    :cond_e
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 133
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v4

    add-int/2addr v4, p2

    array-length v3, v3

    const/4 v5, 0x0

    if-le v4, v3, :cond_39

    .line 135
    const/16 v3, 0x1000

    new-array v3, v3, [J

    .line 136
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 138
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1, v5}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fputmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;I)V

    .line 143
    :cond_39
    shl-int/lit8 v1, v2, 0x8

    iget-object v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/2addr p1, v5

    or-int/2addr p1, v1

    .line 147
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fputmNextIndex(Lcom/android/internal/app/procstats/SparseMappingTable;I)V

    .line 150
    iget-object p2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    if-eqz p2, :cond_57

    iget-object p2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    goto :goto_59

    :cond_57
    sget-object p2, Llibcore/util/EmptyArray;->INT:[I

    :goto_59
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    not-int v0, v0

    invoke-static {p2, v1, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 152
    iget p2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 154
    return p1
.end method

.method public blacklist getValue(I)J
    .registers 4

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValue(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getValue(II)J
    .registers 6

    .line 193
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 196
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 197
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v1

    add-int/2addr v1, p2

    aget-wide p1, v0, v1
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_1a} :catch_1b

    return-wide p1

    .line 198
    :catch_1b
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " index="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public blacklist getValueForId(B)J
    .registers 4

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getValueForId(BI)J
    .registers 10

    .line 224
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->binarySearch(B)I

    move-result v0

    .line 227
    const-wide/16 v1, 0x0

    if-ltz v0, :cond_73

    .line 228
    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v3, v3, v0

    .line 230
    :try_start_f
    iget-object v4, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 231
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    add-int/2addr v5, p2

    aget-wide p1, v4, v5
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_26} :catch_27

    return-wide p1

    .line 232
    :catch_27
    move-exception v4

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, " idx="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " key=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " -- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-static {p1, v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    return-wide v1

    .line 239
    :cond_73
    return-wide v1
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)Z
    .registers 7

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 327
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 328
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 329
    move v0, v2

    :goto_19
    iget v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    if-ge v0, v3, :cond_2a

    .line 330
    iget-object v3, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 333
    :cond_28
    iput-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 337
    :cond_2a
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->validateKeys(Z)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 338
    return p1

    .line 341
    :cond_32
    iput v2, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 342
    iput-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 343
    return v2
.end method

.method public blacklist resetTable()V
    .registers 2

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    .line 304
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmSequence(Lcom/android/internal/app/procstats/SparseMappingTable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    .line 305
    return-void
.end method

.method public blacklist setValue(IIJ)V
    .registers 11

    .line 271
    invoke-direct {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->assertConsistency()V

    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const-string v1, " -- "

    const-string v2, " value="

    const-string v3, " index="

    if-gez v0, :cond_46

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t store negative values key=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;)V

    .line 278
    return-void

    .line 282
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mParent:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$fgetmLongs(Lcom/android/internal/app/procstats/SparseMappingTable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getArrayFromKey(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 283
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    add-int/2addr v4, p2

    aput-wide p3, v0, v4
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_46 .. :try_end_5d} :catch_5f

    .line 289
    nop

    .line 290
    return-void

    .line 284
    :catch_5f
    move-exception v0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->dumpInternalState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {p1, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->-$$Nest$smlogOrThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    return-void
.end method

.method public blacklist setValue(IJ)V
    .registers 5

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->setValue(IIJ)V

    .line 260
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 312
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mSize:I

    if-ge v0, v1, :cond_19

    .line 315
    iget-object v1, p0, Lcom/android/internal/app/procstats/SparseMappingTable$Table;->mTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 317
    :cond_19
    return-void
.end method
