.class public abstract Landroid/security/keystore/KeyProperties$BlockMode;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BlockMode"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 413
    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2f

    .line 416
    :cond_9
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 417
    nop

    .line 418
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 419
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 420
    add-int/lit8 v1, v1, 0x1

    .line 421
    goto :goto_15

    .line 422
    :cond_2e
    return-object v0

    .line 414
    :cond_2f
    :goto_2f
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0
.end method

.method public static greylist-max-o allToKeymaster([Ljava/lang/String;)[I
    .registers 4

    .line 426
    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 429
    :cond_6
    array-length v0, p0

    new-array v0, v0, [I

    .line 430
    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 431
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 433
    :cond_18
    return-object v0

    .line 427
    :cond_19
    :goto_19
    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    return-object p0
.end method

.method public static greylist-max-o fromKeymaster(I)Ljava/lang/String;
    .registers 4

    .line 396
    sparse-switch p0, :sswitch_data_28

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :sswitch_1c
    const-string p0, "GCM"

    return-object p0

    .line 402
    :sswitch_1f
    const-string p0, "CTR"

    return-object p0

    .line 400
    :sswitch_22
    const-string p0, "CBC"

    return-object p0

    .line 398
    :sswitch_25
    const-string p0, "ECB"

    return-object p0

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_22
        0x3 -> :sswitch_1f
        0x20 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static greylist-max-o toKeymaster(Ljava/lang/String;)I
    .registers 4

    .line 381
    const-string v0, "ECB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 382
    const/4 p0, 0x1

    return p0

    .line 383
    :cond_a
    const-string v0, "CBC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 384
    const/4 p0, 0x2

    return p0

    .line 385
    :cond_14
    const-string v0, "CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 386
    const/4 p0, 0x3

    return p0

    .line 387
    :cond_1e
    const-string v0, "GCM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 388
    const/16 p0, 0x20

    return p0

    .line 390
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
