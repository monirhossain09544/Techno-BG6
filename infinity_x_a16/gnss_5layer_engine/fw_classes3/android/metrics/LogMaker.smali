.class public Landroid/metrics/LogMaker;
.super Ljava/lang/Object;
.source "LogMaker.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final greylist-max-o MAX_SERIALIZED_SIZE:I = 0xfa0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "LogBuilder"


# instance fields
.field private greylist-max-o entries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 55
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/Object;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 59
    if-eqz p1, :cond_10

    .line 60
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->deserialize([Ljava/lang/Object;)V

    goto :goto_14

    .line 62
    :cond_10
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 64
    :goto_14
    return-void
.end method


# virtual methods
.method public whitelist addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
    .registers 5

    .line 245
    if-nez p2, :cond_7

    .line 246
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->clearTaggedData(I)Landroid/metrics/LogMaker;

    move-result-object p1

    return-object p1

    .line 248
    :cond_7
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->isValidValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_37

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Log value too long, omitted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LogBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 255
    :cond_37
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    :goto_3c
    return-object p0

    .line 249
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value must be loggable type - int, long, float, String"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist clearCategory()Landroid/metrics/LogMaker;
    .registers 3

    .line 74
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    return-object p0
.end method

.method public whitelist clearPackageName()Landroid/metrics/LogMaker;
    .registers 3

    .line 150
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 151
    return-object p0
.end method

.method public greylist-max-o clearProcessId()Landroid/metrics/LogMaker;
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 171
    return-object p0
.end method

.method public whitelist clearSubtype()Landroid/metrics/LogMaker;
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 99
    return-object p0
.end method

.method public whitelist clearTaggedData(I)Landroid/metrics/LogMaker;
    .registers 3

    .line 267
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 268
    return-object p0
.end method

.method public greylist-max-o clearTimestamp()Landroid/metrics/LogMaker;
    .registers 3

    .line 128
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    return-object p0
.end method

.method public whitelist clearType()Landroid/metrics/LogMaker;
    .registers 3

    .line 86
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 87
    return-object p0
.end method

.method public greylist-max-o clearUid()Landroid/metrics/LogMaker;
    .registers 3

    .line 191
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 192
    return-object p0
.end method

.method public whitelist deserialize([Ljava/lang/Object;)V
    .registers 7

    .line 412
    const/4 v0, 0x0

    .line 413
    :goto_1
    if-eqz p1, :cond_4a

    array-length v1, p1

    if-ge v0, v1, :cond_4a

    .line 414
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p1, v0

    .line 415
    array-length v2, p1

    if-ge v1, v2, :cond_15

    add-int/lit8 v2, v1, 0x1

    aget-object v1, p1, v1

    move v4, v2

    move-object v2, v1

    move v1, v4

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 416
    :goto_16
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_26

    .line 417
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_48

    .line 419
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_37

    const-string/jumbo v0, "null"

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LogBuilder"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_48
    move v0, v1

    goto :goto_1

    .line 422
    :cond_4a
    return-void
.end method

.method public whitelist getCategory()I
    .registers 3

    .line 287
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 288
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 289
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 291
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCounterBucket()J
    .registers 3

    .line 367
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 368
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    .line 369
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 371
    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getCounterName()Ljava/lang/String;
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 359
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 361
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCounterValue()I
    .registers 3

    .line 383
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 384
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 385
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 387
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEntries()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 3

    .line 327
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 328
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 329
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 331
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProcessId()I
    .registers 3

    .line 337
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 338
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 339
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 341
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSubtype()I
    .registers 3

    .line 307
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 308
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 309
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 311
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTaggedData(I)Ljava/lang/Object;
    .registers 3

    .line 282
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 317
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 318
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_13

    .line 319
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 321
    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getType()I
    .registers 3

    .line 297
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 298
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 299
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 301
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUid()I
    .registers 3

    .line 347
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 348
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 349
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 351
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist isLongCounterBucket()Z
    .registers 3

    .line 377
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 378
    instance-of v0, v0, Ljava/lang/Long;

    return v0
.end method

.method public whitelist isSubsetOf(Landroid/metrics/LogMaker;)Z
    .registers 7

    .line 429
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 430
    return v0

    .line 432
    :cond_4
    move v1, v0

    :goto_5
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 433
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 434
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 435
    iget-object v4, p1, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 436
    if-nez v3, :cond_23

    if-nez v2, :cond_29

    :cond_23
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 437
    :cond_29
    return v0

    .line 432
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 439
    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist isValidValue(Ljava/lang/Object;)Z
    .registers 3

    .line 275
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_13

    instance-of p1, p1, Ljava/lang/Float;

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public whitelist serialize()[Ljava/lang/Object;
    .registers 5

    .line 395
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 396
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 397
    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 398
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 400
    :cond_2e
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 401
    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_3c

    .line 405
    return-object v0

    .line 402
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log line too long, did not emit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public whitelist setCategory(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 68
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public greylist-max-o setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;
    .registers 5

    .line 143
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x367

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    return-object p0
.end method

.method public greylist-max-o setCounterBucket(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 213
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    return-object p0
.end method

.method public greylist-max-o setCounterBucket(J)Landroid/metrics/LogMaker;
    .registers 5

    .line 224
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    return-object p0
.end method

.method public greylist-max-o setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    .line 202
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    return-object p0
.end method

.method public greylist-max-o setCounterValue(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 235
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x322

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    return-object p0
.end method

.method public greylist-max-o setLatency(J)Landroid/metrics/LogMaker;
    .registers 5

    .line 108
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x54f

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    .line 134
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    return-object p0
.end method

.method public greylist-max-o setProcessId(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 162
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    return-object p0
.end method

.method public whitelist setSubtype(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 92
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    return-object p0
.end method

.method public greylist-max-o setTimestamp(J)Landroid/metrics/LogMaker;
    .registers 5

    .line 120
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    return-object p0
.end method

.method public whitelist setType(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 80
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    return-object p0
.end method

.method public greylist-max-o setUid(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 182
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    return-object p0
.end method
