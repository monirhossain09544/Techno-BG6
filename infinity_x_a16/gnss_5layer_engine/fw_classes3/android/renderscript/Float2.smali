.class public Landroid/renderscript/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor whitelist <init>(FF)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 42
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 43
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Float2;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 37
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iput p1, p0, Landroid/renderscript/Float2;->y:F

    .line 38
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    .line 88
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 89
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 90
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 92
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    .line 53
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 54
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 55
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 57
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    .line 238
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 239
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 240
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 242
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    .line 213
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 214
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 215
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 217
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)F
    .registers 4

    .line 263
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iget p0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    .line 188
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 189
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 190
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 192
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    .line 163
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 164
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 165
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 167
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float2;F)Landroid/renderscript/Float2;
    .registers 4

    .line 138
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 139
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 140
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 142
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float2;Landroid/renderscript/Float2;)Landroid/renderscript/Float2;
    .registers 5

    .line 113
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 114
    iget v1, p0, Landroid/renderscript/Float2;->x:F

    iget v2, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 115
    iget p0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float2;->y:F

    .line 117
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(F)V
    .registers 3

    .line 76
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 77
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 78
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Float2;)V
    .registers 4

    .line 66
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 67
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 68
    return-void
.end method

.method public greylist-max-o addAt(IF)V
    .registers 3

    .line 356
    packed-switch p1, :pswitch_data_18

    .line 364
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index: i"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :pswitch_b
    iget p1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float2;->y:F

    .line 362
    return-void

    .line 358
    :pswitch_11
    iget p1, p0, Landroid/renderscript/Float2;->x:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 359
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Float2;F)V
    .registers 5

    .line 273
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 274
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 275
    return-void
.end method

.method public greylist-max-o copyTo([FI)V
    .registers 4

    .line 386
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    aput v0, p1, p2

    .line 387
    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Landroid/renderscript/Float2;->y:F

    aput v0, p1, p2

    .line 388
    return-void
.end method

.method public greylist-max-o div(F)V
    .registers 3

    .line 226
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 227
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 228
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Float2;)V
    .registers 4

    .line 201
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 202
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 203
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Float2;)F
    .registers 4

    .line 252
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o elementSum()F
    .registers 3

    .line 310
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p0, Landroid/renderscript/Float2;->y:F

    add-float/2addr v0, v1

    return v0
.end method

.method public greylist-max-o get(I)F
    .registers 3

    .line 320
    packed-switch p1, :pswitch_data_12

    .line 326
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index: i"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :pswitch_b
    iget p1, p0, Landroid/renderscript/Float2;->y:F

    return p1

    .line 322
    :pswitch_e
    iget p1, p0, Landroid/renderscript/Float2;->x:F

    return p1

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o length()I
    .registers 2

    .line 301
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o mul(F)V
    .registers 3

    .line 176
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 177
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 178
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Float2;)V
    .registers 4

    .line 151
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 152
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 153
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 291
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 292
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 293
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Float2;)V
    .registers 3

    .line 283
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 284
    iget p1, p1, Landroid/renderscript/Float2;->y:F

    iput p1, p0, Landroid/renderscript/Float2;->y:F

    .line 285
    return-void
.end method

.method public greylist-max-o setAt(IF)V
    .registers 3

    .line 337
    packed-switch p1, :pswitch_data_12

    .line 345
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index: i"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 343
    return-void

    .line 339
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Float2;->x:F

    .line 340
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(FF)V
    .registers 3

    .line 375
    iput p1, p0, Landroid/renderscript/Float2;->x:F

    .line 376
    iput p2, p0, Landroid/renderscript/Float2;->y:F

    .line 377
    return-void
.end method

.method public greylist-max-o sub(F)V
    .registers 3

    .line 126
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 127
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 128
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Float2;)V
    .registers 4

    .line 101
    iget v0, p0, Landroid/renderscript/Float2;->x:F

    iget v1, p1, Landroid/renderscript/Float2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float2;->x:F

    .line 102
    iget v0, p0, Landroid/renderscript/Float2;->y:F

    iget p1, p1, Landroid/renderscript/Float2;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float2;->y:F

    .line 103
    return-void
.end method
