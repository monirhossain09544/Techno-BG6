.class public Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final blacklist GNB:I = 0x1

.field public static final blacklist PPB:I = 0x3

.field public static final blacklist TPB:I = 0x2


# instance fields
.field private blacklist ks:[I

.field private blacklist m:I

.field private blacklist representation:I

.field blacklist x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;


# direct methods
.method constructor blacklist <init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V
    .registers 5

    .line 617
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 618
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 619
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/4 p1, 0x2

    goto :goto_c

    :cond_b
    const/4 p1, 0x3

    :goto_c
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 620
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 621
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 622
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 664
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 665
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 666
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 667
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 672
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist bitLength()I
    .registers 2

    .line 626
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 719
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 831
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 833
    return v0

    .line 836
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 838
    return v2

    .line 841
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 843
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v1, v3, :cond_2d

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v1, v3, :cond_2d

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 845
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 846
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 843
    :goto_2e
    return v0
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 651
    const-string v0, "F2m"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 656
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getK1()I
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getK2()I
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist getK3()I
    .registers 3

    .line 826
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist getM()I
    .registers 2

    .line 791
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getRepresentation()I
    .registers 2

    .line 782
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 851
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 764
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 636
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8

    .line 690
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 695
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8

    .line 700
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p3, p3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 702
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v1

    .line 703
    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p2, p3, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p2

    .line 705
    if-eq v1, v0, :cond_22

    if-ne v1, p1, :cond_29

    .line 707
    :cond_22
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 710
    :cond_29
    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 711
    iget p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 713
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, p3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 726
    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    :cond_11
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    :goto_1a
    move-object v0, p0

    :goto_1b
    return-object v0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 731
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist squareMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 741
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    check-cast p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 743
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v1

    .line 744
    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p1

    .line 746
    if-ne v1, v0, :cond_23

    .line 748
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 751
    :cond_23
    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 752
    iget p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 754
    new-instance p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public blacklist squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8

    .line 759
    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    move-object v0, p0

    goto :goto_18

    :cond_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    :goto_18
    return-object v0
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist testBitZero()Z
    .registers 2

    .line 641
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 646
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
