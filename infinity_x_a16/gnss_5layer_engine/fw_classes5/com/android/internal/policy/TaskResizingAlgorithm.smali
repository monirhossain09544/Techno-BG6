.class public Lcom/android/internal/policy/TaskResizingAlgorithm;
.super Ljava/lang/Object;
.source "TaskResizingAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/TaskResizingAlgorithm$CtrlType;
    }
.end annotation


# static fields
.field public static final blacklist CTRL_BOTTOM:I = 0x8

.field public static final blacklist CTRL_LEFT:I = 0x1

.field public static final blacklist CTRL_NONE:I = 0x0

.field public static final blacklist CTRL_RIGHT:I = 0x2

.field public static final blacklist CTRL_TOP:I = 0x4

.field public static final blacklist MIN_ASPECT:F = 1.2f


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;
    .registers 29

    .line 81
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p8

    sub-float v4, p0, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 82
    sub-float v5, p1, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 83
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 84
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 85
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 86
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 89
    sub-int v9, v8, v6

    .line 90
    sub-int v10, v0, v7

    .line 91
    and-int/lit8 v11, p5, 0x1

    if-eqz v11, :cond_31

    .line 92
    sub-int v4, v9, v4

    iget v12, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_42

    .line 93
    :cond_31
    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_41

    .line 94
    add-int/2addr v4, v9

    iget v12, v3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_42

    .line 93
    :cond_41
    move v4, v9

    .line 96
    :goto_42
    and-int/lit8 v12, p5, 0x4

    if-eqz v12, :cond_53

    .line 97
    sub-int v5, v10, v5

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_64

    .line 98
    :cond_53
    and-int/lit8 v13, p5, 0x8

    if-eqz v13, :cond_63

    .line 99
    add-int/2addr v5, v10

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_64

    .line 98
    :cond_63
    move v5, v10

    .line 103
    :goto_64
    int-to-float v13, v4

    int-to-float v14, v5

    div-float/2addr v13, v14

    .line 104
    if-eqz p9, :cond_152

    const v14, 0x3f99999a    # 1.2f

    if-eqz p10, :cond_76

    cmpg-float v15, v13, v14

    if-ltz v15, :cond_73

    goto :goto_76

    :cond_73
    move/from16 p0, v14

    goto :goto_84

    :cond_76
    :goto_76
    if-nez p10, :cond_152

    move/from16 p0, v14

    float-to-double v14, v13

    const-wide v16, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v13, v14, v16

    if-lez v13, :cond_152

    .line 112
    :goto_84
    if-eqz p10, :cond_dd

    .line 114
    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 115
    int-to-float v14, v13

    div-float v14, v14, p0

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 116
    if-ge v14, v2, :cond_b0

    .line 118
    nop

    .line 119
    iget v13, v3, Landroid/graphics/Point;->x:I

    int-to-float v14, v2

    mul-float v14, v14, p0

    .line 120
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 119
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v14, v2

    .line 123
    :cond_b0
    iget v15, v3, Landroid/graphics/Point;->y:I

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 124
    move/from16 v16, v0

    int-to-float v0, v15

    mul-float v0, v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    if-ge v0, v1, :cond_137

    .line 127
    nop

    .line 128
    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    div-float v3, v3, p0

    .line 129
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v0, v1

    goto :goto_137

    .line 133
    :cond_dd
    move/from16 v16, v0

    iget v0, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 134
    int-to-float v13, v0

    mul-float v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 135
    if-ge v13, v2, :cond_10b

    .line 137
    nop

    .line 138
    iget v0, v3, Landroid/graphics/Point;->x:I

    int-to-float v13, v2

    div-float v13, v13, p0

    .line 139
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 138
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v14, v2

    move v13, v0

    goto :goto_10d

    .line 135
    :cond_10b
    move v14, v13

    move v13, v0

    .line 142
    :goto_10d
    iget v0, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 143
    int-to-float v0, v15

    div-float v0, v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 144
    if-ge v0, v1, :cond_137

    .line 146
    nop

    .line 147
    iget v0, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    mul-float v3, v3, p0

    .line 148
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v0, v1

    .line 154
    :cond_137
    :goto_137
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v4, v9, :cond_140

    if-le v5, v10, :cond_13e

    goto :goto_140

    :cond_13e
    move v3, v1

    goto :goto_141

    :cond_140
    :goto_140
    move v3, v2

    .line 155
    :goto_141
    mul-int v4, v13, v14

    mul-int v5, v0, v15

    if-le v4, v5, :cond_148

    move v1, v2

    :cond_148
    if-ne v3, v1, :cond_14e

    .line 156
    nop

    .line 157
    move v4, v13

    move v5, v14

    goto :goto_154

    .line 159
    :cond_14e
    nop

    .line 160
    move v4, v0

    move v5, v15

    goto :goto_154

    .line 104
    :cond_152
    move/from16 v16, v0

    .line 165
    :goto_154
    if-eqz v11, :cond_159

    .line 166
    sub-int v6, v8, v4

    goto :goto_15b

    .line 168
    :cond_159
    add-int v8, v6, v4

    .line 170
    :goto_15b
    if-eqz v12, :cond_162

    .line 171
    sub-int v7, v16, v5

    move/from16 v0, v16

    goto :goto_164

    .line 173
    :cond_162
    add-int v0, v7, v5

    .line 175
    :goto_164
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method
