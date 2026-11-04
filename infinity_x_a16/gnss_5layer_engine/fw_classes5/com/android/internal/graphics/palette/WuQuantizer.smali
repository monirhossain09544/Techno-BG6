.class public final Lcom/android/internal/graphics/palette/WuQuantizer;
.super Ljava/lang/Object;
.source "WuQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;,
        Lcom/android/internal/graphics/palette/WuQuantizer$Box;,
        Lcom/android/internal/graphics/palette/WuQuantizer$Direction;,
        Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BITS:I = 0x5

.field private static final blacklist MAX_INDEX:I = 0x20

.field private static final blacklist SIDE_LENGTH:I = 0x21

.field private static final blacklist TOTAL_SIZE:I = 0x8c61


# instance fields
.field private blacklist mColors:[I

.field private blacklist mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

.field private blacklist mInputPixelToCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMoments:[D

.field private blacklist mMomentsB:[I

.field private blacklist mMomentsG:[I

.field private blacklist mMomentsR:[I

.field private blacklist mPalette:Lcom/android/internal/graphics/palette/Palette;

.field private blacklist mWeights:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 44
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I
    .registers 6

    .line 381
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_c0

    .line 398
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected direction "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :pswitch_20
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 394
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 395
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 396
    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    sub-int/2addr p1, p0

    .line 393
    return p1

    .line 388
    :pswitch_55
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 389
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 390
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 391
    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    sub-int/2addr p1, p0

    .line 388
    return p1

    .line 383
    :pswitch_8a
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p2, p1

    neg-int p1, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 384
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 385
    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p2, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 386
    invoke-static {v0, v1, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p2, p0

    sub-int/2addr p1, p0

    .line 383
    return p1

    nop

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_55
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist constructHistogram(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    const v0, 0x8c61

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    .line 117
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    .line 118
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    .line 119
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    .line 120
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 126
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 127
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 128
    nop

    .line 129
    shr-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    .line 130
    shr-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 131
    shr-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    .line 132
    invoke-static {v4, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v4

    .line 133
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v6, v5, v4

    add-int/2addr v6, v0

    aput v6, v5, v4

    .line 134
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v6, v5, v4

    mul-int v7, v2, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    .line 135
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v6, v5, v4

    mul-int v7, v3, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    .line 136
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v6, v5, v4

    mul-int v7, v1, v0

    add-int/2addr v6, v7

    aput v6, v5, v4

    .line 137
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v6, v5, v4

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v1

    add-int/2addr v2, v1

    mul-int/2addr v0, v2

    int-to-double v0, v0

    add-double/2addr v6, v0

    aput-wide v6, v5, v4

    .line 138
    goto :goto_1f

    .line 139
    :cond_8d
    return-void
.end method

.method private blacklist createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;
    .registers 14

    .line 182
    new-array v0, p1, [Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    iput-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    .line 183
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, p1, :cond_15

    .line 184
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    new-instance v3, Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/graphics/palette/WuQuantizer$Box;-><init>(Lcom/android/internal/graphics/palette/WuQuantizer-IA;)V

    aput-object v3, v2, v1

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 186
    :cond_15
    new-array v1, p1, [D

    .line 187
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v2, v2, v0

    .line 188
    const/16 v3, 0x20

    iput v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 189
    iput v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 190
    iput v3, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 192
    nop

    .line 193
    nop

    .line 195
    const/4 v2, 0x1

    move v4, v0

    move v5, v4

    move v3, v2

    :goto_29
    if-ge v3, p1, :cond_86

    .line 196
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v6, v6, v3

    invoke-direct {p0, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_64

    .line 197
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    if-le v5, v2, :cond_4c

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v8

    goto :goto_4d

    :cond_4c
    move-wide v8, v6

    :goto_4d
    aput-wide v8, v1, v4

    .line 198
    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    if-le v4, v2, :cond_60

    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D

    move-result-wide v4

    goto :goto_61

    :cond_60
    move-wide v4, v6

    :goto_61
    aput-wide v4, v1, v3

    goto :goto_68

    .line 200
    :cond_64
    aput-wide v6, v1, v4

    .line 201
    add-int/lit8 v3, v3, -0x1

    .line 204
    :goto_68
    nop

    .line 206
    aget-wide v4, v1, v0

    .line 207
    move v8, v0

    move v9, v2

    :goto_6d
    if-gt v9, v3, :cond_7b

    .line 208
    aget-wide v10, v1, v9

    cmpl-double v10, v10, v4

    if-lez v10, :cond_78

    .line 209
    aget-wide v4, v1, v9

    .line 210
    move v8, v9

    .line 207
    :cond_78
    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    .line 213
    :cond_7b
    add-int/lit8 v3, v3, 0x1

    .line 214
    cmpg-double v4, v4, v6

    if-gtz v4, :cond_83

    .line 215
    move v5, v3

    goto :goto_86

    .line 195
    :cond_83
    move v5, v3

    move v4, v8

    goto :goto_29

    .line 219
    :cond_86
    :goto_86
    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    invoke-direct {v0, p1, v5}, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;-><init>(II)V

    return-object v0
.end method

.method private blacklist createMoments()V
    .registers 24

    .line 142
    move-object/from16 v0, p0

    const/4 v2, 0x1

    :goto_3
    const/16 v3, 0x21

    if-ge v2, v3, :cond_b9

    .line 143
    new-array v4, v3, [I

    .line 144
    new-array v5, v3, [I

    .line 145
    new-array v6, v3, [I

    .line 146
    new-array v7, v3, [I

    .line 147
    new-array v8, v3, [D

    .line 149
    const/4 v9, 0x1

    :goto_12
    if-ge v9, v3, :cond_b5

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 153
    nop

    .line 155
    nop

    .line 156
    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move v13, v10

    move-wide v14, v11

    const/4 v1, 0x1

    move v11, v13

    move v12, v11

    :goto_21
    if-ge v1, v3, :cond_af

    .line 157
    invoke-static {v2, v9, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v16

    .line 158
    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v3, v3, v16

    add-int/2addr v10, v3

    .line 159
    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v3, v3, v16

    add-int/2addr v11, v3

    .line 160
    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v3, v3, v16

    add-int/2addr v12, v3

    .line 161
    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v3, v3, v16

    add-int/2addr v13, v3

    .line 162
    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v17, v3, v16

    add-double v14, v14, v17

    .line 164
    aget v3, v4, v1

    add-int/2addr v3, v10

    aput v3, v4, v1

    .line 165
    aget v3, v5, v1

    add-int/2addr v3, v11

    aput v3, v5, v1

    .line 166
    aget v3, v6, v1

    add-int/2addr v3, v12

    aput v3, v6, v1

    .line 167
    aget v3, v7, v1

    add-int/2addr v3, v13

    aput v3, v7, v1

    .line 168
    aget-wide v17, v8, v1

    add-double v17, v17, v14

    aput-wide v17, v8, v1

    .line 170
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v9, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v3

    .line 171
    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    aget v1, v1, v3

    aget v19, v4, v17

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 172
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    aget v1, v1, v3

    aget v19, v5, v17

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 173
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    aget v1, v1, v3

    aget v19, v6, v17

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 174
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    aget v1, v1, v3

    aget v19, v7, v17

    add-int v1, v1, v19

    aput v1, v18, v16

    .line 175
    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    aget-wide v19, v1, v3

    aget-wide v21, v8, v17

    add-double v19, v19, v21

    aput-wide v19, v18, v16

    .line 156
    add-int/lit8 v1, v17, 0x1

    const/16 v3, 0x21

    goto/16 :goto_21

    .line 149
    :cond_af
    add-int/lit8 v9, v9, 0x1

    const/16 v3, 0x21

    goto/16 :goto_12

    .line 142
    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 179
    :cond_b9
    return-void
.end method

.method private blacklist createResult(I)[I
    .registers 11

    .line 223
    new-array v0, p1, [I

    .line 224
    nop

    .line 225
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_6
    if-ge v2, p1, :cond_35

    .line 226
    iget-object v4, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mCubes:[Lcom/android/internal/graphics/palette/WuQuantizer$Box;

    aget-object v4, v4, v2

    .line 227
    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v4, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v5

    .line 228
    if-lez v5, :cond_32

    .line 229
    iget-object v6, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v4, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    div-int/2addr v6, v5

    .line 230
    iget-object v7, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v4, v7}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v7

    div-int/2addr v7, v5

    .line 231
    iget-object v8, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v4, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v4

    div-int/2addr v4, v5

    .line 232
    invoke-static {v6, v7, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 233
    add-int/lit8 v5, v3, 0x1

    aput v4, v0, v3

    move v3, v5

    .line 225
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 236
    :cond_35
    new-array p1, v3, [I

    .line 237
    invoke-static {v0, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    return-object p1
.end method

.method private blacklist cut(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Box;)Z
    .registers 14

    .line 262
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v6

    .line 263
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v7

    .line 264
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v8

    .line 265
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v9

    .line 267
    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    const/4 v10, 0x1

    add-int/lit8 v4, v0, 0x1

    iget v5, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 268
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object p1

    .line 269
    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    add-int/lit8 v4, v0, 0x1

    iget v5, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 270
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v0

    .line 271
    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    iget v1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    add-int/lit8 v4, v1, 0x1

    iget v5, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 272
    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/graphics/palette/WuQuantizer;->maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    move-result-object v1

    .line 274
    iget-wide v3, p1, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    .line 275
    iget-wide v5, v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    .line 276
    iget-wide v7, v1, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mMaximum:D

    .line 277
    cmpl-double v9, v3, v5

    if-ltz v9, :cond_57

    cmpl-double v9, v3, v7

    if-ltz v9, :cond_57

    .line 278
    iget v3, p1, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    if-gez v3, :cond_54

    .line 279
    const/4 p1, 0x0

    return p1

    .line 281
    :cond_54
    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    goto :goto_64

    .line 282
    :cond_57
    cmpl-double v3, v5, v3

    if-ltz v3, :cond_62

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_62

    .line 283
    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    goto :goto_64

    .line 285
    :cond_62
    sget-object v3, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    .line 288
    :goto_64
    iget v4, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput v4, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 289
    iget v4, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput v4, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 290
    iget v4, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput v4, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 292
    invoke-virtual {v3}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_ea

    .line 312
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected direction "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :pswitch_90
    iget p1, v1, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 307
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    .line 308
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 309
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 310
    goto :goto_c3

    .line 300
    :pswitch_a1
    iget p1, v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 301
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    .line 302
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 303
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 304
    goto :goto_c3

    .line 294
    :pswitch_b2
    iget p1, p1, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;->mCutLocation:I

    iput p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    .line 295
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    .line 296
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 297
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 298
    nop

    .line 315
    :goto_c3
    iget p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr p1, v0

    iget v0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget v0, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    iput p1, v2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    .line 316
    iget p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    sub-int/2addr p1, v0

    iget v0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget v0, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    iget v1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    sub-int/2addr v0, v1

    mul-int/2addr p1, v0

    iput p1, p2, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->vol:I

    .line 318
    return v10

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_a1
        :pswitch_90
    .end packed-switch
.end method

.method private static blacklist getIndex(III)I
    .registers 5

    .line 112
    shl-int/lit8 v0, p0, 0xa

    shl-int/lit8 v1, p0, 0x6

    add-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private blacklist maximize(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;IIIIII)Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;
    .registers 27

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v3

    .line 331
    iget-object v4, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v4}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v4

    .line 332
    iget-object v5, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v5}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v5

    .line 333
    iget-object v6, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->bottom(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;[I)I

    move-result v6

    .line 335
    nop

    .line 336
    nop

    .line 337
    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    move v10, v9

    move-wide v8, v7

    move/from16 v7, p3

    :goto_27
    move/from16 v11, p4

    if-ge v7, v11, :cond_7c

    .line 338
    iget-object v12, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {v1, v2, v7, v12}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v12

    add-int/2addr v12, v3

    .line 339
    iget-object v13, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {v1, v2, v7, v13}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v13

    add-int/2addr v13, v4

    .line 340
    iget-object v14, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {v1, v2, v7, v14}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v14

    add-int/2addr v14, v5

    .line 341
    iget-object v15, v0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {v1, v2, v7, v15}, Lcom/android/internal/graphics/palette/WuQuantizer;->top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I

    move-result v15

    add-int/2addr v15, v6

    .line 343
    if-nez v15, :cond_4a

    .line 344
    goto :goto_75

    .line 346
    :cond_4a
    mul-int v16, v12, v12

    mul-int v17, v13, v13

    add-int v16, v16, v17

    mul-int v17, v14, v14

    add-int v0, v16, v17

    int-to-double v0, v0

    .line 347
    move-wide/from16 v16, v0

    int-to-double v0, v15

    .line 348
    div-double v0, v16, v0

    .line 350
    sub-int v12, p5, v12

    .line 351
    sub-int v13, p6, v13

    .line 352
    sub-int v14, p7, v14

    .line 353
    sub-int v15, p8, v15

    .line 354
    if-nez v15, :cond_65

    .line 355
    goto :goto_75

    .line 358
    :cond_65
    mul-int/2addr v12, v12

    mul-int/2addr v13, v13

    add-int/2addr v12, v13

    mul-int/2addr v14, v14

    add-int/2addr v12, v14

    int-to-double v12, v12

    .line 359
    int-to-double v14, v15

    .line 360
    div-double/2addr v12, v14

    add-double/2addr v0, v12

    .line 361
    cmpl-double v12, v0, v8

    if-lez v12, :cond_75

    .line 362
    nop

    .line 363
    move-wide v8, v0

    move v10, v7

    .line 337
    :cond_75
    :goto_75
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_27

    .line 366
    :cond_7c
    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;

    invoke-direct {v0, v10, v8, v9}, Lcom/android/internal/graphics/palette/WuQuantizer$MaximizeResult;-><init>(ID)V

    return-object v0
.end method

.method private static blacklist top(Lcom/android/internal/graphics/palette/WuQuantizer$Box;Lcom/android/internal/graphics/palette/WuQuantizer$Direction;I[I)I
    .registers 6

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_a4

    .line 420
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected direction "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :pswitch_20
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    invoke-static {p1, v0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 416
    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    .line 417
    invoke-static {v0, v1, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    .line 418
    invoke-static {v0, p0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    add-int/2addr p1, p0

    .line 415
    return p1

    .line 410
    :pswitch_4c
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 411
    invoke-static {v0, p2, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 412
    invoke-static {v0, p2, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 413
    invoke-static {v0, p2, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    add-int/2addr p1, p0

    .line 410
    return p1

    .line 405
    :pswitch_78
    iget p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {p2, p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p1

    aget p1, p3, p1

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 406
    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 407
    invoke-static {p2, v0, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p3, v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 408
    invoke-static {p2, v0, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p3, p0

    add-int/2addr p1, p0

    .line 405
    return p1

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_78
        :pswitch_4c
        :pswitch_20
    .end packed-switch
.end method

.method private blacklist variance(Lcom/android/internal/graphics/palette/WuQuantizer$Box;)D
    .registers 11

    .line 242
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsR:[I

    invoke-static {p1, v0}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsG:[I

    invoke-static {p1, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v1

    .line 244
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMomentsB:[I

    invoke-static {p1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result v2

    .line 245
    iget-object v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v4, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v5, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 246
    invoke-static {v4, v5, v6}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v4

    aget-wide v3, v3, v4

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 247
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 248
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 249
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 250
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 251
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 252
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    add-double/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mMoments:[D

    iget v6, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v7, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v8, p1, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 253
    invoke-static {v6, v7, v8}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v6

    aget-wide v5, v5, v6

    sub-double/2addr v3, v5

    .line 255
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    mul-int/2addr v2, v2

    add-int/2addr v0, v2

    .line 256
    iget-object v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mWeights:[I

    invoke-static {p1, v1}, Lcom/android/internal/graphics/palette/WuQuantizer;->volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I

    move-result p1

    .line 257
    int-to-double v0, v0

    int-to-double v5, p1

    div-double/2addr v0, v5

    sub-double/2addr v3, v0

    .line 258
    return-wide v3
.end method

.method private static blacklist volume(Lcom/android/internal/graphics/palette/WuQuantizer$Box;[I)I
    .registers 6

    .line 370
    iget v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v0

    aget v0, p1, v0

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 371
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 372
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r1:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 373
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 374
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g1:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 375
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget v3, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b1:I

    .line 376
    invoke-static {v1, v2, v3}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result v1

    aget v1, p1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->r0:I

    iget v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->g0:I

    iget p0, p0, Lcom/android/internal/graphics/palette/WuQuantizer$Box;->b0:I

    .line 377
    invoke-static {v1, v2, p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->getIndex(III)I

    move-result p0

    aget p0, p1, p0

    sub-int/2addr v0, p0

    .line 370
    return v0
.end method


# virtual methods
.method public blacklist getColors()[I
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    return-object v0
.end method

.method public blacklist getQuantizedColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist inputPixelToCount()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist quantize([II)V
    .registers 8

    .line 71
    nop

    .line 73
    new-instance v0, Lcom/android/internal/graphics/palette/QuantizerMap;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;-><init>()V

    .line 74
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/graphics/palette/QuantizerMap;->quantize([II)V

    .line 75
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/QuantizerMap;->getColorToCount()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    .line 79
    iget-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p2, :cond_49

    .line 81
    iget-object p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    .line 82
    nop

    .line 83
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    iget-object v2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    add-int/lit8 v3, p2, 0x1

    aput v0, v2, p2

    .line 85
    move p2, v3

    goto :goto_30

    .line 86
    :cond_48
    goto :goto_5d

    .line 87
    :cond_49
    iget-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mInputPixelToCount:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/WuQuantizer;->constructHistogram(Ljava/util/Map;)V

    .line 88
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/WuQuantizer;->createMoments()V

    .line 89
    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/WuQuantizer;->createBoxes(I)Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;

    move-result-object p1

    .line 90
    iget p1, p1, Lcom/android/internal/graphics/palette/WuQuantizer$CreateBoxesResult;->mResultCount:I

    invoke-direct {p0, p1}, Lcom/android/internal/graphics/palette/WuQuantizer;->createResult(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    .line 93
    :goto_5d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object p2, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mColors:[I

    array-length v0, p2

    move v2, v1

    :goto_66
    if-ge v2, v0, :cond_75

    aget v3, p2, v2

    .line 95
    new-instance v4, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-direct {v4, v3, v1}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 97
    :cond_75
    invoke-static {p1}, Lcom/android/internal/graphics/palette/Palette;->from(Ljava/util/List;)Lcom/android/internal/graphics/palette/Palette;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/graphics/palette/WuQuantizer;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    .line 98
    return-void
.end method
