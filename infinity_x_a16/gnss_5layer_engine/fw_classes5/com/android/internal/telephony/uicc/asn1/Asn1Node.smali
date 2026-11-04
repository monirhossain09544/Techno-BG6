.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
.super Ljava/lang/Object;
.source "Asn1Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_NODE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FALSE_BYTES:[B

.field private static final blacklist INT_BYTES:I = 0x4

.field private static final blacklist TRUE_BYTES:[B


# instance fields
.field private final blacklist mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConstructed:Z

.field private blacklist mDataBytes:[B

.field private blacklist mDataLength:I

.field private blacklist mDataOffset:I

.field private blacklist mEncodedLength:I

.field private final blacklist mTag:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetFALSE_BYTES()[B
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->FALSE_BYTES:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRUE_BYTES()[B
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->TRUE_BYTES:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisConstructedTag(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->isConstructedTag(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    .line 39
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->TRUE_BYTES:[B

    .line 40
    new-array v0, v0, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->FALSE_BYTES:[B

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 261
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    .line 262
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    .line 264
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 265
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 266
    nop

    :goto_12
    if-ge p1, v0, :cond_24

    .line 267
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget v2, v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 266
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 269
    :cond_24
    iget p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 270
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result p1

    iget p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 271
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->calculateEncodedBytesNumForLength(I)I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    .line 273
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/List;Lcom/android/internal/telephony/uicc/asn1/Asn1Node-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(ILjava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(I[BII)V
    .registers 5

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 247
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->isConstructedTag(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    .line 248
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    .line 249
    iput p3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    .line 250
    iput p4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 251
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz p1, :cond_1b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1d

    :cond_1b
    sget-object p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    :goto_1d
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    .line 252
    iget p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    .line 253
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result p1

    iget p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    .line 254
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->calculateEncodedBytesNumForLength(I)I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    .line 256
    return-void
.end method

.method private static blacklist calculateEncodedBytesNumForLength(I)I
    .registers 3

    .line 233
    nop

    .line 234
    const/16 v0, 0x7f

    const/4 v1, 0x1

    if-le p0, v0, :cond_b

    .line 235
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result p0

    add-int/2addr v1, p0

    .line 237
    :cond_b
    return v1
.end method

.method private static blacklist isConstructedTag(I)Z
    .registers 2

    .line 227
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object p0

    .line 228
    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static blacklist newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;
    .registers 3

    .line 222
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;-><init>(ILcom/android/internal/telephony/uicc/asn1/Asn1Node-IA;)V

    return-object v0
.end method

.method private blacklist write([BI)I
    .registers 6

    .line 575
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    move-result v0

    add-int/2addr p2, v0

    .line 577
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_15

    .line 578
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    goto :goto_25

    .line 581
    :cond_15
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    move-result v0

    .line 582
    add-int/lit8 v1, p2, -0x1

    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 583
    add-int/2addr v0, p2

    .line 586
    :goto_25
    iget-boolean p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz p2, :cond_45

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-nez p2, :cond_45

    .line 587
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 588
    const/4 v1, 0x0

    :goto_34
    if-ge v1, p2, :cond_56

    .line 589
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 590
    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    move-result v0

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 592
    :cond_45
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz p2, :cond_56

    .line 593
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {p2, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    iget p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/2addr v0, p1

    goto :goto_57

    .line 592
    :cond_56
    nop

    .line 596
    :goto_57
    return v0
.end method


# virtual methods
.method public blacklist asBits()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 474
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_3d

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_33

    .line 482
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_16} :catch_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_16} :catch_28

    .line 485
    nop

    .line 486
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    const/4 v2, 0x4

    if-ge v1, v2, :cond_23

    .line 487
    shl-int/lit8 v0, v0, 0x8

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 489
    :cond_23
    invoke-static {v0}, Ljava/lang/Integer;->reverse(I)I

    move-result v0

    return v0

    .line 483
    :catch_28
    move-exception v0

    .line 484
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 478
    :cond_33
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 475
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist asBoolean()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 497
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_90

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_86

    .line 503
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    .line 507
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    if-ltz v0, :cond_58

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_58

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 515
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 516
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_37

    .line 517
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 519
    :cond_37
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse data bytes as boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 508
    :cond_58
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 504
    :cond_69
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse data bytes as boolean: length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 501
    :cond_86
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 498
    :cond_90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist asBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 450
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_2d

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_23

    .line 456
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    new-array v0, v0, [B

    .line 458
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_16} :catch_18

    .line 461
    nop

    .line 462
    return-object v0

    .line 459
    :catch_18
    move-exception v0

    .line 460
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 454
    :cond_23
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 451
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist asInteger()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 395
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_28

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_1e

    .line 402
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 403
    :catch_13
    move-exception v0

    .line 404
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 399
    :cond_1e
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 396
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist asRawLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 414
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_28

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_1e

    .line 421
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToRawLong([BII)J

    move-result-wide v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_12} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_12} :catch_13

    return-wide v0

    .line 422
    :catch_13
    move-exception v0

    .line 423
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 418
    :cond_1e
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 415
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist asString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 432
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_2b

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_21

    .line 439
    :try_start_8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_15} :catch_16

    return-object v0

    .line 440
    :catch_16
    move-exception v0

    .line 441
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v3, "Cannot parse data bytes."

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 436
    :cond_21
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    const-string v2, "Data bytes cannot be null."

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 433
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get value of a constructed node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs blacklist getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 307
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-eqz v0, :cond_40

    .line 310
    nop

    .line 311
    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move-object p1, p0

    .line 312
    :goto_9
    if-eqz p1, :cond_37

    .line 313
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 315
    nop

    .line 316
    move v4, v0

    :goto_15
    if-ge v4, v3, :cond_29

    .line 317
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 318
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v6

    if-ne v6, v1, :cond_26

    .line 319
    nop

    .line 320
    move-object p1, v5

    goto :goto_2a

    .line 316
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_29
    const/4 p1, 0x0

    .line 323
    :goto_2a
    nop

    .line 324
    array-length v3, p2

    if-lt v2, v3, :cond_2f

    .line 325
    goto :goto_37

    .line 327
    :cond_2f
    add-int/lit8 v1, v2, 0x1

    aget v2, p2, v2

    .line 328
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_9

    .line 329
    :cond_37
    :goto_37
    if-eqz p1, :cond_3a

    .line 332
    return-object p1

    .line 330
    :cond_3a
    new-instance p1, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;-><init>(I)V

    throw p1

    .line 308
    :cond_40
    new-instance p2, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;-><init>(I)V

    throw p2
.end method

.method public blacklist getChildren()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 369
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_7

    .line 370
    sget-object v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object v0

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_2c

    .line 374
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    iget v3, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    .line 375
    :goto_16
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 378
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataOffset:I

    .line 381
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getChildren(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 342
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_7

    .line 343
    sget-object p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object p1

    .line 346
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 347
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 348
    sget-object p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    return-object p1

    .line 350
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 352
    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_32

    .line 353
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 354
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v5

    if-ne v5, p1, :cond_2f

    .line 355
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 358
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    sget-object v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->EMPTY_NODE_LIST:Ljava/util/List;

    :cond_3a
    return-object v1
.end method

.method public blacklist getDataLength()I
    .registers 2

    .line 530
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    return v0
.end method

.method public blacklist getEncodedLength()I
    .registers 2

    .line 525
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    return v0
.end method

.method public blacklist getHeadAsHex()Ljava/lang/String;
    .registers 4

    .line 561
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 562
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_29

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    .line 565
    :cond_29
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataLength:I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I)[B

    move-result-object v1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    :goto_5d
    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mTag:I

    return v0
.end method

.method public varargs blacklist hasChild(I[I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    :try_end_3
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_0 .. :try_end_3} :catch_6

    .line 294
    nop

    .line 295
    const/4 p1, 0x1

    return p1

    .line 292
    :catch_6
    move-exception p1

    .line 293
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist hasValue()Z
    .registers 2

    .line 386
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mDataBytes:[B

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isConstructed()Z
    .registers 2

    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mConstructed:Z

    return v0
.end method

.method public blacklist toBytes()[B
    .registers 3

    .line 549
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    new-array v0, v0, [B

    .line 550
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    .line 551
    return-object v0
.end method

.method public blacklist toHex()Ljava/lang/String;
    .registers 2

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToBytes([BI)V
    .registers 5

    .line 540
    if-ltz p2, :cond_c

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_c

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->write([BI)I

    .line 545
    return-void

    .line 541
    :cond_c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough space to write. Required bytes: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->mEncodedLength:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
