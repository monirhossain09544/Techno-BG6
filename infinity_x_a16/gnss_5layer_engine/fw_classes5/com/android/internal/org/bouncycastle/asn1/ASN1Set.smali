.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;",
        "Lcom/android/internal/org/bouncycastle/util/Iterable<",
        "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field protected final blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field protected blacklist sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 176
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 177
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 178
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 185
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 186
    if-eqz p1, :cond_12

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 192
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 193
    return-void

    .line 188
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'element\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .registers 5

    .line 201
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 202
    if-eqz p1, :cond_29

    .line 208
    const/4 v0, 0x2

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lt v1, v0, :cond_16

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->copyElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 211
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1a

    .line 215
    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 218
    :goto_1a
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 219
    if-nez p2, :cond_24

    array-length p1, p1

    if-ge p1, v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 p1, 0x0

    goto :goto_26

    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    :goto_26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 220
    return-void

    .line 204
    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'elementVector\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    .line 245
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 246
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 247
    if-nez p1, :cond_d

    array-length p1, p2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :cond_d
    :goto_d
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 248
    return-void
.end method

.method protected constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 6

    .line 228
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 229
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 234
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 235
    const/4 v1, 0x2

    if-eqz p2, :cond_16

    array-length v2, v0

    if-lt v2, v1, :cond_16

    .line 237
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 240
    :cond_16
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 241
    if-nez p2, :cond_1f

    array-length p2, v0

    if-ge p2, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :cond_1f
    :goto_1f
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 242
    return-void

    .line 231
    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'elements\' cannot be null, or contain null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 251
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 253
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 254
    return-void
.end method

.method private static blacklist getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 2

    .line 452
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 454
    :catch_b
    move-exception p0

    .line 456
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot encode object added to SET"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    .line 167
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 4

    .line 120
    if-eqz p0, :cond_68

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_7

    goto :goto_68

    .line 125
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 127
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_19

    .line 130
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0

    .line 132
    :cond_19
    goto :goto_47

    .line 133
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_47

    .line 137
    :try_start_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_29

    return-object p0

    .line 139
    :catch_29
    move-exception p0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct set from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_68
    :goto_68
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method private static blacklist lessThanOrEqual([B[B)Z
    .registers 8

    .line 479
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xdf

    .line 480
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xdf

    .line 481
    const/4 v3, 0x1

    if-eq v1, v2, :cond_10

    .line 483
    if-ge v1, v2, :cond_f

    move v0, v3

    :cond_f
    return v0

    .line 486
    :cond_10
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v3

    .line 487
    move v2, v3

    :goto_18
    if-ge v2, v1, :cond_2f

    .line 489
    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_2c

    .line 491
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-ge p0, p1, :cond_2b

    move v0, v3

    :cond_2b
    return v0

    .line 487
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 494
    :cond_2f
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    if-gt p0, p1, :cond_3a

    move v0, v3

    :cond_3a
    return v0
.end method

.method private static blacklist sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 14

    .line 499
    array-length v0, p0

    .line 500
    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 502
    return-void

    .line 505
    :cond_5
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-object v4, p0, v3

    .line 506
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v6

    .line 508
    invoke-static {v6, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 510
    nop

    .line 511
    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    .line 514
    :cond_20
    nop

    :goto_21
    if-ge v1, v0, :cond_65

    .line 516
    aget-object v7, p0, v1

    .line 517
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v8

    .line 519
    invoke-static {v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 521
    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    .line 522
    nop

    .line 523
    nop

    .line 524
    move-object v2, v4

    move-object v5, v6

    move-object v4, v7

    move-object v6, v8

    goto :goto_62

    .line 527
    :cond_3a
    invoke-static {v5, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 529
    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    .line 530
    nop

    .line 531
    move-object v2, v7

    move-object v5, v8

    goto :goto_62

    .line 534
    :cond_48
    add-int/lit8 v9, v1, -0x1

    .line 535
    :goto_4a
    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_60

    .line 537
    add-int/lit8 v10, v9, -0x1

    aget-object v10, p0, v10

    .line 538
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v11

    .line 540
    invoke-static {v11, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 542
    goto :goto_60

    .line 545
    :cond_5d
    aput-object v10, p0, v9

    .line 546
    goto :goto_4a

    .line 548
    :cond_60
    :goto_60
    aput-object v7, p0, v9

    .line 514
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 551
    :cond_65
    add-int/lit8 v1, v0, -0x2

    aput-object v2, p0, v1

    .line 552
    sub-int/2addr v0, v3

    aput-object v4, p0, v0

    .line 553
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 8

    .line 385
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 387
    return v1

    .line 390
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 393
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v2, v0, :cond_13

    .line 395
    return v1

    .line 398
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    .line 401
    move v3, v1

    :goto_20
    if-ge v3, v0, :cond_3e

    .line 403
    iget-object v4, v2, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 404
    iget-object v5, p1, Lcom/android/internal/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    .line 406
    if-eq v4, v5, :cond_3b

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 408
    return v1

    .line 401
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 412
    :cond_3e
    const/4 p1, 0x1

    return p1
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 258
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$2;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$2;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 348
    add-int/lit8 v1, v0, 0x1

    .line 351
    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    .line 353
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 356
    :cond_17
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;
    .registers 3

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 308
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set$3;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;I)V

    return-object v1
.end method

.method public blacklist size()I
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    return v0
.end method

.method public blacklist toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_13

    .line 367
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 368
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 371
    :cond_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 380
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->sortedElements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 423
    if-nez v0, :cond_9

    .line 425
    const-string v0, "[]"

    return-object v0

    .line 428
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 429
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    const/4 v2, 0x0

    .line 432
    :goto_14
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 433
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2a

    .line 435
    nop

    .line 439
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 437
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14
.end method
