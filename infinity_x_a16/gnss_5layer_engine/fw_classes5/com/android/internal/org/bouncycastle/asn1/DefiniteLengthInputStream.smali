.class Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;
.source "DefiniteLengthInputStream.java"


# static fields
.field private static final blacklist EMPTY_BYTES:[B


# instance fields
.field private final blacklist _originalLength:I

.field private blacklist _remaining:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;II)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p3}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 29
    if-gtz p2, :cond_14

    .line 31
    if-ltz p2, :cond_c

    .line 36
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    goto :goto_14

    .line 33
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative lengths not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_14
    :goto_14
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    .line 40
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    .line 41
    return-void
.end method


# virtual methods
.method blacklist getRemaining()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_6

    .line 53
    const/4 v0, -0x1

    return v0

    .line 56
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 58
    if-ltz v0, :cond_1a

    .line 63
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v1, :cond_19

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 68
    :cond_19
    return v0

    .line 60
    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_6

    .line 76
    const/4 p1, -0x1

    return p1

    .line 79
    :cond_6
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 82
    if-ltz p1, :cond_20

    .line 87
    iget p2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez p2, :cond_1f

    .line 89
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 92
    :cond_1f
    return p1

    .line 84
    :cond_20
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DEF length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " object truncated by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist readAllIntoByteArray([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    array-length v1, p1

    if-ne v0, v1, :cond_72

    .line 103
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_a

    .line 105
    return-void

    .line 109
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getLimit()I

    move-result v0

    .line 110
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-ge v1, v0, :cond_4d

    .line 115
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_26

    .line 119
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 120
    return-void

    .line 117
    :cond_26
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEF length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " object truncated by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_4d
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "corrupted stream - out of bounds length found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer length not right for data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist toByteArray()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v0, :cond_7

    .line 127
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-object v0

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->getLimit()I

    move-result v0

    .line 132
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-ge v1, v0, :cond_4d

    .line 137
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    new-array v1, v0, [B

    .line 138
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    if-nez v2, :cond_26

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 143
    return-object v1

    .line 140
    :cond_26
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_originalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_4d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corrupted stream - out of bounds length found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->_remaining:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
