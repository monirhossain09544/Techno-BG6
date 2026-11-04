.class Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

.field final synthetic blacklist val$FE_LONGS:I

.field final synthetic blacklist val$ks:[I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1392
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 1435
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    .line 1436
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {p1, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    .line 1437
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 1395
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 14

    .line 1400
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1401
    nop

    .line 1403
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_10
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    if-ge v3, v5, :cond_45

    .line 1405
    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    .line 1407
    move v7, v2

    :goto_1c
    iget v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v7, v8, :cond_3d

    .line 1409
    aget-wide v8, v0, v7

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v11, v4, v7

    aget-wide v10, v10, v11

    and-long/2addr v10, v5

    xor-long/2addr v8, v10

    aput-wide v8, v0, v7

    .line 1410
    aget-wide v8, v1, v7

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v11, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v11, v4

    add-int/2addr v11, v7

    aget-wide v10, v10, v11

    and-long/2addr v10, v5

    xor-long/2addr v8, v10

    aput-wide v8, v1, v7

    .line 1407
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 1413
    :cond_3d
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 1403
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1416
    :cond_45
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 1421
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1422
    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    .line 1424
    const/4 v2, 0x0

    :goto_12
    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v2, v3, :cond_2b

    .line 1426
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v4, p1, v2

    aget-wide v3, v3, v4

    aput-wide v3, v0, v2

    .line 1427
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v4, p1

    add-int/2addr v4, v2

    aget-wide v3, v3, v4

    aput-wide v3, v1, v2

    .line 1424
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1430
    :cond_2b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
