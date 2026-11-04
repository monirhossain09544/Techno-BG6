.class Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$FE_BYTES:I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;II[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 534
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 494
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 499
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v1, [B

    .line 500
    nop

    .line 502
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    if-ge v3, v5, :cond_42

    .line 504
    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 506
    move v6, v2

    :goto_17
    iget v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v6, v7, :cond_3a

    .line 508
    aget-byte v7, v0, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v9, v4, v6

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 509
    aget-byte v7, v1, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v9, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v9, v4

    add-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 506
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 512
    :cond_3a
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 515
    :cond_42
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .line 520
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v1, [B

    .line 521
    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    .line 523
    const/4 v2, 0x0

    :goto_e
    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v2, v3, :cond_27

    .line 525
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v4, p1, v2

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 526
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v4, p1

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 529
    :cond_27
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
