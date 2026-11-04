.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# static fields
.field private static final blacklist DECLARED_EXPLICIT:I = 0x1

.field private static final blacklist DECLARED_IMPLICIT:I = 0x2

.field private static final blacklist PARSED_EXPLICIT:I = 0x3

.field private static final blacklist PARSED_IMPLICIT:I = 0x4


# instance fields
.field final blacklist explicitness:I

.field final blacklist obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field final blacklist tagClass:I

.field final blacklist tagNo:I


# direct methods
.method constructor blacklist <init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    .line 127
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 128
    if-eqz p4, :cond_32

    .line 132
    if-eqz p2, :cond_19

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_19

    .line 137
    instance-of v0, p4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    .line 138
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    .line 139
    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 140
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 141
    return-void

    .line 134
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid tag class: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'obj\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor blacklist <init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 123
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    return-void
.end method

.method protected constructor blacklist <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    .line 118
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    return-void
.end method

.method private static blacklist checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    .line 484
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_7

    .line 486
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0

    .line 489
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected object: "

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

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createConstructedDL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 460
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    move v2, v1

    .line 462
    :goto_a
    if-eqz v2, :cond_17

    .line 463
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v2, 0x3

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-direct {v0, v2, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21

    .line 464
    :cond_17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 462
    :goto_21
    return-object v0
.end method

.method static blacklist createConstructedIL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 469
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    move v2, v1

    .line 471
    :goto_a
    if-eqz v2, :cond_17

    .line 472
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v2, 0x3

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-direct {v0, v2, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21

    .line 473
    :cond_17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 471
    :goto_21
    return-object v0
.end method

.method static blacklist createPrimitive(II[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 479
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p2, 0x4

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    .line 88
    const/16 v0, 0x80

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 93
    if-eqz p1, :cond_f

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0

    .line 98
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this method not valid for implicitly tagged tagged objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    .line 26
    if-eqz p0, :cond_68

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_7

    goto :goto_68

    .line 31
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_19

    .line 36
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0

    .line 38
    :cond_19
    goto :goto_47

    .line 39
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_47

    .line 43
    :try_start_1e
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_29

    return-object p0

    .line 45
    :catch_29
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

    .line 28
    :cond_68
    :goto_68
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    .line 56
    if-eqz p0, :cond_2a

    .line 61
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 67
    return-object p0

    .line 64
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected tag in getInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    .line 72
    if-eqz p0, :cond_2a

    .line 77
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 83
    return-object p0

    .line 80
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected tag in getInstance: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6

    .line 145
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 147
    return v1

    .line 150
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 152
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v2, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, v2, :cond_50

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v2, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-eq v0, v2, :cond_15

    goto :goto_50

    .line 158
    :cond_15
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq v0, v2, :cond_26

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eq v0, v2, :cond_26

    .line 166
    return v1

    .line 170
    :cond_26
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 171
    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 173
    if-ne v0, v2, :cond_36

    .line 175
    const/4 p1, 0x1

    return p1

    .line 178
    :cond_36
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 182
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getEncoded()[B

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getEncoded()[B

    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_49

    return p1

    .line 187
    :catch_49
    move-exception p1

    .line 189
    return v1

    .line 193
    :cond_4b
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1

    .line 155
    :cond_50
    :goto_50
    return v1
.end method

.method public blacklist getBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public blacklist getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 356
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalTypes;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_b

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZLcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 359
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported UNIVERSAL tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist getBaseUniversal(ZLcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 367
    const-string v0, "object explicit - implicit expected."

    if-eqz p1, :cond_1b

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 374
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 371
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_1b
    const/4 p1, 0x1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq p1, v1, :cond_4b

    .line 382
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 383
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v0, :pswitch_data_52

    .line 396
    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 389
    :pswitch_30
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3b

    .line 391
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 393
    :cond_3b
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 386
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->rebuildConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    .line 379
    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_52
    .packed-switch 0x3
        :pswitch_42
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 306
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_17
    return-object v0

    .line 303
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0

    .line 313
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    .line 321
    if-eqz p1, :cond_27

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, p1, :cond_27

    .line 326
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v0, :pswitch_data_40

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->replaceTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    return-object p1

    .line 333
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 334
    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    return-object p1

    .line 329
    :pswitch_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object explicit - implicit expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_27
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid base tag class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_10
    .end packed-switch
.end method

.method public final blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 436
    return-object p0
.end method

.method public blacklist getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTagClass()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    return v0
.end method

.method public blacklist getTagNo()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public blacklist hasContextTag()Z
    .registers 3

    .line 218
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasContextTag(I)Z
    .registers 4

    .line 223
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public blacklist hasTag(II)Z
    .registers 4

    .line 228
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-ne v0, p1, :cond_a

    iget p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public blacklist hasTagClass(I)Z
    .registers 3

    .line 233
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 198
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    goto :goto_12

    :cond_10
    const/16 v1, 0xf0

    :goto_12
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isExplicit()Z
    .registers 2

    .line 260
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v0, :pswitch_data_a

    .line 266
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 264
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method blacklist isParsed()Z
    .registers 2

    .line 272
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v0, :pswitch_data_a

    .line 278
    const/4 v0, 0x0

    return v0

    .line 276
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 404
    sparse-switch p2, :sswitch_data_24

    .line 416
    return-object p1

    .line 413
    :sswitch_8
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object p1

    return-object p1

    .line 411
    :sswitch_f
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p1

    return-object p1

    .line 409
    :sswitch_16
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object p1

    return-object p1

    .line 407
    :sswitch_1d
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object p1

    return-object p1

    :sswitch_data_24
    .sparse-switch
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_16
        0x10 -> :sswitch_f
        0x11 -> :sswitch_8
    .end sparse-switch
.end method

.method public blacklist parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    return-object p1
.end method

.method abstract blacklist rebuildConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.end method

.method abstract blacklist replaceTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 445
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 450
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
