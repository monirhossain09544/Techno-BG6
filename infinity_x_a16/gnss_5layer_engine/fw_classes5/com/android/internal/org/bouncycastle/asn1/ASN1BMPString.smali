.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1BMPString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist string:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 83
    if-eqz p1, :cond_c

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 89
    return-void

    .line 85
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>([B)V
    .registers 7

    .line 92
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 93
    if-eqz p1, :cond_2f

    .line 98
    array-length v0, p1

    .line 99
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_27

    .line 104
    div-int/lit8 v0, v0, 0x2

    .line 105
    new-array v1, v0, [C

    .line 107
    const/4 v2, 0x0

    :goto_f
    if-eq v2, v0, :cond_24

    .line 109
    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p1, v3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 112
    :cond_24
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 113
    return-void

    .line 101
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor blacklist <init>([C)V
    .registers 3

    .line 116
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 117
    if-eqz p1, :cond_8

    .line 122
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    .line 123
    return-void

    .line 119
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 2

    .line 207
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v0
.end method

.method static blacklist createPrimitive([C)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 2

    .line 213
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 3

    .line 76
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    .registers 4

    .line 38
    if-eqz p0, :cond_67

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_7

    goto :goto_67

    .line 42
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 45
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    if-eqz v1, :cond_19

    .line 47
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    return-object v0

    .line 50
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_46

    .line 54
    :try_start_1d
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    .line 56
    :catch_28
    move-exception p0

    .line 58
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

    .line 62
    :cond_46
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

    .line 40
    :cond_67
    :goto_67
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    return-object p0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 137
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    if-nez v0, :cond_6

    .line 139
    const/4 p1, 0x0

    return p1

    .line 142
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result p1

    return p1
.end method

.method final blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    .line 166
    const/16 v1, 0x1e

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 167
    mul-int/lit8 p2, v0, 0x2

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 169
    const/16 p2, 0x8

    new-array v1, p2, [B

    .line 171
    and-int/lit8 v2, v0, -0x4

    const/4 v3, 0x0

    move v4, v3

    .line 172
    :goto_15
    const/4 v5, 0x1

    if-ge v4, v2, :cond_5a

    .line 174
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v6, v6, v4

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v8, v4, 0x1

    aget-char v7, v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v9, v4, 0x2

    aget-char v8, v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v10, v4, 0x3

    aget-char v9, v9, v10

    .line 175
    add-int/lit8 v4, v4, 0x4

    .line 177
    shr-int/lit8 v10, v6, 0x8

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    .line 178
    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 179
    shr-int/lit8 v5, v7, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v1, v6

    .line 180
    int-to-byte v5, v7

    const/4 v6, 0x3

    aput-byte v5, v1, v6

    .line 181
    shr-int/lit8 v5, v8, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x4

    aput-byte v5, v1, v6

    .line 182
    const/4 v5, 0x5

    int-to-byte v6, v8

    aput-byte v6, v1, v5

    .line 183
    shr-int/lit8 v5, v9, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    .line 184
    const/4 v5, 0x7

    int-to-byte v6, v9

    aput-byte v6, v1, v5

    .line 186
    invoke-virtual {p1, v1, v3, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 187
    goto :goto_15

    .line 188
    :cond_5a
    if-ge v4, v0, :cond_73

    .line 190
    move p2, v3

    .line 193
    :cond_5d
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v2, v2, v4

    .line 194
    add-int/2addr v4, v5

    .line 196
    add-int/lit8 v6, p2, 0x1

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, p2

    .line 197
    add-int/lit8 p2, v6, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 199
    if-lt v4, v0, :cond_5d

    .line 201
    invoke-virtual {p1, v1, v3, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 203
    :cond_73
    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 2

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist encodedLength(Z)I
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
