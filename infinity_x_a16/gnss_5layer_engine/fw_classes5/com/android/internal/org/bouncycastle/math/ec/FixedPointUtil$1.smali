.class Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z
    .registers 3

    .line 82
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->checkTable(Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private blacklist checkTable(Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;I)Z
    .registers 3

    .line 87
    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;->getSize()I

    move-result p1

    if-lt p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 12

    .line 32
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 34
    :goto_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v0

    .line 35
    const/16 v1, 0xfa

    if-le v0, v1, :cond_14

    const/4 v1, 0x6

    goto :goto_15

    :cond_14
    const/4 v1, 0x5

    .line 36
    :goto_15
    const/4 v2, 0x1

    shl-int v3, v2, v1

    .line 38
    invoke-direct {p0, p1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 40
    return-object p1

    .line 43
    :cond_1f
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 45
    add-int/lit8 p1, v1, 0x1

    new-array p1, p1, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 46
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    .line 47
    move v4, v2

    :goto_2c
    if-ge v4, v1, :cond_3b

    .line 49
    add-int/lit8 v6, v4, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v6, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    aput-object v6, p1, v4

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 53
    :cond_3b
    aget-object v0, p1, v5

    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, p1, v1

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 57
    new-array v0, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 58
    aget-object v4, p1, v5

    aput-object v4, v0, v5

    .line 60
    add-int/lit8 v4, v1, -0x1

    :goto_52
    if-ltz v4, :cond_6c

    .line 62
    aget-object v6, p1, v4

    .line 64
    shl-int v7, v2, v4

    .line 65
    move v8, v7

    :goto_59
    if-ge v8, v3, :cond_69

    .line 67
    sub-int v9, v8, v7

    aget-object v9, v0, v9

    invoke-virtual {v9, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v0, v8

    .line 65
    shl-int/lit8 v9, v7, 0x1

    add-int/2addr v8, v9

    goto :goto_59

    .line 60
    :cond_69
    add-int/lit8 v4, v4, -0x1

    goto :goto_52

    .line 71
    :cond_6c
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 73
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    .line 74
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setLookupTable(Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;)V

    .line 75
    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setOffset(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 76
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    .line 77
    return-object v2
.end method
