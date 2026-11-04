.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Integer.java"


# static fields
.field static final blacklist SIGN_EXT_SIGNED:I = -0x1

.field static final blacklist SIGN_EXT_UNSIGNED:I = 0xff

.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 83
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    .line 84
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 93
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 94
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    .line 95
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 96
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    .line 123
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 4

    .line 126
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->isMalformed([B)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 132
    if-eqz p2, :cond_10

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    goto :goto_11

    :cond_10
    move-object p2, p1

    :goto_11
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    .line 133
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->signBytesToSkip([B)I

    move-result p1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 134
    return-void

    .line 129
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "malformed integer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 3

    .line 244
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 3

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 4

    .line 41
    if-eqz p0, :cond_55

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_7

    goto :goto_55

    .line 46
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_34

    .line 50
    :try_start_b
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    .line 52
    :catch_16
    move-exception p0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_55
    :goto_55
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method static blacklist intValue([BII)I
    .registers 5

    .line 249
    array-length v0, p0

    .line 250
    add-int/lit8 v1, v0, -0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 252
    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    .line 253
    :goto_a
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_16

    .line 255
    shl-int/lit8 p2, p2, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p2, v1

    goto :goto_a

    .line 257
    :cond_16
    return p2
.end method

.method static blacklist isMalformed([B)Z
    .registers 4

    .line 281
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1c

    .line 288
    aget-byte v0, p0, v1

    aget-byte p0, p0, v2

    shr-int/lit8 p0, p0, 0x7

    if-ne v0, p0, :cond_1a

    .line 290
    const-string p0, "com.android.internal.org.bouncycastle.asn1.allow_unsafe_integer"

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    move v1, v2

    goto :goto_1b

    .line 286
    :pswitch_18
    return v1

    .line 284
    :pswitch_19
    return v2

    .line 290
    :cond_1a
    nop

    .line 288
    :goto_1b
    return v1

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method static blacklist longValue([BII)J
    .registers 8

    .line 262
    array-length v0, p0

    .line 263
    add-int/lit8 v1, v0, -0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 265
    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 266
    :goto_b
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_19

    .line 268
    const/16 p2, 0x8

    shl-long/2addr v1, p2

    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    int-to-long v3, p2

    or-long/2addr v1, v3

    goto :goto_b

    .line 270
    :cond_19
    return-wide v1
.end method

.method static blacklist signBytesToSkip([B)I
    .registers 6

    .line 296
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 297
    :goto_4
    if-ge v1, v0, :cond_12

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v3

    shr-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_12

    .line 300
    move v1, v3

    goto :goto_4

    .line 302
    :cond_12
    return v1
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 227
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_6

    .line 229
    const/4 p1, 0x0

    return p1

    .line 232
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 218
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public blacklist getPositiveValue()Ljava/math/BigInteger;
    .registers 4

    .line 144
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public blacklist getValue()Ljava/math/BigInteger;
    .registers 3

    .line 149
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public blacklist hasValue(I)Z
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 155
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    if-ne v0, p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 154
    :goto_17
    return p1
.end method

.method public blacklist hasValue(J)Z
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-gt v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 161
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->longValue([BII)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 160
    :goto_1a
    return p1
.end method

.method public blacklist hasValue(Ljava/math/BigInteger;)Z
    .registers 5

    .line 166
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 168
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 166
    :goto_1e
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist intPositiveValueExact()I
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v0, v1

    .line 175
    const/4 v1, 0x4

    if-gt v0, v1, :cond_20

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_20

    .line 180
    :cond_15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    return v0

    .line 177
    :cond_20
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of positive int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist intValueExact()I
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v0, v1

    .line 186
    const/4 v1, 0x4

    if-gt v0, v1, :cond_13

    .line 191
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    return v0

    .line 188
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist longValueExact()J
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v0, v1

    .line 197
    const/16 v1, 0x8

    if-gt v0, v1, :cond_14

    .line 202
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->longValue([BII)J

    move-result-wide v0

    return-wide v0

    .line 199
    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
