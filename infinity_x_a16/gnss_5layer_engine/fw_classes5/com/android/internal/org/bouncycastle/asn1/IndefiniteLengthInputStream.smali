.class Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private blacklist _b1:I

.field private blacklist _b2:I

.field private blacklist _eofOn00:Z

.field private blacklist _eofReached:Z


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 13
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 14
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 24
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 26
    iget p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz p1, :cond_1d

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 33
    return-void

    .line 29
    :cond_1d
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private blacklist checkForEof()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_16

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 49
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    const/4 v0, -0x1

    return v0

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 99
    if-ltz v0, :cond_19

    .line 105
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 107
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 108
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 110
    return v1

    .line 102
    :cond_19
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v0, :cond_49

    const/4 v0, 0x3

    if-ge p3, v0, :cond_8

    goto :goto_49

    .line 61
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v0, :cond_e

    .line 63
    const/4 p1, -0x1

    return p1

    .line 66
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 68
    if-ltz p3, :cond_43

    .line 74
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 75
    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 77
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 78
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 80
    iget p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-ltz p1, :cond_3d

    .line 86
    add-int/lit8 p3, p3, 0x2

    return p3

    .line 83
    :cond_3d
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 71
    :cond_43
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 58
    :cond_49
    :goto_49
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method blacklist setEofOn00(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 40
    return-void
.end method
