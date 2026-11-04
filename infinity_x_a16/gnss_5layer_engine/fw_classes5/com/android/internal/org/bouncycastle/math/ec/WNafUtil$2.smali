.class Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$includeNegated:Z

.field final synthetic blacklist val$minWidth:I

.field final synthetic blacklist val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(IZLcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 419
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .registers 7

    .line 580
    if-eqz p1, :cond_28

    .line 581
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt v0, p2, :cond_28

    .line 582
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result p2

    if-eqz p2, :cond_28

    if-eqz p4, :cond_26

    .line 583
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result p1

    if-eqz p1, :cond_28

    :cond_26
    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    .line 580
    :goto_29
    return p1
.end method

.method private blacklist checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z
    .registers 3

    .line 588
    if-eqz p1, :cond_7

    array-length p1, p1

    if-lt p1, p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .registers 15

    .line 422
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    move-object p1, v1

    .line 424
    :goto_9
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 425
    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x1

    shl-int v4, v5, v4

    .line 427
    iget-boolean v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {p0, p1, v0, v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 429
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    .line 430
    return-object p1

    .line 433
    :cond_27
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 435
    nop

    .line 436
    nop

    .line 438
    if-eqz p1, :cond_4b

    .line 440
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    move-result v6

    .line 441
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 443
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v6

    .line 444
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    .line 446
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 447
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 448
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_4e

    .line 438
    :cond_4b
    move-object p1, v1

    move-object v6, p1

    move-object v7, v6

    .line 451
    :goto_4e
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 452
    add-int/lit8 v2, v0, -0x2

    shl-int v2, v5, v2

    .line 454
    nop

    .line 455
    const/4 v8, 0x0

    if-nez v6, :cond_68

    .line 457
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$sfgetEMPTY_POINTS()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move v9, v8

    goto :goto_69

    .line 461
    :cond_68
    array-length v9, v6

    .line 464
    :goto_69
    if-ge v9, v2, :cond_106

    .line 466
    invoke-static {v6, v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 468
    if-ne v2, v5, :cond_7b

    .line 470
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v6, v8

    goto/16 :goto_106

    .line 474
    :cond_7b
    nop

    .line 475
    if-nez v9, :cond_84

    .line 477
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    aput-object v10, v6, v8

    .line 478
    move v10, v5

    goto :goto_85

    .line 475
    :cond_84
    move v10, v9

    .line 481
    :goto_85
    nop

    .line 483
    if-ne v2, v3, :cond_92

    .line 485
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v6, v5

    goto/16 :goto_ff

    .line 489
    :cond_92
    add-int/lit8 v3, v10, -0x1

    aget-object v3, v6, v3

    .line 490
    if-nez p1, :cond_f2

    .line 492
    aget-object p1, v6, v8

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 493
    nop

    .line 505
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v5

    if-nez v5, :cond_f0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v5

    if-eqz v5, :cond_f0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v5

    const/16 v11, 0x40

    if-lt v5, v11, :cond_f0

    .line 507
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v5

    packed-switch v5, :pswitch_data_134

    goto :goto_f0

    .line 513
    :pswitch_c1
    invoke-virtual {p1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 514
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 515
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    .line 514
    invoke-virtual {v5, v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 517
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 518
    invoke-virtual {v3, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 520
    if-nez v9, :cond_f3

    .line 522
    aput-object v3, v6, v8

    goto :goto_f3

    .line 530
    :cond_f0
    :goto_f0
    move-object v5, p1

    goto :goto_f3

    .line 490
    :cond_f2
    move-object v5, p1

    .line 530
    :cond_f3
    :goto_f3
    if-ge v10, v2, :cond_ff

    .line 536
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v6, v10

    move v10, v11

    goto :goto_f3

    .line 543
    :cond_ff
    :goto_ff
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    sub-int v5, v2, v9

    invoke-virtual {v3, v6, v9, v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IILcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 547
    :cond_106
    :goto_106
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz v1, :cond_126

    .line 550
    if-nez v7, :cond_111

    .line 552
    nop

    .line 553
    new-array v1, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-object v7, v1

    goto :goto_119

    .line 557
    :cond_111
    array-length v8, v7

    .line 558
    if-ge v8, v2, :cond_119

    .line 560
    invoke-static {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    move-object v7, v1

    .line 564
    :cond_119
    :goto_119
    if-ge v8, v2, :cond_126

    .line 566
    aget-object v1, v6, v8

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v7, v8

    .line 567
    add-int/lit8 v8, v8, 0x1

    goto :goto_119

    .line 571
    :cond_126
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 572
    invoke-virtual {v4, v7}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 573
    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 574
    invoke-virtual {v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    .line 575
    return-object v4

    nop

    :pswitch_data_134
    .packed-switch 0x2
        :pswitch_c1
        :pswitch_c1
        :pswitch_c1
    .end packed-switch
.end method
