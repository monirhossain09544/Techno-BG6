.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$PatternType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_PATTERN_STORAGE:I = 0x800

.field private static final greylist-max-o NO_MATCH:I = -0x1

.field private static final greylist-max-o PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final greylist-max-o PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final greylist-max-o PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final greylist-max-o PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final greylist-max-o PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final whitelist PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final whitelist PATTERN_LITERAL:I = 0x0

.field public static final whitelist PATTERN_PREFIX:I = 0x1

.field public static final whitelist PATTERN_SIMPLE_GLOB:I = 0x2

.field public static final whitelist PATTERN_SUFFIX:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final greylist-max-o TOKEN_TYPE_ANY:I = 0x1

.field private static final greylist-max-o TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final greylist-max-o TOKEN_TYPE_LITERAL:I = 0x0

.field private static final greylist-max-o TOKEN_TYPE_SET:I = 0x2

.field private static final greylist-max-o sParsedPatternScratch:[I


# instance fields
.field private final greylist-max-o mParsedPattern:[I

.field private final greylist-max-o mPattern:Ljava/lang/String;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 203
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 118
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 119
    iget p2, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_13

    .line 120
    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_16

    .line 122
    :cond_13
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    .line 124
    :goto_16
    return-void
.end method

.method private static greylist-max-o isParsedModifier(I)Z
    .registers 2

    .line 475
    const/4 v0, -0x8

    if-eq p0, v0, :cond_f

    const/4 v0, -0x7

    if-eq p0, v0, :cond_f

    const/4 v0, -0x6

    if-eq p0, v0, :cond_f

    const/4 v0, -0x5

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method static greylist-max-o matchAdvancedPattern([ILjava/lang/String;)Z
    .registers 15

    .line 484
    nop

    .line 487
    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 494
    const/4 v10, 0x0

    move v1, v10

    move v2, v1

    move v4, v2

    move v5, v4

    .line 496
    :goto_b
    const/4 v6, 0x1

    if-ge v1, v0, :cond_7b

    .line 498
    aget v7, p0, v1

    .line 501
    const/4 v8, 0x2

    const/4 v11, -0x1

    packed-switch v7, :pswitch_data_82

    .line 517
    :pswitch_15
    nop

    .line 518
    nop

    .line 519
    add-int/lit8 v4, v1, 0x1

    move v9, v5

    move v5, v8

    move v8, v1

    move v1, v4

    move v4, v10

    goto :goto_3f

    .line 508
    :pswitch_1f
    if-ne v7, v11, :cond_23

    .line 509
    move v4, v8

    goto :goto_24

    .line 510
    :cond_23
    const/4 v4, 0x3

    .line 511
    :goto_24
    add-int/lit8 v5, v1, 0x1

    .line 512
    :goto_26
    add-int/2addr v1, v6

    if-ge v1, v0, :cond_2f

    aget v7, p0, v1

    const/4 v9, -0x3

    if-eq v7, v9, :cond_2f

    goto :goto_26

    .line 513
    :cond_2f
    add-int/lit8 v7, v1, -0x1

    .line 514
    add-int/lit8 v1, v1, 0x1

    .line 515
    move v9, v8

    move v8, v5

    move v5, v9

    move v9, v7

    goto :goto_3f

    .line 503
    :pswitch_38
    nop

    .line 504
    add-int/lit8 v1, v1, 0x1

    .line 505
    move v9, v5

    move v5, v8

    move v8, v4

    move v4, v6

    .line 527
    :goto_3f
    if-lt v1, v0, :cond_44

    .line 528
    move v12, v1

    move v5, v6

    goto :goto_69

    .line 530
    :cond_44
    aget v7, p0, v1

    .line 531
    const v12, 0x7fffffff

    packed-switch v7, :pswitch_data_8e

    .line 548
    :pswitch_4c
    move v12, v1

    move v5, v6

    goto :goto_69

    .line 543
    :pswitch_4f
    add-int/lit8 v1, v1, 0x1

    aget v7, p0, v1

    .line 544
    add-int/2addr v1, v6

    aget v6, p0, v1

    .line 545
    add-int/2addr v1, v5

    .line 546
    move v12, v1

    move v5, v7

    goto :goto_69

    .line 533
    :pswitch_5a
    nop

    .line 534
    nop

    .line 535
    add-int/lit8 v1, v1, 0x1

    .line 536
    move v5, v10

    move v6, v12

    move v12, v1

    goto :goto_69

    .line 538
    :pswitch_62
    nop

    .line 539
    nop

    .line 540
    add-int/lit8 v1, v1, 0x1

    .line 541
    move v5, v6

    move v6, v12

    move v12, v1

    .line 552
    :goto_69
    if-le v5, v6, :cond_6c

    .line 553
    return v10

    .line 557
    :cond_6c
    move-object v7, p0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result p0

    .line 561
    if-ne p0, v11, :cond_75

    .line 562
    return v10

    .line 566
    :cond_75
    add-int/2addr v2, p0

    .line 567
    move-object p0, v7

    move v4, v8

    move v5, v9

    move v1, v12

    goto :goto_b

    .line 568
    :cond_7b
    if-lt v1, v0, :cond_80

    if-lt v2, v3, :cond_80

    move v10, v6

    :cond_80
    return v10

    nop

    :pswitch_data_82
    .packed-switch -0x4
        :pswitch_38
        :pswitch_15
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8e
    .packed-switch -0x8
        :pswitch_62
        :pswitch_5a
        :pswitch_4c
        :pswitch_4f
    .end packed-switch
.end method

.method private static greylist-max-o matchChar(Ljava/lang/String;III[III)Z
    .registers 9

    .line 587
    const/4 v0, 0x0

    if-lt p1, p2, :cond_4

    .line 588
    return v0

    .line 590
    :cond_4
    const/4 p2, 0x1

    packed-switch p3, :pswitch_data_40

    .line 612
    return v0

    .line 602
    :pswitch_9
    nop

    :goto_a
    if-ge p5, p6, :cond_1e

    .line 603
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 604
    aget v1, p4, p5

    if-lt p3, v1, :cond_1b

    add-int/lit8 v1, p5, 0x1

    aget v1, p4, v1

    if-gt p3, v1, :cond_1b

    .line 605
    return v0

    .line 602
    :cond_1b
    add-int/lit8 p5, p5, 0x2

    goto :goto_a

    .line 608
    :cond_1e
    return p2

    .line 594
    :pswitch_1f
    nop

    :goto_20
    if-ge p5, p6, :cond_34

    .line 595
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 596
    aget v1, p4, p5

    if-lt p3, v1, :cond_31

    add-int/lit8 v1, p5, 0x1

    aget v1, p4, v1

    if-gt p3, v1, :cond_31

    .line 597
    return p2

    .line 594
    :cond_31
    add-int/lit8 p5, p5, 0x2

    goto :goto_20

    .line 600
    :cond_34
    return v0

    .line 592
    :pswitch_35
    return p2

    .line 610
    :pswitch_36
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aget p1, p4, p5

    if-ne p0, p1, :cond_3f

    move v0, p2

    :cond_3f
    return v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_1f
        :pswitch_9
    .end packed-switch
.end method

.method private static greylist-max-o matchChars(Ljava/lang/String;IIIII[III)I
    .registers 17

    .line 574
    const/4 v0, 0x0

    .line 576
    :goto_1
    if-ge v0, p5, :cond_15

    add-int v2, p1, v0

    .line 577
    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 582
    :cond_15
    if-ge v0, p4, :cond_18

    const/4 v0, -0x1

    :cond_18
    return v0
.end method

.method static greylist-max-o matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 232
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_10

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 235
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 236
    nop

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v1

    move v6, v5

    .line 238
    :goto_1b
    const/16 v7, 0x2a

    const/16 v8, 0x2e

    if-ge v5, v0, :cond_a1

    if-ge v6, v3, :cond_a1

    .line 239
    nop

    .line 240
    add-int/lit8 v5, v5, 0x1

    .line 241
    if-ge v5, v0, :cond_2d

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_2e

    :cond_2d
    move v9, v1

    .line 242
    :goto_2e
    const/16 v10, 0x5c

    if-ne v4, v10, :cond_34

    move v11, v2

    goto :goto_35

    :cond_34
    move v11, v1

    .line 243
    :goto_35
    if-eqz v11, :cond_45

    .line 244
    nop

    .line 245
    add-int/lit8 v5, v5, 0x1

    .line 246
    if-ge v5, v0, :cond_41

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_42

    :cond_41
    move v4, v1

    :goto_42
    move v12, v9

    move v9, v4

    move v4, v12

    .line 248
    :cond_45
    if-ne v9, v7, :cond_93

    .line 249
    if-nez v11, :cond_7d

    if-ne v4, v8, :cond_7d

    .line 250
    add-int/lit8 v4, v0, -0x1

    if-lt v5, v4, :cond_50

    .line 253
    return v2

    .line 255
    :cond_50
    add-int/lit8 v5, v5, 0x1

    .line 256
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 259
    if-ne v4, v10, :cond_62

    .line 260
    add-int/lit8 v5, v5, 0x1

    .line 261
    if-ge v5, v0, :cond_61

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_62

    :cond_61
    move v4, v1

    .line 264
    :cond_62
    :goto_62
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_69

    .line 265
    goto :goto_6d

    .line 267
    :cond_69
    add-int/lit8 v6, v6, 0x1

    .line 268
    if-lt v6, v3, :cond_62

    .line 269
    :goto_6d
    if-ne v6, v3, :cond_70

    .line 272
    return v1

    .line 274
    :cond_70
    add-int/lit8 v5, v5, 0x1

    .line 275
    if-ge v5, v0, :cond_79

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_7a

    :cond_79
    move v4, v1

    .line 276
    :goto_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    .line 280
    :cond_7d
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_84

    .line 281
    goto :goto_88

    .line 283
    :cond_84
    add-int/lit8 v6, v6, 0x1

    .line 284
    if-lt v6, v3, :cond_7d

    .line 285
    :goto_88
    add-int/lit8 v5, v5, 0x1

    .line 286
    if-ge v5, v0, :cond_91

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_9f

    :cond_91
    move v4, v1

    goto :goto_9f

    .line 289
    :cond_93
    if-eq v4, v8, :cond_9c

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v4, :cond_9c

    return v1

    .line 290
    :cond_9c
    add-int/lit8 v6, v6, 0x1

    move v4, v9

    .line 292
    :goto_9f
    goto/16 :goto_1b

    .line 294
    :cond_a1
    if-lt v5, v0, :cond_a6

    if-lt v6, v3, :cond_a6

    .line 296
    return v2

    .line 302
    :cond_a6
    add-int/lit8 v0, v0, -0x2

    if-ne v5, v0, :cond_b8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_b8

    add-int/2addr v5, v2

    .line 303
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v7, :cond_b8

    .line 304
    return v2

    .line 307
    :cond_b8
    return v1
.end method

.method static greylist-max-o matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .registers 6

    .line 215
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 216
    :cond_4
    if-nez p3, :cond_b

    .line 217
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 218
    :cond_b
    const/4 v1, 0x1

    if-ne p3, v1, :cond_13

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 220
    :cond_13
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1b

    .line 221
    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 222
    :cond_1b
    const/4 v1, 0x3

    if-ne p3, v1, :cond_23

    .line 223
    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 224
    :cond_23
    const/4 p2, 0x4

    if-ne p3, p2, :cond_2b

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 227
    :cond_2b
    return v0
.end method

.method static declared-synchronized greylist-max-o parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .registers 15

    const-class v0, Landroid/os/PatternMatcher;

    monitor-enter v0

    .line 316
    nop

    .line 317
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 319
    nop

    .line 321
    nop

    .line 322
    nop

    .line 323
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 327
    :goto_11
    if-ge v3, v1, :cond_1c5

    .line 328
    const/16 v8, 0x7fd

    if-gt v5, v8, :cond_1bd

    .line 332
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 333
    nop

    .line 335
    const/4 v9, -0x2

    const/4 v10, -0x1

    const/4 v11, 0x1

    sparse-switch v8, :sswitch_data_1da

    .line 411
    move v9, v11

    goto/16 :goto_108

    .line 377
    :sswitch_25
    if-eqz v6, :cond_107

    .line 378
    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, 0x1

    const/4 v10, -0x6

    aput v10, v6, v5

    .line 379
    move v6, v2

    move v5, v9

    move v9, v6

    goto/16 :goto_108

    .line 367
    :sswitch_33
    if-nez v4, :cond_107

    .line 368
    if-eqz v5, :cond_51

    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, -0x1

    aget v6, v6, v9

    invoke-static {v6}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v6

    if-nez v6, :cond_51

    .line 371
    sget-object v6, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, 0x1

    const/4 v10, -0x5

    aput v10, v6, v5

    .line 372
    add-int/lit8 v3, v3, 0x1

    .line 373
    move v5, v9

    move v6, v11

    move v9, v2

    goto/16 :goto_108

    .line 369
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :sswitch_59
    if-nez v4, :cond_5e

    .line 353
    move v9, v11

    goto/16 :goto_108

    .line 355
    :cond_5e
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v7, v5, -0x1

    aget v4, v4, v7

    .line 356
    if-eq v4, v10, :cond_77

    if-eq v4, v9, :cond_77

    .line 361
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v7, v5, 0x1

    const/4 v9, -0x3

    aput v9, v4, v5

    .line 362
    nop

    .line 363
    nop

    .line 365
    move v4, v2

    move v9, v4

    move v5, v7

    move v7, v9

    goto/16 :goto_108

    .line 358
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must define characters in a set."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 404
    :sswitch_7f
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_8b

    .line 407
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 408
    nop

    .line 409
    move v9, v11

    goto/16 :goto_108

    .line 405
    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Escape found at end of pattern!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :sswitch_93
    if-eqz v4, :cond_98

    .line 338
    move v9, v11

    goto/16 :goto_108

    .line 340
    :cond_98
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0x5e

    if-ne v8, v12, :cond_ab

    .line 341
    sget-object v3, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v8, v5, 0x1

    aput v9, v3, v5

    .line 342
    move v3, v4

    move v5, v8

    goto :goto_b2

    .line 344
    :cond_ab
    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v8, v5, 0x1

    aput v10, v4, v5

    move v5, v8

    .line 346
    :goto_b2
    add-int/2addr v3, v11

    .line 347
    nop

    .line 348
    move v4, v11

    goto/16 :goto_11

    .line 399
    :sswitch_b7
    if-nez v4, :cond_107

    .line 400
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    const/4 v12, -0x4

    aput v12, v9, v5

    move v9, v2

    move v5, v10

    goto :goto_108

    .line 391
    :sswitch_c3
    if-nez v4, :cond_107

    .line 392
    if-eqz v5, :cond_dd

    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    invoke-static {v9}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v9

    if-nez v9, :cond_dd

    .line 395
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    const/4 v12, -0x8

    aput v12, v9, v5

    move v9, v2

    move v5, v10

    goto :goto_108

    .line 393
    :cond_dd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :sswitch_e5
    if-nez v4, :cond_107

    .line 384
    if-eqz v5, :cond_ff

    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, -0x1

    aget v9, v9, v10

    invoke-static {v9}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v9

    if-nez v9, :cond_ff

    .line 387
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    const/4 v12, -0x7

    aput v12, v9, v5

    move v9, v2

    move v5, v10

    goto :goto_108

    .line 385
    :cond_ff
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 414
    :cond_107
    move v9, v2

    :goto_108
    if-eqz v4, :cond_147

    .line 415
    if-eqz v7, :cond_116

    .line 416
    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v5, 0x1

    aput v8, v7, v5

    .line 417
    move v7, v2

    move v5, v9

    goto/16 :goto_1ba

    .line 420
    :cond_116
    add-int/lit8 v9, v3, 0x2

    if-ge v9, v1, :cond_138

    add-int/lit8 v10, v3, 0x1

    .line 421
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_138

    .line 422
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x5d

    if-eq v9, v12, :cond_138

    .line 423
    nop

    .line 424
    sget-object v3, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v7, v5, 0x1

    aput v8, v3, v5

    .line 425
    move v5, v7

    move v3, v10

    move v7, v11

    goto/16 :goto_1ba

    .line 427
    :cond_138
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    aput v8, v9, v5

    .line 428
    sget-object v5, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v9, v10, 0x1

    aput v8, v5, v10

    move v5, v9

    goto/16 :goto_1ba

    .line 431
    :cond_147
    if-eqz v6, :cond_1b1

    .line 432
    const/16 v8, 0x7d

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 433
    if-ltz v8, :cond_1a9

    .line 436
    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 437
    const/16 v9, 0x2c

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9
    :try_end_15b
    .catchall {:try_start_4 .. :try_end_15b} :catchall_1d7

    .line 441
    if-gez v9, :cond_164

    .line 442
    :try_start_15d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 443
    nop

    .line 444
    move v9, v3

    goto :goto_185

    .line 445
    :cond_164
    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 446
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v11

    if-ne v9, v12, :cond_179

    .line 447
    const v3, 0x7fffffff

    move v9, v3

    move v3, v10

    goto :goto_185

    .line 449
    :cond_179
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    move v3, v10

    .line 452
    :goto_185
    if-gt v3, v9, :cond_198

    .line 456
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v5, 0x1

    aput v3, v10, v5

    .line 457
    sget-object v3, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v5, v11, 0x1

    aput v9, v3, v11

    .line 460
    nop

    .line 461
    nop

    .line 462
    move v3, v8

    goto/16 :goto_11

    .line 453
    :cond_198
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range quantifier minimum is greater than maximum"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_1a0} :catch_1a0
    .catchall {:try_start_15d .. :try_end_1a0} :catchall_1d7

    .line 458
    :catch_1a0
    move-exception p0

    .line 459
    :try_start_1a1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Range number format incorrect"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 434
    :cond_1a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range not ended with \'}\'"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_1b1
    if-eqz v9, :cond_1ba

    .line 464
    sget-object v9, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v5, 0x1

    aput v8, v9, v5

    move v5, v10

    .line 466
    :cond_1ba
    :goto_1ba
    add-int/2addr v3, v11

    .line 467
    goto/16 :goto_11

    .line 329
    :cond_1bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is too large!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 468
    :cond_1c5
    if-nez v4, :cond_1cf

    .line 471
    sget-object p0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0
    :try_end_1cd
    .catchall {:try_start_1a1 .. :try_end_1cd} :catchall_1d7

    monitor-exit v0

    return-object p0

    .line 469
    :cond_1cf
    :try_start_1cf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set was not terminated!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :catchall_1d7
    move-exception p0

    monitor-exit v0
    :try_end_1d9
    .catchall {:try_start_1cf .. :try_end_1d9} :catchall_1d7

    throw p0

    :sswitch_data_1da
    .sparse-switch
        0x2a -> :sswitch_e5
        0x2b -> :sswitch_c3
        0x2e -> :sswitch_b7
        0x5b -> :sswitch_93
        0x5c -> :sswitch_7f
        0x5d -> :sswitch_59
        0x7b -> :sswitch_33
        0x7d -> :sswitch_25
    .end sparse-switch
.end method


# virtual methods
.method public blacklist check()Z
    .registers 4

    .line 177
    :try_start_0
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 178
    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget-object v1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_15

    return v0

    .line 183
    :cond_12
    nop

    .line 184
    const/4 v0, 0x1

    return v0

    .line 180
    :catch_15
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify advanced pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PatternMatcher"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 162
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 163
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 164
    const-wide v0, 0x10e00000002L

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 167
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 168
    return-void
.end method

.method public final whitelist getPath()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getType()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public whitelist match(Ljava/lang/String;)Z
    .registers 5

    .line 135
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    nop

    .line 140
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v0, :pswitch_data_3c

    const-string v0, "? "

    goto :goto_1b

    .line 154
    :pswitch_9
    const-string v0, "SUFFIX: "

    goto :goto_1b

    .line 151
    :pswitch_c
    nop

    .line 152
    const-string v0, "ADVANCED: "

    goto :goto_1b

    .line 148
    :pswitch_10
    nop

    .line 149
    const-string v0, "GLOB: "

    goto :goto_1b

    .line 145
    :pswitch_14
    nop

    .line 146
    const-string v0, "PREFIX: "

    goto :goto_1b

    .line 142
    :pswitch_18
    nop

    .line 143
    const-string v0, "LITERAL: "

    .line 157
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 192
    iget-object p2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget p2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object p2, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 195
    return-void
.end method
