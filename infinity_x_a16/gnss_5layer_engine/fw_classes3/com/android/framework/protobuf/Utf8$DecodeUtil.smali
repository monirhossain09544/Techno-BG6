.class Lcom/android/framework/protobuf/Utf8$DecodeUtil;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeUtil"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$1000(BBBB[CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1831
    invoke-static/range {p0 .. p5}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    return-void
.end method

.method static synthetic blacklist access$400(B)Z
    .registers 1

    .line 1831
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$500(B[CI)V
    .registers 3

    .line 1831
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    return-void
.end method

.method static synthetic blacklist access$600(B)Z
    .registers 1

    .line 1831
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$700(BB[CI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1831
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    return-void
.end method

.method static synthetic blacklist access$800(B)Z
    .registers 1

    .line 1831
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$900(BBB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1831
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    return-void
.end method

.method private static blacklist handleFourBytes(BBBB[CI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1893
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_41

    .line 1902
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1903
    invoke-static {p3}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1906
    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 1908
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 1909
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 1910
    invoke-static {p3}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    or-int/2addr p0, p1

    .line 1911
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->highSurrogate(I)C

    move-result p1

    aput-char p1, p4, p5

    .line 1912
    add-int/lit8 p5, p5, 0x1

    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->lowSurrogate(I)C

    move-result p0

    aput-char p0, p4, p5

    .line 1913
    return-void

    .line 1904
    :cond_41
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist handleOneByte(B[CI)V
    .registers 3

    .line 1861
    int-to-char p0, p0

    aput-char p0, p1, p2

    .line 1862
    return-void
.end method

.method private static blacklist handleThreeBytes(BBB[CI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1877
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_e

    if-lt p1, v1, :cond_2e

    :cond_e
    const/16 v0, -0x13

    if-ne p0, v0, :cond_14

    if-ge p1, v1, :cond_2e

    .line 1882
    :cond_14
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1885
    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 1887
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    .line 1888
    return-void

    .line 1883
    :cond_2e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist handleTwoBytes(BB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1868
    const/16 v0, -0x3e

    if-lt p0, v0, :cond_17

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1871
    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    .line 1872
    return-void

    .line 1869
    :cond_17
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method private static blacklist highSurrogate(I)C
    .registers 2

    .line 1926
    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method private static blacklist isNotTrailingByte(B)Z
    .registers 2

    .line 1917
    const/16 v0, -0x41

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static blacklist isOneByte(B)Z
    .registers 1

    .line 1835
    if-ltz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private static blacklist isThreeBytes(B)Z
    .registers 2

    .line 1857
    const/16 v0, -0x10

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static blacklist isTwoBytes(B)Z
    .registers 2

    .line 1845
    const/16 v0, -0x20

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static blacklist lowSurrogate(I)C
    .registers 2

    .line 1931
    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method private static blacklist trailingByteValue(B)I
    .registers 1

    .line 1922
    and-int/lit8 p0, p0, 0x3f

    return p0
.end method
