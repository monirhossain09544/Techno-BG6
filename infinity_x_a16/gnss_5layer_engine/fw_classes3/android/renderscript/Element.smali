.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$DataType;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mArraySizes:[I

.field greylist-max-o mElementNames:[Ljava/lang/String;

.field greylist-max-o mElements:[Landroid/renderscript/Element;

.field greylist-max-o mKind:Landroid/renderscript/Element$DataKind;

.field greylist-max-o mNormalized:Z

.field greylist-max-o mOffsetInBytes:[I

.field greylist-max-o mSize:I

.field greylist-max-o mType:Landroid/renderscript/Element$DataType;

.field greylist-max-o mVectorSize:I

.field greylist-max-o mVisibleElementMap:[I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4

    .line 1103
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 1104
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .registers 8

    .line 1084
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 1085
    sget-object p1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1f

    sget-object p1, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1f

    sget-object p1, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p4, p1, :cond_1f

    .line 1088
    const/4 p1, 0x3

    if-ne p7, p1, :cond_19

    .line 1089
    iget p1, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_23

    .line 1091
    :cond_19
    iget p1, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr p1, p7

    iput p1, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_23

    .line 1094
    :cond_1f
    iget p1, p4, Landroid/renderscript/Element$DataType;->mSize:I

    iput p1, p0, Landroid/renderscript/Element;->mSize:I

    .line 1096
    :goto_23
    iput-object p4, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 1097
    iput-object p5, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 1098
    iput-boolean p6, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 1099
    iput p7, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 1100
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .registers 7

    .line 1067
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 1068
    const/4 p1, 0x0

    iput p1, p0, Landroid/renderscript/Element;->mSize:I

    .line 1069
    const/4 p2, 0x1

    iput p2, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 1070
    iput-object p4, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 1071
    iput-object p5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 1072
    iput-object p6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 1073
    sget-object p2, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    iput-object p2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 1074
    sget-object p2, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    iput-object p2, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 1075
    iget-object p2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 1076
    nop

    :goto_1f
    iget-object p2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length p2, p2

    if-ge p1, p2, :cond_3d

    .line 1077
    iget-object p2, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget p3, p0, Landroid/renderscript/Element;->mSize:I

    aput p3, p2, p1

    .line 1078
    iget p2, p0, Landroid/renderscript/Element;->mSize:I

    iget-object p3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object p3, p3, p1

    iget p3, p3, Landroid/renderscript/Element;->mSize:I

    iget-object p4, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget p4, p4, p1

    mul-int/2addr p3, p4

    add-int/2addr p2, p3

    iput p2, p0, Landroid/renderscript/Element;->mSize:I

    .line 1076
    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    .line 1080
    :cond_3d
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 1081
    return-void
.end method

.method public static whitelist ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 489
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 490
    monitor-enter p0

    .line 491
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 492
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    .line 494
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 496
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 588
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 589
    monitor-enter p0

    .line 590
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 591
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    .line 593
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 595
    :cond_18
    :goto_18
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 321
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 322
    monitor-enter p0

    .line 323
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 324
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    .line 326
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 328
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 467
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 468
    monitor-enter p0

    .line 469
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 470
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    .line 472
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 474
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 435
    monitor-enter p0

    .line 436
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 437
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    .line 439
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 441
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 654
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 655
    monitor-enter p0

    .line 656
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 657
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    .line 659
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 661
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 665
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 666
    monitor-enter p0

    .line 667
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 668
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    .line 670
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 672
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 676
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 677
    monitor-enter p0

    .line 678
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 679
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    .line 681
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 683
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 446
    monitor-enter p0

    .line 447
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 448
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    .line 450
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 452
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 687
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 688
    monitor-enter p0

    .line 689
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 690
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    .line 692
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 694
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 698
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 699
    monitor-enter p0

    .line 700
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 701
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    .line 703
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 705
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 709
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 710
    monitor-enter p0

    .line 711
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 712
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    .line 714
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 716
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 457
    monitor-enter p0

    .line 458
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 459
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    .line 461
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 463
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 720
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 721
    monitor-enter p0

    .line 722
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 723
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    .line 725
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 727
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 731
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 732
    monitor-enter p0

    .line 733
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 734
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    .line 736
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 738
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 742
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 743
    monitor-enter p0

    .line 744
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 745
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    .line 747
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 749
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist FONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 577
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 578
    monitor-enter p0

    .line 579
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 580
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    .line 582
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 584
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 380
    monitor-enter p0

    .line 381
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 382
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    .line 384
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 386
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 852
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 853
    monitor-enter p0

    .line 854
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 855
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    .line 857
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 859
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 863
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 864
    monitor-enter p0

    .line 865
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 866
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    .line 868
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 870
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 874
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 875
    monitor-enter p0

    .line 876
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 877
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    .line 879
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 881
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 402
    monitor-enter p0

    .line 403
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 404
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    .line 406
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 408
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 918
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 919
    monitor-enter p0

    .line 920
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 921
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    .line 923
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 925
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 929
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 930
    monitor-enter p0

    .line 931
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 932
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    .line 934
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 936
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 940
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 941
    monitor-enter p0

    .line 942
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 943
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    .line 945
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 947
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 423
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 424
    monitor-enter p0

    .line 425
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 426
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    .line 428
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 430
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 984
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 985
    monitor-enter p0

    .line 986
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 987
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    .line 989
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 991
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 995
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 996
    monitor-enter p0

    .line 997
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 998
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    .line 1000
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 1002
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 1006
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 1007
    monitor-enter p0

    .line 1008
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 1009
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    .line 1011
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 1013
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 357
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 358
    monitor-enter p0

    .line 359
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 360
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    .line 362
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 364
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 786
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 787
    monitor-enter p0

    .line 788
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 789
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    .line 791
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 793
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 797
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 798
    monitor-enter p0

    .line 799
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 800
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    .line 802
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 804
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 808
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 809
    monitor-enter p0

    .line 810
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 811
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    .line 813
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 815
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 1

    .line 1041
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 1056
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 1057
    monitor-enter p0

    .line 1058
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 1059
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    .line 1061
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 1063
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 1045
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 1046
    monitor-enter p0

    .line 1047
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 1048
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    .line 1050
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 1052
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 1028
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 1029
    monitor-enter p0

    .line 1030
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 1031
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    .line 1033
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 1035
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 523
    monitor-enter p0

    .line 524
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 525
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    .line 527
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 529
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 534
    monitor-enter p0

    .line 535
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 536
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 538
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 540
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 555
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 556
    monitor-enter p0

    .line 557
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 558
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    .line 560
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 562
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 566
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 567
    monitor-enter p0

    .line 568
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 569
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    .line 571
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 573
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 545
    monitor-enter p0

    .line 546
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 547
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 549
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 551
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 632
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 633
    monitor-enter p0

    .line 634
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 635
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    .line 637
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 639
    :cond_18
    :goto_18
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 621
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 622
    monitor-enter p0

    .line 623
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 624
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    .line 626
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 628
    :cond_18
    :goto_18
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 643
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 644
    monitor-enter p0

    .line 645
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 646
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    .line 648
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 650
    :cond_18
    :goto_18
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 599
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 600
    monitor-enter p0

    .line 601
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 602
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    .line 604
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 606
    :cond_18
    :goto_18
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 610
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 611
    monitor-enter p0

    .line 612
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 613
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    .line 615
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 617
    :cond_18
    :goto_18
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 500
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 501
    monitor-enter p0

    .line 502
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 503
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    .line 505
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 507
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 511
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 512
    monitor-enter p0

    .line 513
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 514
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    .line 516
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 518
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 478
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 479
    monitor-enter p0

    .line 480
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 481
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    .line 483
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 485
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 368
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 369
    monitor-enter p0

    .line 370
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 371
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    .line 373
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 375
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 819
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 820
    monitor-enter p0

    .line 821
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 822
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    .line 824
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 826
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 830
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 831
    monitor-enter p0

    .line 832
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 833
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    .line 835
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 837
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 841
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 842
    monitor-enter p0

    .line 843
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 844
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    .line 846
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 848
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 390
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 391
    monitor-enter p0

    .line 392
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 393
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    .line 395
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 397
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 885
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 886
    monitor-enter p0

    .line 887
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 888
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    .line 890
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 892
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 896
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 897
    monitor-enter p0

    .line 898
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 899
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    .line 901
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 903
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 907
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 908
    monitor-enter p0

    .line 909
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 910
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    .line 912
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 914
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 413
    monitor-enter p0

    .line 414
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 415
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    .line 417
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 419
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 951
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 952
    monitor-enter p0

    .line 953
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 954
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    .line 956
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 958
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 962
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 963
    monitor-enter p0

    .line 964
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 965
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    .line 967
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 969
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 973
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 974
    monitor-enter p0

    .line 975
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 976
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    .line 978
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 980
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 340
    monitor-enter p0

    .line 341
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 342
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    .line 344
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 346
    :cond_16
    :goto_16
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 753
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 754
    monitor-enter p0

    .line 755
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 756
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    .line 758
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 760
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 764
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 765
    monitor-enter p0

    .line 766
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 767
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    .line 769
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 771
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 775
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 776
    monitor-enter p0

    .line 777
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 778
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    .line 780
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 782
    :cond_17
    :goto_17
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3

    .line 1017
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 1018
    monitor-enter p0

    .line 1019
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 1020
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    .line 1022
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 1024
    :cond_18
    :goto_18
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    return-object p0
.end method

.method public static whitelist createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .registers 13

    .line 1223
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_1d

    goto :goto_25

    .line 1230
    :cond_1d
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported DataKind"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1232
    :cond_25
    :goto_25
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3a

    goto :goto_42

    .line 1237
    :cond_3a
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported DataType"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1239
    :cond_42
    :goto_42
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    const-string v1, "Bad kind and type combo"

    if-ne p1, v0, :cond_53

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_4d

    goto :goto_53

    .line 1240
    :cond_4d
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1242
    :cond_53
    :goto_53
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_62

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_5c

    goto :goto_62

    .line 1243
    :cond_5c
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1245
    :cond_62
    :goto_62
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_71

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_6b

    goto :goto_71

    .line 1246
    :cond_6b
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1248
    :cond_71
    :goto_71
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_80

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_7a

    goto :goto_80

    .line 1250
    :cond_7a
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1253
    :cond_80
    :goto_80
    nop

    .line 1254
    invoke-virtual {p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_b0

    const/4 v1, 0x1

    move v7, v1

    goto :goto_98

    .line 1265
    :pswitch_8c
    move v7, v1

    goto :goto_98

    .line 1262
    :pswitch_8e
    nop

    .line 1263
    const/4 v1, 0x4

    move v7, v1

    goto :goto_98

    .line 1259
    :pswitch_92
    nop

    .line 1260
    const/4 v1, 0x3

    move v7, v1

    goto :goto_98

    .line 1256
    :pswitch_96
    nop

    .line 1257
    move v7, v1

    .line 1269
    :goto_98
    nop

    .line 1270
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v3, v0

    iget v5, p2, Landroid/renderscript/Element$DataKind;->mID:I

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v3

    .line 1271
    move-object v5, v2

    new-instance v2, Landroid/renderscript/Element;

    move v8, v6

    move v9, v7

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v2

    nop

    :pswitch_data_b0
    .packed-switch 0x3
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8c
    .end packed-switch
.end method

.method static greylist createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .registers 14

    .line 1158
    sget-object v5, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 1159
    nop

    .line 1160
    nop

    .line 1161
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v7, v0

    iget v9, v5, Landroid/renderscript/Element$DataKind;->mID:I

    const/4 v6, 0x0

    const/4 v11, 0x1

    move v10, v6

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v1

    .line 1162
    move-object v3, v6

    move v6, v10

    move v7, v11

    new-instance v0, Landroid/renderscript/Element;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static whitelist createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .registers 16

    .line 1179
    const/4 v0, 0x2

    if-lt p2, v0, :cond_2f

    const/4 v0, 0x4

    if-gt p2, v0, :cond_2f

    .line 1183
    invoke-virtual {p1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 1204
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Cannot create vector of non-primitive type."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1197
    :pswitch_15
    sget-object v6, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 1198
    nop

    .line 1199
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v8, v0

    iget v10, v6, Landroid/renderscript/Element$DataKind;->mID:I

    const/4 v7, 0x0

    move v12, p2

    move v11, v7

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v2

    .line 1200
    move-object v4, v7

    move v7, v11

    move v8, v12

    new-instance v1, Landroid/renderscript/Element;

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v1

    .line 1180
    :cond_2f
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Vector size out of range 2-4."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private greylist-max-o updateVisibleSubElements()V
    .registers 8

    .line 75
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v0, :cond_5

    .line 76
    return-void

    .line 79
    :cond_5
    nop

    .line 80
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v0, v0

    .line 82
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_c
    const/16 v4, 0x23

    if-ge v2, v0, :cond_1f

    .line 83
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_1c

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 82
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 87
    :cond_1f
    new-array v2, v3, [I

    iput-object v2, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    .line 90
    move v2, v1

    move v3, v2

    :goto_25
    if-ge v2, v0, :cond_3b

    .line 91
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_38

    .line 92
    iget-object v5, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v6, v3, 0x1

    aput v2, v5, v3

    move v3, v6

    .line 90
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 95
    :cond_3b
    return-void
.end method


# virtual methods
.method public whitelist getBytesSize()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public whitelist getDataKind()Landroid/renderscript/Element$DataKind;
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public whitelist getDataType()Landroid/renderscript/Element$DataType;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public whitelist getSubElement(I)Landroid/renderscript/Element;
    .registers 4

    .line 241
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 244
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 247
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    return-object p1

    .line 245
    :cond_14
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_1c
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSubElementArraySize(I)I
    .registers 4

    .line 274
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 277
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 280
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget p1, v1, p1

    aget p1, v0, p1

    return p1

    .line 278
    :cond_14
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_1c
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSubElementCount()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_6

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_6
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getSubElementName(I)Ljava/lang/String;
    .registers 4

    .line 257
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 260
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 263
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    return-object p1

    .line 261
    :cond_14
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_1c
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSubElementOffsetBytes(I)I
    .registers 4

    .line 290
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 293
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 296
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget p1, v1, p1

    aget p1, v0, p1

    return p1

    .line 294
    :cond_14
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Illegal sub-element index"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_1c
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Element contains no sub-elements"

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getVectorSize()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public whitelist isCompatible(Landroid/renderscript/Element;)Z
    .registers 5

    .line 1287
    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1288
    return v1

    .line 1295
    :cond_8
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/renderscript/Element;->mSize:I

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v2, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-ne v0, v2, :cond_21

    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget p1, p1, Landroid/renderscript/Element;->mVectorSize:I

    if-ne v0, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public whitelist isComplex()Z
    .registers 4

    .line 209
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 210
    return v1

    .line 212
    :cond_6
    move v0, v1

    :goto_7
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 213
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-eqz v2, :cond_16

    .line 214
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 217
    :cond_19
    return v1
.end method

.method greylist-max-o updateFromNative()V
    .registers 10

    .line 1108
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 1111
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1112
    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nElementGetNativeData(J[I)V

    .line 1114
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    iput-boolean v1, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 1115
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 1116
    iput v2, p0, Landroid/renderscript/Element;->mSize:I

    .line 1117
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_2a
    if-ge v5, v4, :cond_42

    aget-object v6, v1, v5

    .line 1118
    iget v7, v6, Landroid/renderscript/Element$DataType;->mID:I

    aget v8, v0, v2

    if-ne v7, v8, :cond_3f

    .line 1119
    iput-object v6, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 1120
    iget-object v6, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v6, v6, Landroid/renderscript/Element$DataType;->mSize:I

    iget v7, p0, Landroid/renderscript/Element;->mVectorSize:I

    mul-int/2addr v6, v7

    iput v6, p0, Landroid/renderscript/Element;->mSize:I

    .line 1117
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 1123
    :cond_42
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_48
    if-ge v5, v4, :cond_57

    aget-object v6, v1, v5

    .line 1124
    iget v7, v6, Landroid/renderscript/Element$DataKind;->mID:I

    aget v8, v0, v3

    if-ne v7, v8, :cond_54

    .line 1125
    iput-object v6, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 1123
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 1129
    :cond_57
    const/4 v1, 0x4

    aget v0, v0, v1

    .line 1130
    if-lez v0, :cond_ad

    .line 1131
    new-array v1, v0, [Landroid/renderscript/Element;

    iput-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 1132
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 1133
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 1134
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 1136
    new-array v6, v0, [J

    .line 1137
    iget-object v3, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v7, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v8, p0, Landroid/renderscript/Element;->mArraySizes:[I

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementGetSubElements(J[J[Ljava/lang/String;[I)V

    .line 1138
    nop

    :goto_7e
    if-ge v2, v0, :cond_ad

    .line 1139
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-instance v3, Landroid/renderscript/Element;

    aget-wide v4, v6, v2

    iget-object v7, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v3, v4, v5, v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    aput-object v3, v1, v2

    .line 1140
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/renderscript/Element;->updateFromNative()V

    .line 1141
    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v3, p0, Landroid/renderscript/Element;->mSize:I

    aput v3, v1, v2

    .line 1142
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/renderscript/Element;->mSize:I

    iget-object v4, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v4, v4, v2

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 1138
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 1145
    :cond_ad
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 1146
    return-void
.end method
