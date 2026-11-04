.class public Landroid/net/vcn/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/util/PersistableBundleUtils$Serializer;,
        Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;,
        Landroid/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;,
        Landroid/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    }
.end annotation


# static fields
.field private static final blacklist BYTE_ARRAY_KEY:Ljava/lang/String; = "BYTE_ARRAY_KEY"

.field private static final blacklist COLLECTION_SIZE_KEY:Ljava/lang/String; = "COLLECTION_LENGTH"

.field public static final blacklist INTEGER_DESERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INTEGER_KEY:Ljava/lang/String; = "INTEGER_KEY"

.field public static final blacklist INTEGER_SERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/vcn/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LIST_KEY_FORMAT:Ljava/lang/String; = "LIST_ITEM_%d"

.field private static final blacklist MAP_KEY_FORMAT:Ljava/lang/String; = "MAP_KEY_%d"

.field private static final blacklist MAP_VALUE_FORMAT:Ljava/lang/String; = "MAP_VALUE_%d"

.field private static final blacklist PARCEL_UUID_KEY:Ljava/lang/String; = "PARCEL_UUID"

.field public static final blacklist STRING_DESERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STRING_KEY:Ljava/lang/String; = "STRING_KEY"

.field public static final blacklist STRING_SERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/vcn/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 93
    new-instance v0, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;

    .line 100
    new-instance v0, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/net/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 108
    new-instance v0, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/net/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/PersistableBundle;
    .registers 3

    .line 201
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 203
    const-string v1, "BYTE_ARRAY_KEY"

    invoke-static {p0}, Lcom/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object v0
.end method

