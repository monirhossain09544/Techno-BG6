.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final blacklist lazyEvaluate:Z

.field private final blacklist limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 29
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;IZ)V
    .registers 5

    .line 88
    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    .line 89
    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/InputStream;IZ[[B)V
    .registers 5

    .line 93
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 95
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 96
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 4

    .line 75
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 40
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .registers 4

    .line 52
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 53
    return-void
.end method

.method static blacklist createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    const-string v0, " encountered"

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_120

    .line 580
    :pswitch_6
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    goto/16 :goto_ee

    .line 528
    :pswitch_a
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->createPrimitive([C)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    move-result-object p0

    return-object p0

    .line 562
    :pswitch_13
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalString;

    move-result-object p0

    return-object p0

    .line 535
    :pswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralString;

    move-result-object p0

    return-object p0

    .line 570
    :pswitch_25
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1VisibleString;

    move-result-object p0

    return-object p0

    .line 539
    :pswitch_2e
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    move-result-object p0

    return-object p0

    .line 537
    :pswitch_37
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p0

    return-object p0

    .line 564
    :pswitch_40
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    move-result-object p0

    return-object p0

    .line 541
    :pswitch_49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    return-object p0

    .line 568
    :pswitch_52
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1VideotexString;

    move-result-object p0

    return-object p0

    .line 560
    :pswitch_5b
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1T61String;

    move-result-object p0

    return-object p0

    .line 556
    :pswitch_64
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    move-result-object p0

    return-object p0

    .line 547
    :pswitch_6d
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    move-result-object p0

    return-object p0

    .line 578
    :pswitch_76
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported tag "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 558
    :pswitch_93
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1RelativeOID;

    move-result-object p0

    return-object p0

    .line 566
    :pswitch_9d
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p0

    return-object p0

    .line 533
    :pswitch_a6
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    return-object p0

    .line 549
    :pswitch_af
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    move-result-object p0

    return-object p0

    .line 552
    :pswitch_b8
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    .line 545
    :pswitch_c1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    move-result-object p0

    return-object p0

    .line 554
    :pswitch_ca
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    .line 526
    :pswitch_d3
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0

    .line 543
    :pswitch_dc
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    return-object p0

    .line 530
    :pswitch_e5
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object p0

    return-object p0

    .line 580
    :goto_ee
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_109
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_109} :catch_114
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_109} :catch_109

    .line 587
    :catch_109
    move-exception p0

    .line 589
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 583
    :catch_114
    move-exception p0

    .line 585
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_dc
        :pswitch_d3
        :pswitch_ca
        :pswitch_c1
        :pswitch_b8
        :pswitch_af
        :pswitch_6
        :pswitch_6
        :pswitch_a6
        :pswitch_6
        :pswitch_9d
        :pswitch_93
        :pswitch_76
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6d
        :pswitch_64
        :pswitch_5b
        :pswitch_52
        :pswitch_49
        :pswitch_40
        :pswitch_37
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
        :pswitch_13
        :pswitch_6
        :pswitch_a
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
    .end packed-switch
.end method

