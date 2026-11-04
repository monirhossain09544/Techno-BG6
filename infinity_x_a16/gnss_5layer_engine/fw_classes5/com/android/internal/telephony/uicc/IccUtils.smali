.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final blacklist FPLMN_BYTE_SIZE:I = 0x3

.field private static final blacklist HEX_CHARS:[C

.field static final blacklist LOG_TAG:Ljava/lang/String; = "IccUtils"

.field public static final blacklist TEST_ICCID:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adnStringFieldToString([BII)Ljava/lang/String;
    .registers 10

    .line 342
    const-string v0, ""

    if-nez p2, :cond_5

    .line 343
    return-object v0

    .line 345
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p2, v2, :cond_44

    .line 346
    aget-byte v3, p0, p1

    const/16 v4, -0x80

    if-ne v3, v4, :cond_44

    .line 347
    add-int/lit8 v3, p2, -0x1

    div-int/lit8 v3, v3, 0x2

    .line 348
    nop

    .line 351
    :try_start_14
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    mul-int/lit8 v3, v3, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v4, p0, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_1f} :catch_20

    .line 355
    goto :goto_29

    .line 352
    :catch_20
    move-exception v3

    .line 353
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    .line 357
    :goto_29
    if-eqz v4, :cond_44

    .line 360
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    .line 361
    :goto_2f
    if-lez p0, :cond_3f

    add-int/lit8 p1, p0, -0x1

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p2, 0xffff

    if-ne p1, p2, :cond_3f

    .line 362
    add-int/lit8 p0, p0, -0x1

    goto :goto_2f

    .line 364
    :cond_3f
    invoke-virtual {v4, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 369
    :cond_44
    nop

    .line 370
    nop

    .line 371
    nop

    .line 373
    const/4 v3, 0x3

    if-lt p2, v3, :cond_67

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_67

    .line 374
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 375
    add-int/lit8 v4, p2, -0x3

    if-le v3, v4, :cond_5b

    .line 376
    move v3, v4

    .line 378
    :cond_5b
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x7

    int-to-char v4, v4

    .line 379
    add-int/lit8 p1, p1, 0x3

    .line 380
    goto :goto_91

    .line 381
    :cond_67
    const/4 v3, 0x4

    if-lt p2, v3, :cond_8e

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_8e

    .line 382
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 383
    add-int/lit8 v4, p2, -0x4

    if-le v3, v4, :cond_7b

    .line 384
    move v3, v4

    .line 386
    :cond_7b
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    .line 388
    add-int/lit8 p1, p1, 0x4

    .line 389
    goto :goto_91

    .line 392
    :cond_8e
    move v2, v1

    move v3, v2

    move v4, v3

    :goto_91
    if-eqz v2, :cond_c6

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    :goto_98
    if-lez v3, :cond_c1

    .line 398
    aget-byte v0, p0, p1

    if-gez v0, :cond_ab

    .line 399
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7f

    add-int/2addr v0, v4

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 p1, p1, 0x1

    .line 401
    add-int/lit8 v3, v3, -0x1

    .line 406
    :cond_ab
    move v0, v1

    .line 407
    :goto_ac
    if-ge v0, v3, :cond_b7

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    if-ltz v2, :cond_b7

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 410
    :cond_b7
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    add-int/2addr p1, v0

    .line 414
    sub-int/2addr v3, v0

    .line 415
    goto :goto_98

    .line 417
    :cond_c1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 420
    :cond_c6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 421
    nop

    .line 423
    nop

    .line 424
    const v2, 0x10404a9

    :try_start_cf
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_d3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_cf .. :try_end_d3} :catch_d4

    .line 427
    goto :goto_d5

    .line 425
    :catch_d4
    move-exception v1

    .line 428
    :goto_d5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist bcdPlmnToString([BI)Ljava/lang/String;
    .registers 7

    .line 140
    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-le v0, v1, :cond_7

    .line 141
    const/4 p0, 0x0

    return-object p0

    .line 143
    :cond_7
    nop

    .line 144
    add-int/lit8 v0, p1, 0x0

    aget-byte v1, p0, v0

    shl-int/lit8 v1, v1, 0x4

    aget-byte v0, p0, v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 145
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    add-int/2addr p1, v3

    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v2, v4

    int-to-byte v2, v2

    .line 146
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xf0

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x3

    new-array p1, p1, [B

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    const/4 v0, 0x1

    aput-byte v2, p1, v0

    aput-byte p0, p1, v3

    .line 147
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 150
    const-string p1, "F"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 151
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    :cond_4d
    return-object p0
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[B)V
    .registers 3

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[BI)V

    .line 114
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;[BI)V
    .registers 7

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_1b
    array-length v0, p1

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    const/4 v1, 0x0

    :goto_28
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v0, :cond_47

    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 129
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 132
    :cond_47
    return-void
.end method

.method public static blacklist bcdToBytes(Ljava/lang/String;)[B
    .registers 2

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 101
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 102
    return-object v0
.end method

.method public static blacklist bcdToString([B)Ljava/lang/String;
    .registers 3

    .line 91
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist bcdToString([BII)Ljava/lang/String;
    .registers 8

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    move v1, p1

    :goto_8
    add-int v2, p1, p2

    if-ge v1, v2, :cond_30

    .line 73
    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 74
    const/16 v4, 0x9

    if-le v2, v4, :cond_16

    goto :goto_30

    .line 75
    :cond_16
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v3

    .line 79
    if-ne v2, v3, :cond_24

    goto :goto_2d

    .line 80
    :cond_24
    if-le v2, v4, :cond_27

    goto :goto_30

    .line 81
    :cond_27
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 84
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist bchToString([BII)Ljava/lang/String;
    .registers 7

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    move v1, p1

    :goto_8
    add-int v2, p1, p2

    if-ge v1, v2, :cond_27

    .line 180
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 181
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 184
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 187
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist bitToRGB(I)I
    .registers 2

    .line 585
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 586
    const/4 p0, -0x1

    return p0

    .line 588
    :cond_5
    const/high16 p0, -0x1000000

    return p0
.end method

.method private static blacklist byteNumForInt(IZ)I
    .registers 5

    .line 871
    if-ltz p0, :cond_2a

    .line 874
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_17

    .line 875
    const/16 p1, 0x7f

    if-gt p0, p1, :cond_c

    .line 876
    return v2

    .line 878
    :cond_c
    const/16 p1, 0x7fff

    if-gt p0, p1, :cond_11

    .line 879
    return v1

    .line 881
    :cond_11
    const p1, 0x7fffff

    if-gt p0, p1, :cond_28

    .line 882
    return v0

    .line 885
    :cond_17
    const/16 p1, 0xff

    if-gt p0, p1, :cond_1c

    .line 886
    return v2

    .line 888
    :cond_1c
    const p1, 0xffff

    if-gt p0, p1, :cond_22

    .line 889
    return v1

    .line 891
    :cond_22
    const p1, 0xffffff

    if-gt p0, p1, :cond_28

    .line 892
    return v0

    .line 895
    :cond_28
    const/4 p0, 0x4

    return p0

    .line 872
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value must be 0 or positive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist byteNumForSignedInt(I)I
    .registers 2

    .line 855
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result p0

    return p0
.end method

.method public static blacklist byteNumForUnsignedInt(I)I
    .registers 2

    .line 843
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result p0

    return p0
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .registers 5

    .line 924
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v2, p0, 0xff

    ushr-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v2, p0

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v1, v2, v3

    const/4 v1, 0x1

    aput-char p0, v2, v1

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static greylist bytesToHexString([B)Ljava/lang/String;
    .registers 5

    .line 481
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 483
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 485
    const/4 v1, 0x0

    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_2b

    .line 488
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 490
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 494
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 497
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist bytesToInt([BII)I
    .registers 6

    .line 721
    const/4 v0, 0x4

    if-gt p2, v0, :cond_67

    .line 725
    if-ltz p1, :cond_39

    if-ltz p2, :cond_39

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_39

    .line 734
    nop

    .line 735
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v0, p2, :cond_1d

    .line 736
    shl-int/lit8 v1, v1, 0x8

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 738
    :cond_1d
    if-ltz v1, :cond_20

    .line 742
    return v1

    .line 739
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "src cannot be parsed as a positive integer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 726
    :cond_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "], offset="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", length="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length must be <= 4 (only 32-bit integer supported): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist bytesToRawLong([BII)J
    .registers 9

    .line 758
    const/16 v0, 0x8

    if-gt p2, v0, :cond_4e

    .line 762
    if-ltz p1, :cond_20

    if-ltz p2, :cond_20

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_20

    .line 771
    nop

    .line 772
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, p2, :cond_1f

    .line 773
    shl-long/2addr v1, v0

    add-int v4, p1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v1, v4

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 775
    :cond_1f
    return-wide v1

    .line 763
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "], offset="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", length="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length must be <= 8 (only 64-bit long supported): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist cdmaBcdByteToInt(B)I
    .registers 3

    .line 255
    nop

    .line 258
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_e

    .line 259
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    goto :goto_f

    .line 258
    :cond_e
    const/4 v0, 0x0

    .line 262
    :goto_f
    and-int/lit8 p0, p0, 0xf

    const/16 v1, 0x9

    if-gt p0, v1, :cond_16

    .line 263
    add-int/2addr v0, p0

    .line 266
    :cond_16
    return v0
.end method

.method public static greylist cdmaBcdToString([BII)Ljava/lang/String;
    .registers 8

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    nop

    .line 199
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, p2, :cond_32

    .line 201
    aget-byte v3, p0, p1

    and-int/lit8 v3, v3, 0xf

    .line 202
    const/16 v4, 0x9

    if-le v3, v4, :cond_13

    move v3, v1

    .line 203
    :cond_13
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_1e

    goto :goto_32

    .line 207
    :cond_1e
    aget-byte v3, p0, p1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 208
    if-le v3, v4, :cond_27

    move v3, v1

    .line 209
    :cond_27
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v2, v2, 0x1

    .line 199
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 212
    :cond_32
    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist charToByte(C)B
    .registers 3

    .line 949
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v1, 0x39

    if-gt p0, v1, :cond_b

    .line 950
    sub-int/2addr p0, v0

    int-to-byte p0, p0

    return p0

    .line 951
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_17

    const/16 v0, 0x46

    if-gt p0, v0, :cond_17

    .line 952
    add-int/lit8 p0, p0, -0x37

    int-to-byte p0, p0

    return p0

    .line 953
    :cond_17
    const/16 v0, 0x61

    if-lt p0, v0, :cond_23

    const/16 v0, 0x66

    if-gt p0, v0, :cond_23

    .line 954
    add-int/lit8 p0, p0, -0x57

    int-to-byte p0, p0

    return p0

    .line 956
    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 941
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static blacklist countTrailingZeros(B)B
    .registers 3

    .line 903
    if-nez p0, :cond_5

    .line 904
    const/16 p0, 0x8

    return p0

    .line 906
    :cond_5
    and-int/lit16 p0, p0, 0xff

    .line 907
    nop

    .line 908
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_f

    .line 909
    const/4 v0, 0x3

    int-to-byte v0, v0

    goto :goto_10

    .line 908
    :cond_f
    const/4 v0, 0x7

    .line 911
    :goto_10
    and-int/lit8 v1, p0, 0x33

    if-eqz v1, :cond_17

    .line 912
    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    .line 914
    :cond_17
    and-int/lit8 p0, p0, 0x55

    if-eqz p0, :cond_1e

    .line 915
    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    .line 917
    :cond_1e
    return v0
.end method

.method public static blacklist encodeFplmns(Ljava/util/List;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .line 967
    new-array v0, p1, [B

    .line 968
    nop

    .line 969
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 970
    add-int/lit8 v3, v1, 0x3

    if-le v3, p1, :cond_19

    goto :goto_1f

    .line 971
    :cond_19
    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBcdPlmn(Ljava/lang/String;[BI)V

    .line 972
    nop

    .line 973
    move v1, v3

    goto :goto_8

    .line 975
    :cond_1f
    :goto_1f
    if-ge v1, p1, :cond_28

    .line 977
    add-int/lit8 p0, v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    move v1, p0

    goto :goto_1f

    .line 979
    :cond_28
    return-object v0
.end method

.method private static blacklist getCLUT([BII)[I
    .registers 8

    .line 681
    if-nez p0, :cond_4

    .line 682
    const/4 p0, 0x0

    return-object p0

    .line 685
    :cond_4
    new-array v0, p2, [I

    .line 686
    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, p1

    .line 687
    nop

    .line 688
    nop

    .line 689
    const/4 v1, 0x0

    .line 691
    :goto_c
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    const/high16 v4, -0x1000000

    or-int/2addr p1, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p1, v4

    aput p1, v0, v1

    .line 695
    if-lt v3, p2, :cond_2e

    .line 696
    return-object v0

    .line 695
    :cond_2e
    move v1, v2

    move p1, v3

    goto :goto_c
.end method

.method public static blacklist getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 701
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 702
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_16

    .line 701
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 704
    :cond_16
    :goto_16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist gsmBcdByteToInt(B)I
    .registers 3

    .line 232
    nop

    .line 235
    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_c

    .line 236
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    goto :goto_d

    .line 235
    :cond_c
    const/4 v0, 0x0

    .line 239
    :goto_d
    and-int/lit8 p0, p0, 0xf

    const/16 v1, 0x9

    if-gt p0, v1, :cond_16

    .line 240
    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v0, p0

    .line 243
    :cond_16
    return v0
.end method

.method public static greylist-max-r hexCharToInt(C)I
    .registers 4

    .line 434
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    .line 435
    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v1, 0x46

    if-gt p0, v1, :cond_16

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 436
    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_22

    const/16 v1, 0x66

    if-gt p0, v1, :cond_22

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 438
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist hexStringToBytes(Ljava/lang/String;)[B
    .registers 7

    .line 456
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 458
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 460
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 462
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_2c

    .line 463
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 464
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 462
    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    .line 467
    :cond_2c
    return-object v1
.end method

.method private static blacklist intToBytes(I[BIZ)I
    .registers 7

    .line 859
    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result p3

    .line 860
    if-ltz p2, :cond_1c

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1c

    .line 863
    add-int/lit8 v0, p3, -0x1

    :goto_d
    if-ltz v0, :cond_1b

    .line 864
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 865
    add-int v2, p2, v0

    aput-byte v1, p1, v2

    .line 863
    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_d

    .line 867
    :cond_1b
    return p3

    .line 861
    :cond_1c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not enough space to write. Required bytes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist mapTo2OrderBitColor([BII[II)[I
    .registers 15

    .line 631
    const/16 v0, 0x8

    rem-int v1, v0, p4

    if-eqz v1, :cond_12

    .line 632
    const-string v0, "IccUtils"

    const-string v1, "not event number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object p0

    return-object p0

    .line 637
    :cond_12
    nop

    .line 638
    const/4 v1, 0x1

    sparse-switch p4, :sswitch_data_48

    move v2, v1

    goto :goto_25

    .line 649
    :sswitch_19
    const/16 v2, 0xff

    goto :goto_25

    .line 646
    :sswitch_1c
    nop

    .line 647
    const/16 v2, 0xf

    goto :goto_25

    .line 643
    :sswitch_20
    nop

    .line 644
    const/4 v2, 0x3

    goto :goto_25

    .line 640
    :sswitch_23
    nop

    .line 641
    move v2, v1

    .line 653
    :goto_25
    new-array v3, p2, [I

    .line 654
    nop

    .line 655
    div-int/2addr v0, p4

    const/4 v4, 0x0

    move v5, v4

    .line 656
    :goto_2b
    if-ge v5, p2, :cond_47

    .line 657
    add-int/lit8 v6, p1, 0x1

    aget-byte p1, p0, p1

    .line 658
    move v7, v4

    :goto_32
    if-ge v7, v0, :cond_45

    .line 659
    sub-int v8, v0, v7

    sub-int/2addr v8, v1

    .line 660
    add-int/lit8 v9, v5, 0x1

    mul-int/2addr v8, p4

    shr-int v8, p1, v8

    and-int/2addr v8, v2

    aget v8, p3, v8

    aput v8, v3, v5

    .line 658
    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_32

    .line 663
    :cond_45
    move p1, v6

    goto :goto_2b

    .line 664
    :cond_47
    return-object v3

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_20
        0x4 -> :sswitch_1c
        0x8 -> :sswitch_19
    .end sparse-switch
.end method

.method private static blacklist mapToNon2OrderBitColor([BII[II)[I
    .registers 7

    .line 669
    const/16 v0, 0x8

    rem-int/2addr v0, p4

    if-nez v0, :cond_11

    .line 670
    const-string v0, "IccUtils"

    const-string v1, "not odd number of color"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object p0

    return-object p0

    .line 675
    :cond_11
    new-array p0, p2, [I

    .line 677
    return-object p0
.end method

.method public static greylist networkNameToString([BII)Ljava/lang/String;
    .registers 7

    .line 511
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    const-string v2, ""

    if-ne v0, v1, :cond_41

    const/4 v0, 0x1

    if-ge p2, v0, :cond_d

    goto :goto_41

    .line 515
    :cond_d
    aget-byte v1, p0, p1

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_42

    .line 536
    goto :goto_3e

    .line 526
    :pswitch_17
    :try_start_17
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, v0

    const-string v0, "utf-16"

    invoke-direct {v1, p0, v3, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_21} :catch_23

    .line 531
    move-object v2, v1

    goto :goto_3e

    .line 528
    :catch_23
    move-exception p2

    .line 529
    nop

    .line 530
    const-string v0, "IccUtils"

    const-string v1, "implausible UnsupportedEncodingException"

    invoke-static {v0, v1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    goto :goto_3e

    .line 519
    :pswitch_2d
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7

    .line 520
    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x8

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x7

    .line 521
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 522
    nop

    .line 544
    :goto_3e
    aget-byte p0, p0, p1

    .line 548
    return-object v2

    .line 512
    :cond_41
    :goto_41
    return-object v2

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_17
    .end packed-switch
.end method

.method public static greylist parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 13

    .line 559
    nop

    .line 560
    const/4 p1, 0x0

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 561
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 562
    mul-int v3, v0, v2

    .line 564
    new-array v4, v3, [I

    .line 566
    nop

    .line 567
    nop

    .line 568
    const/4 v5, 0x2

    const/4 v6, 0x7

    move v7, v5

    move v8, v6

    move v5, p1

    .line 569
    :goto_16
    if-ge p1, v3, :cond_34

    .line 571
    rem-int/lit8 v9, p1, 0x8

    if-nez v9, :cond_24

    .line 572
    add-int/lit8 v5, v7, 0x1

    aget-byte v7, p0, v7

    .line 573
    move v8, v7

    move v7, v5

    move v5, v8

    move v8, v6

    .line 575
    :cond_24
    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, v8, -0x1

    shr-int v8, v5, v8

    and-int/2addr v8, v1

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v8

    aput v8, v4, p1

    move p1, v9

    move v8, v10

    goto :goto_16

    .line 578
    :cond_34
    if-eq p1, v3, :cond_3d

    .line 579
    const-string p0, "IccUtils"

    const-string p1, "parse end and size error"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_3d
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v2, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static greylist parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .registers 11

    .line 603
    nop

    .line 604
    const/4 p1, 0x0

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 605
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 606
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 607
    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 608
    const/4 v5, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const/4 v7, 0x5

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 611
    invoke-static {p0, v5, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    .line 612
    if-ne v1, p2, :cond_2c

    .line 613
    sub-int/2addr v4, v1

    aput p1, v5, v4

    .line 616
    :cond_2c
    nop

    .line 617
    rem-int/2addr v6, v3

    const/4 p1, 0x6

    if-nez v6, :cond_38

    .line 618
    mul-int p2, v0, v2

    invoke-static {p0, p1, p2, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object p0

    goto :goto_3e

    .line 621
    :cond_38
    mul-int p2, v0, v2

    invoke-static {p0, p1, p2, v5, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object p0

    .line 625
    :goto_3e
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist signedIntToBytes(I[BI)I
    .registers 4

    .line 833
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result p0

    return p0
.end method

.method public static blacklist signedIntToBytes(I)[B
    .registers 4

    .line 801
    if-ltz p0, :cond_d

    .line 804
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 805
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    .line 806
    return-object v0

    .line 802
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist stringToAdnStringField(Ljava/lang/String;)[B
    .registers 5

    .line 283
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 284
    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 285
    new-array v2, v1, [B

    .line 286
    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 287
    return-object v2

    .line 295
    :cond_e
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 296
    array-length v1, p0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 298
    const/16 v3, -0x80

    aput-byte v3, v1, v0

    .line 299
    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-object v1
.end method

.method public static blacklist stringToBcdPlmn(Ljava/lang/String;[BI)V
    .registers 8

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_e

    :cond_c
    const/16 v0, 0x46

    .line 165
    :goto_e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v1

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 166
    add-int/lit8 v1, p2, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v0

    shl-int/2addr v0, v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 167
    add-int/2addr p2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v0

    shl-int/2addr v0, v2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result p0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    .line 168
    return-void
.end method

.method public static blacklist stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 931
    const-string v0, "FFFFFFFFFFFFFFFFFFFF"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 932
    return-object p0

    .line 934
    :cond_9
    if-nez p0, :cond_d

    const/4 p0, 0x0

    goto :goto_15

    :cond_d
    const-string v0, "(?i)f*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public static blacklist unsignedIntToBytes(I[BI)I
    .registers 4

    .line 820
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result p0

    return p0
.end method

.method public static blacklist unsignedIntToBytes(I)[B
    .registers 4

    .line 784
    if-ltz p0, :cond_d

    .line 787
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 788
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    .line 789
    return-object v0

    .line 785
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