.method public static blacklist fromDiskStableBytes([B)Landroid/os/PersistableBundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 321
    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist fromList(Ljava/util/List;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/net/vcn/util/PersistableBundleUtils$Serializer<",
            "TT;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 157
    const-string v1, "COLLECTION_LENGTH"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const/4 v1, 0x0

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "LIST_ITEM_%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/net/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 162
    :cond_31
    return-object v0
.end method

.method public static blacklist fromMap(Ljava/util/Map;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;Landroid/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroid/net/vcn/util/PersistableBundleUtils$Serializer<",
            "TK;>;",
            "Landroid/net/vcn/util/PersistableBundleUtils$Serializer<",
            "TV;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 244
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 246
    const-string v1, "COLLECTION_LENGTH"

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 247
    nop

    .line 248
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "MAP_KEY_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "MAP_VALUE_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/net/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 252
    nop

    .line 253
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/net/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 252
    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 256
    goto :goto_18

    .line 258
    :cond_5a
    return-object v0
.end method

.method public static blacklist fromParcelUuid(Landroid/os/ParcelUuid;)Landroid/os/PersistableBundle;
    .registers 3

    .line 124
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 126
    const-string v1, "PARCEL_UUID"

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public static blacklist getHashCode(Landroid/os/PersistableBundle;)I
    .registers 6

    .line 440
    if-nez p0, :cond_4

    .line 441
    const/4 p0, -0x1

    return p0

    .line 444
    :cond_4
    nop

    .line 445
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 446
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 448
    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-eqz v4, :cond_3f

    .line 449
    nop

    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v3, Landroid/os/PersistableBundle;

    invoke-static {v3}, Landroid/net/vcn/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    goto :goto_4b

    .line 452
    :cond_3f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 454
    :goto_4b
    goto :goto_13

    .line 456
    :cond_4c
    return v1
.end method

.method public static blacklist isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .registers 9

    .line 463
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 464
    return v1

    .line 468
    :cond_8
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    .line 469
    return v3

    .line 472
    :cond_14
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 473
    return v3

    .line 476
    :cond_23
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 478
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 481
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 482
    goto :goto_2b

    .line 483
    :cond_46
    invoke-static {v4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eq v5, v6, :cond_51

    .line 485
    return v3

    .line 486
    :cond_51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 488
    return v3

    .line 490
    :cond_60
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_6f

    .line 491
    check-cast v4, Landroid/os/PersistableBundle;

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-static {v4, v2}, Landroid/net/vcn/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 492
    return v3

    .line 494
    :cond_6f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 495
    instance-of v5, v4, [Z

    if-eqz v5, :cond_88

    .line 496
    check-cast v4, [Z

    check-cast v2, [Z

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 497
    return v3

    .line 499
    :cond_88
    instance-of v5, v4, [D

    if-eqz v5, :cond_97

    .line 500
    check-cast v4, [D

    check-cast v2, [D

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 501
    return v3

    .line 503
    :cond_97
    instance-of v5, v4, [I

    if-eqz v5, :cond_a6

    .line 504
    check-cast v4, [I

    check-cast v2, [I

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 505
    return v3

    .line 507
    :cond_a6
    instance-of v5, v4, [J

    if-eqz v5, :cond_b5

    .line 508
    check-cast v4, [J

    check-cast v2, [J

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 509
    return v3

    .line 511
    :cond_b5
    check-cast v4, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 512
    return v3

    .line 515
    :cond_c0
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 516
    return v3

    .line 519
    :cond_c7
    goto/16 :goto_2b

    .line 521
    :cond_c9
    return v1
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;
    .registers 3

    .line 87
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 88
    const-string v1, "INTEGER_KEY"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .registers 2

    .line 95
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v0, "INTEGER_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$static$2(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3

    .line 102
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 103
    const-string v1, "STRING_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method static synthetic blacklist lambda$static$3(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v0, "STRING_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs blacklist minimizeBundle(Landroid/os/PersistableBundle;[Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 8

    .line 394
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 396
    if-nez p0, :cond_8

    .line 397
    return-object v0

    .line 400
    :cond_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_9f

    aget-object v3, p1, v2

    .line 401
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 402
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 403
    if-nez v4, :cond_1c

    .line 404
    goto/16 :goto_9b

    .line 407
    :cond_1c
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2b

    .line 408
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_9b

    .line 409
    :cond_2b
    instance-of v5, v4, [Z

    if-eqz v5, :cond_36

    .line 410
    check-cast v4, [Z

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_9b

    .line 411
    :cond_36
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_44

    .line 412
    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9b

    .line 413
    :cond_44
    instance-of v5, v4, [D

    if-eqz v5, :cond_4e

    .line 414
    check-cast v4, [D

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_9b

    .line 415
    :cond_4e
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5c

    .line 416
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9b

    .line 417
    :cond_5c
    instance-of v5, v4, [I

    if-eqz v5, :cond_66

    .line 418
    check-cast v4, [I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_9b

    .line 419
    :cond_66
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_74

    .line 420
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9b

    .line 421
    :cond_74
    instance-of v5, v4, [J

    if-eqz v5, :cond_7e

    .line 422
    check-cast v4, [J

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_9b

    .line 423
    :cond_7e
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_88

    .line 424
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    .line 425
    :cond_88
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_92

    .line 426
    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9b

    .line 427
    :cond_92
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_9b

    .line 428
    check-cast v4, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 400
    :cond_9b
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 435
    :cond_9f
    return-object v0
.end method

.method public static blacklist toByteArray(Landroid/os/PersistableBundle;)[B
    .registers 2

    .line 215
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v0, "BYTE_ARRAY_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 218
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1a

    .line 222
    invoke-static {p0}, Lcom/android/net/module/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 219
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PersistableBundle contains invalid byte array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist toDiskStableBytes(Landroid/os/PersistableBundle;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toList(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Landroid/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 176
    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_2a

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "LIST_ITEM_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 183
    invoke-interface {p1, v3}, Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 185
    :cond_2a
    return-object v1
.end method

.method public static blacklist toMap(Landroid/os/PersistableBundle;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Landroid/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "TK;>;",
            "Landroid/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 284
    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 287
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_40

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "MAP_KEY_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "MAP_VALUE_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 291
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 293
    invoke-interface {p1, v3}, Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v3

    .line 294
    invoke-interface {p2, v4}, Landroid/net/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v4

    .line 295
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 297
    :cond_40
    return-object v1
.end method

.method public static blacklist toParcelUuid(Landroid/os/PersistableBundle;)Landroid/os/ParcelUuid;
    .registers 2

    .line 138
    const-string v0, "PARCEL_UUID"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p0

    return-object p0
.end method
