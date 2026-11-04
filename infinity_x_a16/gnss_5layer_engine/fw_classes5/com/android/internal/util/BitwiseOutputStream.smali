.class public Lcom/android/internal/util/BitwiseOutputStream;
.super Ljava/lang/Object;
.source "BitwiseOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    }
.end annotation


# instance fields
.field private blacklist mBuf:[B

.field private blacklist mEnd:I

.field private blacklist mPos:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 58
    shl-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 59
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 60
    return-void
.end method

.method private blacklist possExpand(I)V
    .registers 6

    .line 81
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    if-ge v0, v1, :cond_8

    return-void

    .line 82
    :cond_8
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0x2

    new-array v0, p1, [B

    .line 83
    iget-object v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    ushr-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 85
    shl-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist skip(I)V
    .registers 3

    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 135
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 136
    return-void
.end method

.method public greylist toByteArray()[B
    .registers 5

    .line 69
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x0

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    .line 70
    new-array v1, v0, [B

    .line 71
    iget-object v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    return-object v1
.end method

.method public greylist write(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 99
    if-ltz p1, :cond_39

    const/16 v0, 0x8

    if-gt p1, v0, :cond_39

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 103
    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr p2, v1

    .line 104
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v1, v1, 0x3

    .line 105
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, p1

    .line 106
    shl-int/2addr p2, v2

    .line 107
    iget v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 108
    iget-object p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    aget-byte v3, p1, v1

    ushr-int/lit8 v4, p2, 0x8

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 109
    if-ge v2, v0, :cond_38

    iget-object p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, p1, v1

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    .line 110
    :cond_38
    return-void

    .line 100
    :cond_39
    new-instance p2, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal write ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bits)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public greylist writeByteArray(I[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 121
    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 122
    if-lez v1, :cond_19

    .line 123
    aget-byte v2, p2, v0

    rsub-int/lit8 v3, v1, 0x8

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 120
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_1c
    return-void
.end method
