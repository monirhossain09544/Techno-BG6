.class public Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;
.super Ljava/lang/Object;
.source "ISAPDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Digest;


# instance fields
.field private blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private blacklist t0:J

.field private blacklist t1:J

.field private blacklist t2:J

.field private blacklist t3:J

.field private blacklist t4:J

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J

.field private blacklist x4:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private blacklist P12()V
    .registers 3

    .line 43
    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 44
    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 45
    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 46
    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 47
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 48
    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 49
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 50
    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 51
    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 52
    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 53
    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 54
    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    .line 55
    return-void
.end method

.method private blacklist ROTR(JJ)J
    .registers 9

    .line 59
    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int p3, v2

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private blacklist ROUND(J)V
    .registers 11

    .line 29
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    .line 30
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v6, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    .line 31
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    .line 32
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    not-long v0, v0

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    .line 33
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    and-long/2addr v0, v2

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    .line 34
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide/16 v2, 0x13

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 35
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v2, 0x27

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v2, 0x3d

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    .line 36
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v2, 0x6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    not-long p1, p1

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    .line 37
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v2, 0x11

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    .line 38
    iget-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v2, 0x7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v2, 0x29

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    .line 39
    return-void
.end method


# virtual methods
.method protected blacklist U64BIG(J)J
    .registers 9

    .line 64
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 65
    const-wide/16 v2, 0x28

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide p1

    const-wide v2, 0xff000000ffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    .line 64
    return-wide p1
.end method

.method public blacklist doFinal([BI)I
    .registers 15

    .line 99
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_a9

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    .line 105
    const-wide v0, -0x116c675524980fc3L    # -4.533484413786092E224

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 106
    const-wide v0, -0x744de7ce39f0effeL

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    .line 107
    const-wide v0, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    .line 108
    const-wide v0, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    .line 109
    const-wide v0, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 112
    array-length v1, v0

    .line 113
    shr-int/lit8 v2, v1, 0x3

    new-array v3, v2, [J

    .line 114
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    .line 115
    move v2, v4

    .line 116
    :goto_44
    const/16 v5, 0x8

    if-lt v1, v5, :cond_5c

    .line 118
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    add-int/lit8 v7, v2, 0x1

    aget-wide v8, v3, v2

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v8

    xor-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 119
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    .line 120
    add-int/lit8 v1, v1, -0x8

    move v2, v7

    goto :goto_44

    .line 123
    :cond_5c
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    rsub-int/lit8 v3, v1, 0x7

    const/4 v7, 0x3

    shl-int/2addr v3, v7

    const-wide/16 v8, 0x80

    shl-long/2addr v8, v3

    xor-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    .line 124
    :goto_68
    if-lez v1, :cond_7f

    .line 126
    iget-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    shl-int/lit8 v3, v2, 0x3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v3, v1

    aget-byte v3, v0, v3

    int-to-long v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    rsub-int/lit8 v3, v1, 0x7

    shl-int/2addr v3, v7

    shl-long/2addr v8, v3

    xor-long/2addr v5, v8

    iput-wide v5, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    goto :goto_68

    .line 128
    :cond_7f
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 131
    nop

    :goto_86
    if-ge v4, v7, :cond_96

    .line 133
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 134
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 137
    :cond_96
    iget-wide v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 138
    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 140
    const/16 p1, 0x20

    return p1

    .line 101
    :cond_a9
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "ISAP Hash"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 77
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 147
    return-void
.end method

.method public blacklist update(B)V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    return-void
.end method

.method public blacklist update([BII)V
    .registers 6

    .line 89
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 94
    return-void

    .line 91
    :cond_b
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
