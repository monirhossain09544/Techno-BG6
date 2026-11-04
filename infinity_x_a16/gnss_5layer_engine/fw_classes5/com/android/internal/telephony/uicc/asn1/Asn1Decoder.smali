.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
.super Ljava/lang/Object;
.source "Asn1Decoder.java"


# instance fields
.field private final blacklist mEnd:I

.field private blacklist mPosition:I

.field private final blacklist mSrc:[B


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4

    .line 41
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-ltz p2, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_13

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    .line 61
    iput p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    .line 63
    return-void

    .line 52
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: bytes=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "], offset="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getPosition()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    return v0
.end method

.method public blacklist hasNextNode()Z
    .registers 3

    .line 72
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 85
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, v1, :cond_f1

    .line 89
    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    .line 92
    nop

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v0

    .line 94
    const/16 v3, 0x1f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_24

    .line 96
    :goto_14
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v2, v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    move v2, v3

    if-eqz v1, :cond_24

    goto :goto_14

    .line 100
    :cond_24
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    const/4 v3, 0x0

    if-ge v2, v1, :cond_d8

    .line 106
    :try_start_29
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    sub-int v4, v2, v0

    invoke-static {v1, v0, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_31} :catch_be

    .line 110
    nop

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    .line 115
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_3d

    .line 117
    goto :goto_4f

    .line 120
    :cond_3d
    and-int/lit8 v1, v1, 0x7f

    .line 121
    add-int v2, v3, v1

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    const-string v5, "Cannot parse length at position: "

    if-gt v2, v4, :cond_a7

    .line 127
    :try_start_47
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    invoke-static {v4, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v1
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4d} :catch_8f

    .line 132
    nop

    .line 133
    move v3, v2

    .line 135
    :goto_4f
    add-int v2, v3, v1

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-gt v2, v4, :cond_5f

    .line 147
    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    invoke-direct {v4, v0, v5, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    .line 148
    iput v2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    .line 149
    return-object v4

    .line 137
    :cond_5f
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incomplete data at position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", actual bytes: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 128
    :catch_8f
    move-exception v1

    .line 130
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 123
    :cond_a7
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 107
    :catch_be
    move-exception v1

    .line 109
    new-instance v2, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse tag at position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 102
    :cond_d8
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid length at position: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 86
    :cond_f1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No bytes to parse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