.method private static blacklist getBMPCharBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 463
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_97

    .line 468
    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    .line 469
    nop

    .line 471
    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    .line 472
    :goto_13
    const-string v7, "EOF encountered in middle of BMPString"

    if-lt v0, v3, :cond_61

    .line 474
    invoke-static {p0, v4, v5, v3}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v8

    if-ne v8, v3, :cond_5b

    .line 479
    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v6

    .line 480
    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 481
    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 482
    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    .line 483
    add-int/lit8 v6, v6, 0x4

    .line 484
    add-int/lit8 v0, v0, -0x8

    goto :goto_13

    .line 476
    :cond_5b
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 486
    :cond_61
    if-lez v0, :cond_88

    .line 488
    invoke-static {p0, v4, v5, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v8

    if-ne v8, v0, :cond_82

    .line 493
    nop

    .line 496
    :goto_6a
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    .line 497
    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    .line 498
    add-int/lit8 v9, v6, 0x1

    or-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v2, v6

    .line 500
    if-lt v8, v0, :cond_7f

    move v6, v9

    goto :goto_88

    :cond_7f
    move v5, v8

    move v6, v9

    goto :goto_6a

    .line 490
    :cond_82
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 503
    :cond_88
    :goto_88
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result p0

    if-nez p0, :cond_91

    if-ne v1, v6, :cond_91

    .line 508
    return-object v2

    .line 505
    :cond_91
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 465
    :cond_97
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getBuffer(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 443
    array-length v1, p1

    if-lt v0, v1, :cond_c

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 448
    :cond_c
    aget-object v1, p1, v0

    .line 449
    if-nez v1, :cond_14

    .line 451
    new-array v1, v0, [B

    aput-object v1, p1, v0

    .line 454
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    .line 456
    return-object v1
.end method

.method static blacklist readLength(Ljava/io/InputStream;IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 392
    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_9

    .line 395
    return v0

    .line 397
    :cond_9
    const/16 v1, 0x80

    if-ne v1, v0, :cond_f

    .line 400
    const/4 p0, -0x1

    return p0

    .line 402
    :cond_f
    if-ltz v0, :cond_6b

    .line 406
    const/16 v1, 0xff

    if-eq v1, v0, :cond_63

    .line 411
    and-int/lit8 v0, v0, 0x7f

    .line 413
    const/4 v1, 0x0

    move v2, v1

    .line 416
    :cond_19
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 417
    if-ltz v3, :cond_5b

    .line 422
    ushr-int/lit8 v4, v1, 0x17

    if-nez v4, :cond_53

    .line 427
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    .line 429
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_19

    .line 431
    if-lt v1, p1, :cond_52

    if-eqz p2, :cond_2f

    goto :goto_52

    .line 433
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "corrupted stream - out of bounds length found: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " >= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :cond_52
    :goto_52
    return v1

    .line 424
    :cond_53
    new-instance p0, Ljava/io/IOException;

    const-string p1, "long form definite-length more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :cond_5b
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 408
    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid long form definite-length 0xFF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 404
    :cond_6b
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist readTagNumber(Ljava/io/InputStream;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    const/16 v0, 0x1f

    and-int/2addr p1, v0

    .line 345
    if-ne p1, v0, :cond_50

    .line 347
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    .line 348
    const-string v1, "EOF found inside tag value."

    if-ge p1, v0, :cond_1d

    .line 350
    if-gez p1, :cond_15

    .line 352
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - high tag number < 31 found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    :cond_1d
    and-int/lit8 v0, p1, 0x7f

    .line 361
    if-eqz v0, :cond_48

    .line 366
    :goto_21
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_46

    .line 368
    ushr-int/lit8 p1, v0, 0x18

    if-nez p1, :cond_3e

    .line 373
    shl-int/lit8 p1, v0, 0x7

    .line 375
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 376
    if-ltz v0, :cond_38

    .line 381
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr p1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    goto :goto_21

    .line 378
    :cond_38
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 370
    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag number more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 366
    :cond_46
    move p1, v0

    goto :goto_50

    .line 363
    :cond_48
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 385
    :cond_50
    :goto_50
    return p1
.end method


# virtual methods
.method blacklist buildConstructedBitString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 256
    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_35

    .line 258
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 259
    instance-of v4, v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz v4, :cond_18

    .line 261
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    aput-object v3, v1, v2

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 265
    :cond_18
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object encountered in constructed BIT STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_35
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;

    invoke-direct {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V

    return-object p1
.end method

.method blacklist buildConstructedOctetString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 278
    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_35

    .line 280
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 281
    instance-of v4, v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v4, :cond_18

    .line 283
    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v1, v2

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 287
    :cond_18
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_35
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object p1
.end method

.method protected blacklist buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v0, p0, p3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 139
    and-int/lit16 p3, p1, 0xe0

    if-nez p3, :cond_12

    .line 141
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 144
    :cond_12
    and-int/lit16 p3, p1, 0xc0

    .line 145
    const/4 v1, 0x1

    if-eqz p3, :cond_22

    .line 147
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 148
    :goto_1d
    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTaggedObjectDL(IIZLcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 151
    :cond_22
    sparse-switch p2, :sswitch_data_8c

    .line 184
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " encountered"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :sswitch_44
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    move-result-object p1

    return-object p1

    .line 166
    :sswitch_4d
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result p1

    if-ge p1, v1, :cond_56

    .line 168
    sget-object p1, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    return-object p1

    .line 170
    :cond_56
    iget-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz p1, :cond_64

    .line 172
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object p1

    .line 176
    :cond_64
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object p1

    return-object p1

    .line 182
    :sswitch_6d
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    move-result-object p1

    return-object p1

    .line 162
    :sswitch_7a
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    return-object p1

    .line 155
    :sswitch_83
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildConstructedBitString(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    return-object p1

    :sswitch_data_8c
    .sparse-switch
        0x3 -> :sswitch_83
        0x4 -> :sswitch_7a
        0x8 -> :sswitch_6d
        0x10 -> :sswitch_4d
        0x11 -> :sswitch_44
    .end sparse-switch
.end method

.method blacklist getLimit()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected blacklist readFully([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_a

    .line 118
    return-void

    .line 116
    :cond_a
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of object"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected blacklist readLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .line 192
    if-gtz v0, :cond_12

    .line 194
    if-eqz v0, :cond_a

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_12
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    .line 205
    if-ltz v2, :cond_2a

    .line 210
    :try_start_1c
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_20} :catch_21

    return-object v0

    .line 212
    :catch_21
    move-exception v0

    .line 214
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 220
    :cond_2a
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_6b

    .line 225
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v2, p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 226
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v3, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    .line 228
    and-int/lit16 v0, v0, 0xc0

    .line 229
    if-eqz v0, :cond_47

    .line 231
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 234
    :cond_47
    sparse-switch v1, :sswitch_data_74

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :sswitch_52
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    move-result-object v0

    return-object v0

    .line 244
    :sswitch_57
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    move-result-object v0

    return-object v0

    .line 242
    :sswitch_5c
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    move-result-object v0

    return-object v0

    .line 239
    :sswitch_61
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    move-result-object v0

    return-object v0

    .line 237
    :sswitch_66
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/BERBitStringParser;->parse(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)Lcom/android/internal/org/bouncycastle/asn1/BERBitString;

    move-result-object v0

    return-object v0

    .line 222
    :cond_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_74
    .sparse-switch
        0x3 -> :sswitch_66
        0x4 -> :sswitch_61
        0x8 -> :sswitch_5c
        0x10 -> :sswitch_57
        0x11 -> :sswitch_52
    .end sparse-switch
.end method

.method blacklist readTaggedObjectDL(IIZLcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    if-nez p3, :cond_b

    .line 301
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p3

    .line 302
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 305
    :cond_b
    invoke-virtual {p0, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p3

    .line 306
    invoke-static {p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method blacklist readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 312
    if-nez v0, :cond_d

    .line 314
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    .line 317
    :cond_d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 320
    :cond_12
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_12

    .line 323
    return-object v1
.end method

.method blacklist readVector(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 329
    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    .line 331
    new-instance p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object p1

    .line 334
    :cond_e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    return-object p1
.end method
