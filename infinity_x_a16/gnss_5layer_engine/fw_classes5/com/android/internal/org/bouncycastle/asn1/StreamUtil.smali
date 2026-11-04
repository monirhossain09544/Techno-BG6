.class Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist calculateBodyLength(I)I
    .registers 3

    .line 67
    nop

    .line 69
    const/16 v0, 0x7f

    const/4 v1, 0x1

    if-le p0, v0, :cond_19

    .line 71
    nop

    .line 72
    move v0, v1

    .line 74
    :goto_8
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_f

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 79
    :cond_f
    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    :goto_12
    if-ltz v0, :cond_19

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 79
    add-int/lit8 v0, v0, -0x8

    goto :goto_12

    .line 85
    :cond_19
    return v1
.end method

.method static blacklist calculateTagLength(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    nop

    .line 93
    const/16 v0, 0x1f

    const/4 v1, 0x1

    if-lt p0, v0, :cond_26

    .line 95
    const/16 v0, 0x80

    if-ge p0, v0, :cond_c

    .line 97
    const/4 v1, 0x2

    goto :goto_26

    .line 101
    :cond_c
    const/4 v2, 0x5

    new-array v3, v2, [B

    .line 102
    nop

    .line 104
    and-int/lit8 v4, p0, 0x7f

    int-to-byte v4, v4

    const/4 v5, 0x4

    aput-byte v4, v3, v5

    .line 108
    :cond_16
    shr-int/lit8 p0, p0, 0x7

    .line 109
    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v4, p0, 0x7f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 111
    const/16 v4, 0x7f

    if-gt p0, v4, :cond_16

    .line 113
    sub-int/2addr v2, v5

    add-int/2addr v1, v2

    .line 117
    :cond_26
    :goto_26
    return v1
.end method

.method static blacklist findLimit(Ljava/io/InputStream;)I
    .registers 6

    .line 23
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_b

    .line 25
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/LimitedInputStream;->getLimit()I

    move-result p0

    return p0

    .line 27
    :cond_b
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_16

    .line 29
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->getLimit()I

    move-result p0

    return p0

    .line 31
    :cond_16
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_21

    .line 33
    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    .line 35
    :cond_21
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_3e

    .line 39
    :try_start_28
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 40
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_3d

    goto :goto_36

    :cond_35
    move-wide v3, v1

    .line 42
    :goto_36
    cmp-long p0, v3, v1

    if-gez p0, :cond_3c

    .line 44
    long-to-int p0, v3

    return p0

    .line 50
    :cond_3c
    goto :goto_3e

    .line 47
    :catch_3d
    move-exception p0

    .line 54
    :cond_3e
    :goto_3e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    .line 55
    cmp-long p0, v3, v1

    if-lez p0, :cond_4e

    .line 57
    const p0, 0x7fffffff

    return p0

    .line 60
    :cond_4e
    long-to-int p0, v3

    return p0
.end method
