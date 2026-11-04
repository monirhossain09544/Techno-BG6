.class Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "SecP192R1Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;I[I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$len:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$table:[I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;->-$$Nest$sfgetSECP192R1_AFFINE_ZS()[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist getSize()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 114
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v1

    .line 115
    nop

    .line 117
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$len:I

    if-ge v3, v5, :cond_3b

    .line 119
    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 121
    move v6, v2

    :goto_17
    const/4 v7, 0x6

    if-ge v6, v7, :cond_36

    .line 123
    aget v7, v0, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$table:[I

    add-int v9, v4, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v0, v6

    .line 124
    aget v7, v1, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$table:[I

    add-int/lit8 v9, v4, 0x6

    add-int/2addr v9, v6

    aget v8, v8, v9

    and-int/2addr v8, v5

    xor-int/2addr v7, v8

    aput v7, v1, v6

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 127
    :cond_36
    add-int/lit8 v4, v4, 0xc

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 130
    :cond_3b
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .line 135
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v1

    .line 136
    const/4 v2, 0x6

    mul-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    .line 138
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_23

    .line 140
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$table:[I

    add-int v5, p1, v3

    aget v4, v4, v5

    aput v4, v0, v3

    .line 141
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->val$table:[I

    add-int/lit8 v5, p1, 0x6

    add-int/2addr v5, v3

    aget v4, v4, v5

    aput v4, v1, v3

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 144
    :cond_23
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192R1Curve$1;->createPoint([I[I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
