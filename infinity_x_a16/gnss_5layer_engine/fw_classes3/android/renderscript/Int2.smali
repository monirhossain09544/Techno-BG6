.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "Int2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:I

.field public whitelist y:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 38
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 42
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 43
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Int2;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 48
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    .line 49
    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .registers 4

    .line 94
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 95
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 96
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 98
    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .registers 5

    .line 69
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 70
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 71
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 73
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .registers 4

    .line 244
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 245
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 246
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 248
    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .registers 5

    .line 219
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 220
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 221
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 223
    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)I
    .registers 4

    .line 336
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .registers 4

    .line 294
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 295
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 296
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 298
    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .registers 5

    .line 269
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 270
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 271
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 273
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .registers 4

    .line 194
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 195
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 196
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 198
    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .registers 5

    .line 169
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 170
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 171
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 173
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .registers 4

    .line 144
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 145
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 146
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 148
    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .registers 5

    .line 119
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 120
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 121
    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    .line 123
    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .registers 3

    .line 82
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 83
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 84
    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Int2;)V
    .registers 4

    .line 57
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 58
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 59
    return-void
.end method

.method public greylist-max-o addAt(II)V
    .registers 3

    .line 423
    packed-switch p1, :pswitch_data_18

    .line 431
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index: i"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :pswitch_b
    iget p1, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    .line 429
    return-void

    .line 425
    :pswitch_11
    iget p1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 426
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Int2;I)V
    .registers 5

    .line 346
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 347
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 348
    return-void
.end method

.method public greylist-max-o copyTo([II)V
    .registers 4

    .line 442
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    aput v0, p1, p2

    .line 443
    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    aput v0, p1, p2

    .line 444
    return-void
.end method

.method public greylist-max-o div(I)V
    .registers 3

    .line 232
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 233
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 234
    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Int2;)V
    .registers 4

    .line 207
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 208
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 209
    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Int2;)I
    .registers 4

    .line 325
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o elementSum()I
    .registers 3

    .line 377
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o get(I)I
    .registers 3

    .line 387
    packed-switch p1, :pswitch_data_12

    .line 393
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index: i"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :pswitch_b
    iget p1, p0, Landroid/renderscript/Int2;->y:I

    return p1

    .line 389
    :pswitch_e
    iget p1, p0, Landroid/renderscript/Int2;->x:I

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

    .line 307
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o mod(I)V
    .registers 3

    .line 282
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 283
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 284
    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Int2;)V
    .registers 4

    .line 257
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 258
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 259
    return-void
.end method

.method public greylist-max-o mul(I)V
    .registers 3

    .line 182
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 183
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 184
    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Int2;)V
    .registers 4

    .line 157
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 158
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 159
    return-void
.end method

.method public greylist-max-o negate()V
    .registers 2

    .line 314
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 315
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 316
    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Int2;)V
    .registers 3

    .line 356
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 357
    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    .line 358
    return-void
.end method

.method public greylist-max-o setAt(II)V
    .registers 3

    .line 404
    packed-switch p1, :pswitch_data_12

    .line 412
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Index: i"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :pswitch_b
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 410
    return-void

    .line 406
    :pswitch_e
    iput p2, p0, Landroid/renderscript/Int2;->x:I

    .line 407
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public greylist-max-o setValues(II)V
    .registers 3

    .line 367
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 368
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 369
    return-void
.end method

.method public greylist-max-o sub(I)V
    .registers 3

    .line 132
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 133
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 134
    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Int2;)V
    .registers 4

    .line 107
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 108
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 109
    return-void
.end method
