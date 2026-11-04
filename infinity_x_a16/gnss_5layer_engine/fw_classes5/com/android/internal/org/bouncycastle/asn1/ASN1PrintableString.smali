.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1PrintableString.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final blacklist contents:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 110
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 111
    if-eqz p2, :cond_14

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_14

    .line 113
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_14
    :goto_14
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    .line 117
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 120
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 121
    if-eqz p2, :cond_9

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    .line 122
    return-void
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;
    .registers 3

    .line 229
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;-><init>([BZ)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;
    .registers 3

    .line 96
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;
    .registers 4

    .line 57
    if-eqz p0, :cond_67

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    if-eqz v0, :cond_7

    goto :goto_67

    .line 61
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    if-eqz v1, :cond_19

    .line 66
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    return-object v0

    .line 69
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_46

    .line 73
    :try_start_1d
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    .line 75
    :catch_28
    move-exception p0

    .line 77
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

    .line 81
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

    .line 59
    :cond_67
    :goto_67
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    return-object p0
.end method

.method public static blacklist isPrintableString(Ljava/lang/String;)Z
    .registers 6

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_35

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 184
    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-le v2, v3, :cond_12

    .line 186
    return v4

    .line 189
    :cond_12
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1b

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1b

    .line 191
    goto :goto_32

    .line 194
    :cond_1b
    const/16 v3, 0x41

    if-gt v3, v2, :cond_24

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_24

    .line 196
    goto :goto_32

    .line 199
    :cond_24
    const/16 v3, 0x30

    if-gt v3, v2, :cond_2d

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2d

    .line 201
    goto :goto_32

    .line 204
    :cond_2d
    sparse-switch v2, :sswitch_data_36

    .line 221
    return v4

    .line 218
    :sswitch_31
    nop

    .line 180
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 224
    :cond_35
    return v1

    :sswitch_data_36
    .sparse-switch
        0x20 -> :sswitch_31
        0x27 -> :sswitch_31
        0x28 -> :sswitch_31
        0x29 -> :sswitch_31
        0x2b -> :sswitch_31
        0x2c -> :sswitch_31
        0x2d -> :sswitch_31
        0x2e -> :sswitch_31
        0x2f -> :sswitch_31
        0x3a -> :sswitch_31
        0x3d -> :sswitch_31
        0x3f -> :sswitch_31
    .end sparse-switch
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 151
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    if-nez v0, :cond_6

    .line 153
    const/4 p1, 0x0

    return p1

    .line 156
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method final blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    .line 147
    return-void
.end method

.method final blacklist encodeConstructed()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist encodedLength(Z)I
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method public final blacklist getOctets()[B
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getString()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->contents:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
