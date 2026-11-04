.class final Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
.super Lcom/android/internal/util/function/pooled/OmniFunction;
.source "PooledLambdaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;,
        Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/util/function/pooled/OmniFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FLAG_ACQUIRED_FROM_MESSAGE_CALLBACKS_POOL:I = 0x2000

.field private static final blacklist FLAG_RECYCLED:I = 0x800

.field private static final blacklist FLAG_RECYCLE_ON_USE:I = 0x1000

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PooledLambdaImpl"

.field static final blacklist MASK_EXPOSED_AS:I = 0x1fc000

.field static final blacklist MASK_FUNC_TYPE:I = 0xfe00000

.field private static final blacklist MAX_ARGS:I = 0xb

.field private static final blacklist MAX_POOL_SIZE:I = 0x32

.field static final blacklist sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

.field static final blacklist sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;


# instance fields
.field blacklist mArgs:[Ljava/lang/Object;

.field blacklist mConstValue:J

.field blacklist mFlags:I

.field blacklist mFunc:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmask(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunmask(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 90
    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    .line 91
    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 93
    return-void
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/internal/util/function/pooled/PooledLambda;",
            ">(",
            "Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;",
            "Ljava/lang/Object;",
            "III",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 553
    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object p0

    .line 575
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 576
    const/high16 p1, 0xfe00000

    invoke-static {p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 577
    const p1, 0x1fc000

    invoke-static/range {p3 .. p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 578
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result p1

    if-ge p1, p2, :cond_29

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 579
    :cond_29
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p1, p2, p5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 580
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p1, p2, p6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 581
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-static {p1, p2, p7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 582
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-static {p1, p2, p8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 583
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x4

    invoke-static {p1, p2, p9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 584
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x5

    invoke-static {p1, p2, p10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 585
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x6

    invoke-static {p1, p2, p11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 586
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/4 p2, 0x7

    invoke-static {p1, p2, p12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 587
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0x8

    invoke-static {p1, p2, p13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 588
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0x9

    invoke-static {p1, p2, p14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 589
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0xa

    move-object/from16 p3, p15

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 590
    iget-object p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    const/16 p2, 0xb

    move-object/from16 p3, p16

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 591
    return-object p0
.end method

.method static blacklist acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .registers 3

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    .line 604
    if-nez v0, :cond_d

    new-instance v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    invoke-direct {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;-><init>()V

    .line 605
    :cond_d
    iget v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 606
    nop

    .line 607
    sget-object v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    if-ne p0, v1, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 606
    :goto_1b
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 608
    return-object v0
.end method

.method static blacklist acquireConstSupplier(I)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;
    .registers 3

    .line 595
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->acquire(Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;)Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    move-result-object v0

    .line 596
    const/16 v1, 0xf

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->encode(II)I

    move-result p0

    .line 597
    const/high16 v1, 0xfe00000

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 598
    const v1, 0x1fc000

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->setFlags(II)V

    .line 599
    return-object v0
.end method

.method private blacklist checkNotRecycled()V
    .registers 4

    .line 234
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    return-void

    .line 234
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance is recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4

    .line 526
    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 527
    :cond_5
    const-string v0, ","

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private blacklist doInvoke()Ljava/lang/Object;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 239
    move-object/from16 v0, p0

    const/high16 v1, 0xfe00000

    invoke-virtual {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v1

    .line 240
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v2

    .line 241
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeReturnType(I)I

    move-result v3

    .line 243
    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_5f0

    :pswitch_22
    goto/16 :goto_5d3

    .line 245
    :pswitch_24
    packed-switch v3, :pswitch_data_614

    .line 249
    iget-object v0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    return-object v0

    .line 248
    :pswitch_2a
    invoke-virtual {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_33
    invoke-virtual {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_3c
    invoke-virtual {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 466
    :pswitch_45
    const/16 v2, 0xb

    packed-switch v3, :pswitch_data_61e

    goto/16 :goto_5d3

    .line 480
    :pswitch_4c
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DodecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 481
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 482
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    .line 480
    invoke-interface/range {v16 .. v28}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 474
    :pswitch_87
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DodecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 475
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 476
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    .line 477
    invoke-direct {v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    .line 474
    invoke-interface/range {v16 .. v28}, Lcom/android/internal/util/function/DodecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 468
    :pswitch_c6
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DodecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 469
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 470
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    invoke-direct {v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v28

    .line 468
    invoke-interface/range {v16 .. v28}, Lcom/android/internal/util/function/DodecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    return-object v7

    .line 445
    :pswitch_100
    packed-switch v3, :pswitch_data_628

    .line 463
    goto/16 :goto_5d3

    .line 458
    :pswitch_105
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/UndecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 459
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 460
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    .line 458
    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 453
    :pswitch_13c
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/UndecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 454
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 455
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    .line 453
    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 447
    :pswitch_177
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/UndecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 448
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 449
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    invoke-direct {v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v27

    .line 447
    invoke-interface/range {v16 .. v27}, Lcom/android/internal/util/function/UndecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    return-object v7

    .line 424
    :pswitch_1ad
    packed-switch v3, :pswitch_data_632

    .line 442
    goto/16 :goto_5d3

    .line 437
    :pswitch_1b2
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DecFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 438
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 439
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    .line 437
    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 432
    :pswitch_1e5
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DecPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 433
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 434
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    .line 432
    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 426
    :pswitch_21c
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/DecConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 427
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 428
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    invoke-direct {v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v26

    .line 426
    invoke-interface/range {v16 .. v26}, Lcom/android/internal/util/function/DecConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    return-object v7

    .line 403
    :pswitch_24e
    packed-switch v3, :pswitch_data_63c

    .line 421
    goto/16 :goto_5d3

    .line 416
    :pswitch_253
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/NonaFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 417
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 418
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    .line 416
    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 411
    :pswitch_282
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/NonaPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 412
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 413
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    .line 411
    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 405
    :pswitch_2b5
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/NonaConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 406
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 407
    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    invoke-direct {v0, v6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v25

    .line 405
    invoke-interface/range {v16 .. v25}, Lcom/android/internal/util/function/NonaConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    return-object v7

    .line 382
    :pswitch_2e3
    packed-switch v3, :pswitch_data_646

    .line 400
    goto/16 :goto_5d3

    .line 395
    :pswitch_2e8
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/OctFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 396
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 397
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 395
    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 390
    :pswitch_313
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/OctPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 391
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    .line 392
    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 390
    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 384
    :pswitch_342
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/OctConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 385
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 386
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    invoke-direct {v0, v8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v24

    .line 384
    invoke-interface/range {v16 .. v24}, Lcom/android/internal/util/function/OctConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    return-object v7

    .line 361
    :pswitch_36c
    packed-switch v3, :pswitch_data_650

    .line 379
    goto/16 :goto_5d3

    .line 374
    :pswitch_371
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HeptFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 375
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 376
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 374
    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 369
    :pswitch_398
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HeptPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    .line 370
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    .line 371
    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 369
    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 363
    :pswitch_3c3
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HeptConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 364
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 365
    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    invoke-direct {v0, v9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v23

    .line 363
    invoke-interface/range {v16 .. v23}, Lcom/android/internal/util/function/HeptConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    return-object v7

    .line 343
    :pswitch_3e9
    packed-switch v3, :pswitch_data_65a

    .line 358
    goto/16 :goto_5d3

    .line 354
    :pswitch_3ee
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/internal/util/function/HexFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    .line 355
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    .line 354
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_410
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/internal/util/function/HexPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    .line 351
    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v8

    .line 350
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/util/function/HexPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 345
    :pswitch_436
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/HexConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 346
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    invoke-direct {v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v22

    .line 345
    invoke-interface/range {v16 .. v22}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    return-object v7

    .line 325
    :pswitch_458
    packed-switch v3, :pswitch_data_664

    .line 340
    goto/16 :goto_5d3

    .line 336
    :pswitch_45d
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/internal/util/function/QuintFunction;

    .line 337
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    .line 336
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/util/function/QuintFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_47b
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/internal/util/function/QuintPredicate;

    .line 333
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v7

    .line 332
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/util/function/QuintPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 327
    :pswitch_49d
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/internal/util/function/QuintConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v17

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v18

    .line 328
    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v19

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v20

    invoke-direct {v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v21

    .line 327
    invoke-interface/range {v16 .. v21}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    return-object v7

    .line 308
    :pswitch_4bb
    packed-switch v3, :pswitch_data_66e

    .line 322
    goto/16 :goto_5d3

    .line 318
    :pswitch_4c0
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/QuadFunction;

    .line 319
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    .line 318
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 314
    :pswitch_4d9
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/QuadPredicate;

    .line 315
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/util/function/QuadPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_4f6
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/QuadConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    return-object v7

    .line 293
    :pswitch_50e
    packed-switch v3, :pswitch_data_678

    .line 306
    goto/16 :goto_5d3

    .line 303
    :pswitch_513
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/TriFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 299
    :pswitch_528
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/TriPredicate;

    .line 300
    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    .line 299
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 295
    :pswitch_541
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/function/TriConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v13}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    return-object v7

    .line 279
    :pswitch_555
    packed-switch v3, :pswitch_data_682

    .line 291
    goto/16 :goto_5d3

    .line 288
    :pswitch_55a
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiFunction;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 285
    :pswitch_56b
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiPredicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 281
    :pswitch_580
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v14}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    return-object v7

    .line 265
    :pswitch_590
    packed-switch v3, :pswitch_data_68c

    .line 277
    goto :goto_5d3

    .line 274
    :pswitch_594
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 271
    :pswitch_5a1
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Predicate;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_5b2
    iget-object v1, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-direct {v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 268
    return-object v7

    .line 253
    :pswitch_5be
    packed-switch v3, :pswitch_data_696

    .line 263
    goto :goto_5d3

    .line 260
    :pswitch_5c2
    iget-object v0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_5cb
    iget-object v0, v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 256
    return-object v7

    .line 487
    :goto_5d3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown function type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_5f0
    .packed-switch 0x0
        :pswitch_5be
        :pswitch_590
        :pswitch_555
        :pswitch_50e
        :pswitch_4bb
        :pswitch_458
        :pswitch_3e9
        :pswitch_36c
        :pswitch_2e3
        :pswitch_24e
        :pswitch_1ad
        :pswitch_100
        :pswitch_45
        :pswitch_22
        :pswitch_22
        :pswitch_24
    .end packed-switch

    :pswitch_data_614
    .packed-switch 0x4
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
    .end packed-switch

    :pswitch_data_61e
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_87
        :pswitch_4c
    .end packed-switch

    :pswitch_data_628
    .packed-switch 0x1
        :pswitch_177
        :pswitch_13c
        :pswitch_105
    .end packed-switch

    :pswitch_data_632
    .packed-switch 0x1
        :pswitch_21c
        :pswitch_1e5
        :pswitch_1b2
    .end packed-switch

    :pswitch_data_63c
    .packed-switch 0x1
        :pswitch_2b5
        :pswitch_282
        :pswitch_253
    .end packed-switch

    :pswitch_data_646
    .packed-switch 0x1
        :pswitch_342
        :pswitch_313
        :pswitch_2e8
    .end packed-switch

    :pswitch_data_650
    .packed-switch 0x1
        :pswitch_3c3
        :pswitch_398
        :pswitch_371
    .end packed-switch

    :pswitch_data_65a
    .packed-switch 0x1
        :pswitch_436
        :pswitch_410
        :pswitch_3ee
    .end packed-switch

    :pswitch_data_664
    .packed-switch 0x1
        :pswitch_49d
        :pswitch_47b
        :pswitch_45d
    .end packed-switch

    :pswitch_data_66e
    .packed-switch 0x1
        :pswitch_4f6
        :pswitch_4d9
        :pswitch_4c0
    .end packed-switch

    :pswitch_data_678
    .packed-switch 0x1
        :pswitch_541
        :pswitch_528
        :pswitch_513
    .end packed-switch

    :pswitch_data_682
    .packed-switch 0x1
        :pswitch_580
        :pswitch_56b
        :pswitch_55a
    .end packed-switch

    :pswitch_data_68c
    .packed-switch 0x1
        :pswitch_5b2
        :pswitch_5a1
        :pswitch_594
    .end packed-switch

    :pswitch_data_696
    .packed-switch 0x1
        :pswitch_5cb
        :pswitch_5c2
        :pswitch_5c2
    .end packed-switch
.end method

.method private blacklist doRecycle()V
    .registers 4

    .line 168
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 169
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sMessageCallbacksPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    goto :goto_b

    .line 170
    :cond_9
    sget-object v0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->sPool:Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;

    .line 172
    :goto_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    :cond_17
    const/16 v1, 0x800

    iput v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 175
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    .line 177
    invoke-virtual {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$Pool;->release(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method private blacklist fillInArg(Ljava/lang/Object;)Z
    .registers 7

    .line 218
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 219
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_26

    .line 220
    iget-object v3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v3, v3, v2

    sget-object v4, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne v3, v4, :cond_23

    .line 221
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 222
    iget p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v0, p1

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 223
    const/4 p1, 0x1

    return p1

    .line 219
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 226
    :cond_26
    if-eqz p1, :cond_56

    sget-object v0, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-ne p1, v0, :cond_2d

    goto :goto_56

    .line 227
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more arguments expected for provided arg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " among "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 228
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_56
    :goto_56
    return v1
.end method

.method private blacklist getFuncTypeAsString()Ljava/lang/String;
    .registers 4

    .line 535
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "<recycled>"

    return-object v0

    .line 536
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v0

    const-string v1, "supplier"

    if-eqz v0, :cond_12

    return-object v1

    .line 537
    :cond_12
    const v0, 0x1fc000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string v2, "Consumer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v0, "consumer"

    return-object v0

    .line 539
    :cond_28
    const-string v2, "Function"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v0, "function"

    return-object v0

    .line 540
    :cond_33
    const-string v2, "Predicate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v0, "predicate"

    return-object v0

    .line 541
    :cond_3e
    const-string v2, "Supplier"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    return-object v1

    .line 542
    :cond_47
    const-string v1, "Runnable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v0, "runnable"

    return-object v0

    .line 543
    :cond_52
    return-object v0
.end method

.method private static blacklist hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 531
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isConstSupplier()Z
    .registers 3

    .line 491
    const/high16 v0, 0xfe00000

    invoke-virtual {p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist isInvocationArgAtIndex(I)Z
    .registers 4

    .line 664
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private blacklist isRecycleOnUse()Z
    .registers 2

    .line 660
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist isRecycled()Z
    .registers 2

    .line 656
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist mask(II)I
    .registers 3

    .line 680
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shl-int/2addr p1, v0

    and-int/2addr p0, p1

    return p0
.end method

.method private blacklist popArg(I)Ljava/lang/Object;
    .registers 7

    .line 495
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 496
    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isInvocationArgAtIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 497
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    aput-object v2, v1, p1

    .line 498
    iget v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    int-to-long v1, v1

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v3

    not-long v3, v3

    and-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 500
    :cond_1c
    return-object v0
.end method

.method private static blacklist setIfInBounds([Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 612
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_8

    aput-object p2, p0, p1

    .line 613
    :cond_8
    return-void
.end method

.method private static blacklist unmask(II)I
    .registers 3

    .line 687
    and-int/2addr p1, p0

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    shl-int p0, v0, p0

    div-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public blacklist andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    .line 624
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic whitelist test-api andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getAsDouble()D
    .registers 3

    .line 629
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getAsInt()I
    .registers 3

    .line 634
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getAsLong()J
    .registers 3

    .line 639
    iget-wide v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mConstValue:J

    return-wide v0
.end method

.method blacklist getFlags(I)I
    .registers 3

    .line 668
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->unmask(II)I

    move-result p1

    return p1
.end method

.method public blacklist getTraceName()Ljava/lang/String;
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->getLambdaName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->checkNotRecycled()V

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p4}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 192
    invoke-direct {p0, p5}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p6}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p7}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p8}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 193
    invoke-direct {p0, p9}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p10}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-direct {p0, p11}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->fillInArg(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    :cond_45
    nop

    .line 194
    const/high16 p1, 0xfe00000

    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result p1

    .line 195
    const/16 p2, 0xf

    const/4 p3, 0x0

    if-eq p1, p2, :cond_8c

    .line 196
    move p2, p3

    :goto_56
    if-ge p2, p1, :cond_8c

    .line 197
    iget-object p4, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    aget-object p4, p4, p2

    sget-object p5, Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;->INSTANCE:Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    if-eq p4, p5, :cond_63

    .line 196
    add-int/lit8 p2, p2, 0x1

    goto :goto_56

    .line 198
    :cond_63
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing argument #"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " among "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 199
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_8c
    :try_start_8c
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_b0

    .line 206
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 207
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    goto :goto_af

    .line 208
    :cond_9a
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_af

    .line 209
    iget-object p2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result p2

    .line 210
    nop

    :goto_a7
    if-ge p3, p2, :cond_af

    .line 211
    invoke-direct {p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    .line 210
    add-int/lit8 p3, p3, 0x1

    goto :goto_a7

    .line 204
    :cond_af
    :goto_af
    return-object p1

    .line 206
    :catchall_b0
    move-exception p1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycleOnUse()Z

    move-result p2

    if-nez p2, :cond_cc

    .line 208
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_cf

    .line 209
    iget-object p2, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result p2

    .line 210
    nop

    :goto_c4
    if-ge p3, p2, :cond_cf

    .line 211
    invoke-direct {p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->popArg(I)Ljava/lang/Object;

    .line 210
    add-int/lit8 p3, p3, 0x1

    goto :goto_c4

    .line 207
    :cond_cc
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    .line 214
    :cond_cf
    throw p1
.end method

.method public blacklist negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/BiPredicate;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api negate()Ljava/util/function/Predicate;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recycle()V
    .registers 2

    .line 163
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doRecycle()V

    .line 164
    :cond_9
    return-void
.end method

.method public blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .line 646
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 647
    return-object p0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object v0

    return-object v0
.end method

.method blacklist setFlags(II)V
    .registers 5

    .line 672
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 673
    iget v0, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    invoke-static {p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mask(II)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFlags:I

    .line 674
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 505
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<recycled PooledLambda@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 507
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->isConstSupplier()Z

    move-result v1

    const-string v2, ")"

    const-string v3, "("

    if-eqz v1, :cond_4b

    .line 509
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->doInvoke()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 511
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mFunc:Ljava/lang/Object;

    .line 512
    instance-of v4, v1, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;

    if-eqz v4, :cond_55

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 515
    :cond_55
    invoke-direct {p0}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFuncTypeAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->hashCodeHex(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :goto_6a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v1, p0, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->mArgs:[Ljava/lang/Object;

    .line 519
    const/high16 v3, 0xfe00000

    invoke-virtual {p0, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->getFlags(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl$LambdaType;->decodeArgCount(I)I

    move-result v3

    .line 518
    invoke-direct {p0, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambdaImpl;->commaSeparateFirstN([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :goto_83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
