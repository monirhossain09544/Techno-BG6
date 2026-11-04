.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field greylist-max-o mArraySizes:[I

.field greylist-max-o mCount:I

.field greylist-max-o mElementNames:[Ljava/lang/String;

.field greylist-max-o mElements:[Landroid/renderscript/Element;

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;

.field greylist-max-o mSkipPadding:I


# direct methods
.method public constructor whitelist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3

    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1321
    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 1322
    const/4 p1, 0x0

    iput p1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 1323
    const/16 p1, 0x8

    new-array v0, p1, [Landroid/renderscript/Element;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1324
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1325
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1326
    return-void
.end method


# virtual methods
.method public whitelist add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .registers 4

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .registers 11

    .line 1336
    const/4 v0, 0x1

    if-lt p3, v0, :cond_69

    .line 1341
    iget v1, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 1342
    const-string v1, "#padding_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1343
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1344
    return-object p0

    .line 1348
    :cond_13
    iget v1, p1, Landroid/renderscript/Element;->mVectorSize:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1b

    .line 1349
    iput v0, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_1d

    .line 1351
    :cond_1b
    iput v2, p0, Landroid/renderscript/Element$Builder;->mSkipPadding:I

    .line 1354
    :goto_1d
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    iget-object v3, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    array-length v3, v3

    if-ne v1, v3, :cond_51

    .line 1355
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [Landroid/renderscript/Element;

    .line 1356
    iget v3, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    .line 1357
    iget v4, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v4, v4, 0x8

    new-array v4, v4, [I

    .line 1358
    iget-object v5, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v6, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v5, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    iget-object v5, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v6, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v5, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    iget-object v5, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v6, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v5, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1361
    iput-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    .line 1362
    iput-object v3, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 1363
    iput-object v4, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    .line 1365
    :cond_51
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p1, v1, v2

    .line 1366
    iget-object p1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput-object p2, p1, v1

    .line 1367
    iget-object p1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget p2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    aput p3, p1, p2

    .line 1368
    iget p1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    .line 1369
    return-object p0

    .line 1337
    :cond_69
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Array size cannot be less than 1."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist create()Landroid/renderscript/Element;
    .registers 11

    .line 1389
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1390
    iget v0, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v5, v0, [Landroid/renderscript/Element;

    .line 1391
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v6, v1, [Ljava/lang/String;

    .line 1392
    iget v1, p0, Landroid/renderscript/Element$Builder;->mCount:I

    new-array v7, v1, [I

    .line 1393
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElements:[Landroid/renderscript/Element;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1395
    iget-object v1, p0, Landroid/renderscript/Element$Builder;->mArraySizes:[I

    iget v2, p0, Landroid/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v3, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1397
    new-array v1, v0, [J

    .line 1398
    nop

    :goto_2a
    if-ge v3, v0, :cond_39

    .line 1399
    aget-object v2, v5, v3

    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v1, v3

    .line 1398
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1401
    :cond_39
    iget-object v0, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1, v6, v7}, Landroid/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v2

    .line 1402
    new-instance v1, Landroid/renderscript/Element;

    iget-object v4, p0, Landroid/renderscript/Element$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v1
.end method
